import 'package:aquadic_task/core/GlobalUtils/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:aquadic_task/constant.dart';
import 'package:aquadic_task/core/GlobalUtils/customsnackbar.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';
import 'package:aquadic_task/core/dto/BundleData.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/getallpackagesrepsonse/bundle.dart';
import 'package:aquadic_task/features/addPackegesScreen/presentation/manger/cubit/add_bundle_cubit_cubit.dart';
import 'package:aquadic_task/features/addPackegesScreen/presentation/view/utils/custom_card_package.dart';
import 'package:go_router/go_router.dart';

class AllPackegsBody extends StatelessWidget {
  const AllPackegsBody({
    super.key,
    required this.res,
  });

  final List<Bundle> res;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddBundleCubitCubit, AddBundleCubitState>(
      listener: (context, state) {
        if (state is AddBundleCubitFreeSucsess) {
          showSnackBar(context, state.message, Colors.black);
        } else if (state is AddBundleCubitErorre) {
          showSnackBar(context, state.erorre, Colors.black);
        } else if (state is AddBundleCubitPayment) {
          context.push(Approuter.kCustomWebViewScreen, extra: state.url);
        }
      },
      builder: (context, state) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('اختر باقتك الإعلانية', style: Styles.textsize16),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.separated(
                      padding: const EdgeInsets.all(0),
                      itemBuilder: (context, index) => CustomCardPackage(
                          bundleData: BundleData(
                              color: res[index].color != null
                                  ? Color(int.parse(res[index]
                                      .color!
                                      .replaceFirst('#', '0xff')))
                                  : green,
                              headerText: Text(
                                res[index].name?.ar ?? "",
                                style: Styles.textsize20White,
                              ),
                              prica: res[index].price!,
                              indexIdofpackged: res[index].id!,
                              ontap: () =>
                                  BlocProvider.of<AddBundleCubitCubit>(context)
                                      .addBundle(res[index].id!))),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                      itemCount: res.length),
                ),
              ],
            ),
          ),
          if (state is AddBundleCubitloading)
            const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
