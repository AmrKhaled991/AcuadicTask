// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:aquadic_task/constant.dart';
import 'package:aquadic_task/core/GlobalUtils/CustomBottunPayPackage.dart';
import 'package:aquadic_task/core/GlobalUtils/appRouter.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserEmptyPackages extends StatelessWidget {
  const UserEmptyPackages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Text('اشترك الان',
            textAlign: TextAlign.center,
            style: Styles.textsize32.copyWith(color: grey)),
        const SizedBox(
          height: 10,
        ),
        Text('انت غير مشترك في اي باقة',
            textAlign: TextAlign.center,
            style: Styles.textsize15.copyWith(color: grey)),
        const Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        CustomBottunPayPackage(onTap: () {
          context.push(Approuter.kaddpackages);
        }),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
      ],
    );
  }
}
