import 'package:aquadic_task/core/GlobalUtils/getItLocator.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/repo/getAllRepo/getAllPackges.dart';
import 'package:aquadic_task/features/addPackegesScreen/presentation/manger/cubit/add_bundle_cubit_cubit.dart';
import 'package:aquadic_task/features/addPackegesScreen/presentation/manger/cubit/allpackages_cubit_cubit.dart';
import 'package:aquadic_task/features/addPackegesScreen/presentation/view/AllPackegsBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:aquadic_task/core/GlobalUtils/CumonScreenUi.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';

class Addpackegsscreen extends StatelessWidget {
  const Addpackegsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                AllpackagesCubitCubit(getit.get<GetAllPackges>())
                  ..getallpackegs(),
          ),
          BlocProvider(
            create: (context) =>
                AddBundleCubitCubit(getit.get<GetAllPackges>()),
          ),
        ],
        child: Comunscreenui(
          screenTitle: "إضافة إعلان",
          voidCallback: () => context.pop(),
          screenbody: BlocBuilder<AllpackagesCubitCubit, AllpackagesCubitState>(
            builder: (context, state) {
              if (state is AllpackagesCubitSucsess) {
                var res = state.bundles;
                return AllPackegsBody(res: res);
              } else if (state is AllpackagesCubitErorre) {
                return Center(
                  child: Text(
                    state.erorre,
                    style: Styles.textsize32,
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator(),);
            },
          ),
        ));
  }
}
