// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:aquadic_task/core/GlobalUtils/get_current_color.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'package:aquadic_task/constant.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';
import 'package:aquadic_task/features/UserPackges/data/models/user_bundles_response/user_s_bundle.dart';
import 'package:aquadic_task/features/UserPackges/presentation/view/utils/cutstom2_amounts_row.dart';

class CustomUserpackges extends StatelessWidget {
  final PageController pageController;
  final List<UserSBundle>? userBundles;
  const CustomUserpackges({
    super.key,
    required this.pageController,
    required this.userBundles,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
        itemCount: userBundles!.length,
        controller: pageController,
        itemBuilder: (context, index) {
          final color = getCurrentColor(userBundles![index].bundleId!);
          return CustomUserpackgesItem(
            userBundleData: UserBundleData(
                color: color,
                bundlrId: userBundles![index].bundleId!,
                bundle_amount: userBundles![index].bundleAmount!,
                bundle_used: userBundles![index].bundleUsed!,
                price: userBundles![index].bundlePrice!,
                name: userBundles![index].bundleName!.ar!,
                descreption: userBundles![index].bundleDescription!.ar!),
          );
        });
  }
}

class CustomUserpackgesItem extends StatelessWidget {
  final UserBundleData userBundleData;
  const CustomUserpackgesItem({
    super.key,
    required this.userBundleData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 380 / 118,
          child: Container(
              decoration: BoxDecoration(
                  color: userBundleData.color,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(15))),
              child: Center(
                child: Text(userBundleData.name, style: Styles.textsize32),
              )),
        ),
        const SizedBox(
          height: 18,
        ),
        const Text(
          paidpackagebody,
          style: Styles.textsize14,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          userBundleData.price,
          style: Styles.textsize20,
        ),
        const SizedBox(
          height: 18,
        ),
        SectionButtons_Amounts(
          bundle_amount: userBundleData.bundle_amount,
          bundle_used: userBundleData.bundle_used,
          color: userBundleData.color
        ),
        const SizedBox(
          height: 22,
        ),
      ],
    );
  }
}

class UserBundleData {
  final Color color;
  final int bundlrId;
  final int bundle_amount;
  final int bundle_used;
  final String price;
  final String name;
  final String descreption;
  UserBundleData({
    required this.color,
    required this.bundlrId,
    required this.bundle_amount,
    required this.bundle_used,
    required this.price,
    required this.name,
    required this.descreption,
  });
}
