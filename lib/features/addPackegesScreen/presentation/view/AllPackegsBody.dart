import 'package:aquadic_task/core/GlobalUtils/customsnackbar.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';
import 'package:aquadic_task/features/addPackegesScreen/presentation/manger/cubit/add_bundle_cubit_cubit.dart';
import 'package:aquadic_task/features/addPackegesScreen/presentation/view/utils/custom_card_package.dart';
import 'package:aquadic_task/features/addPackegesScreen/data/models/getallpackagesrepsonse/bundle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        if (state is AddBundleCubitSucsess) {
          showSnackBar(context, state.message, Colors.black);
        }
        if (state is AddBundleCubitErorre) {
          showSnackBar(context, state.erorre, Colors.black);
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
                  height: 12,
                ),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: CustomCardPackage(
                          ontap: () {
                            BlocProvider.of<AddBundleCubitCubit>(context)
                                .addBundle(res[0].id!);
                          },
                          headerText: Text(
                            res[0].name?.ar ?? " ",
                            style: Styles.textsize20White,
                          ),
                          indexIdofpackged: res[0].id!,
                          amount: "درهم${res[0].price!}",
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(
                          height: 12,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: CustomCardPackage(
                          ontap: () {
                            BlocProvider.of<AddBundleCubitCubit>(context)
                                .addBundle(res[1].id!);
                          },
                          headerText: Text(
                            res[1].name?.ar ?? "",
                            style: Styles.textsize20White,
                          ),
                          indexIdofpackged: res[1].id!,
                          amount: "درهم${res[1].price!}",
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(
                          height: 12,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: CustomCardPackage(
                          ontap: () {
                            BlocProvider.of<AddBundleCubitCubit>(context)
                                .addBundle(res[2].id!);
                          },
                          headerText: Text(
                            res[0].name?.ar ?? "",
                            style: Styles.textsize20White,
                          ),
                          indexIdofpackged: res[2].id!,
                          amount: "درهم${res[2].price!}",
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(
                          height: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (state is AddBundleCubitloading)
            const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
