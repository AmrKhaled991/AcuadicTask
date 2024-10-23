// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aquadic_task/core/GlobalUtils/getItLocator.dart';
import 'package:aquadic_task/features/UserPackges/data/repo/UserBundlesRepo/UserBundlesRepo.dart';
import 'package:aquadic_task/features/UserPackges/presentation/manger/cubit/user_bundles_cubit.dart';
import 'package:aquadic_task/features/UserPackges/presentation/view/utils/UserEmptyackages.dart';
import 'package:aquadic_task/features/UserPackges/presentation/view/utils/user_packages_state.dart';
import 'package:flutter/material.dart';
import 'package:aquadic_task/core/GlobalUtils/CumonScreenUi.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPackges extends StatelessWidget {
  const UserPackges({super.key});

  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserBundlesCubit(getit.get<UserBundlesRepo>())..getUserBundles(),
      child: Comunscreenui(
          screenTitle: "الباقات الإعلانية",
          voidCallback: () {
            {
              //  context.pop()
            }
          },
          screenbody: BlocBuilder<UserBundlesCubit, UserBundlesState>(
            builder: (context, state) {
              if (state is UserBundlesSucsess) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 26.0, vertical: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Align(
                        alignment: Alignment.centerRight,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text('انت الآن مشترك في باقة :',
                              style: Styles.textsize16),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      state.userSBundles == null
                          ? const UserEmptyPackages()
                          : UserPackagesState(
                              userBundles: state.userSBundles,
                            ),
                    ],
                  ),
                );
              }
              if (state is UserBundlesErorre) {
                return Center(
                  child: Text(
                    state.erorre,
                    style: Styles.textsize32,
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          )),
    );
  }
}
