// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aquadic_task/core/GlobalUtils/custom_back_button.dart';
import 'package:flutter/material.dart';

import 'package:aquadic_task/constant.dart';
import 'package:aquadic_task/core/GlobalUtils/appAssets.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';

class Comunscreenui extends StatelessWidget {
  Comunscreenui({
    super.key,
    required this.voidCallback,
    required this.screenbody,
    required this.screenTitle,
  });
  VoidCallback voidCallback;
  Widget screenbody;
  String screenTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 26),
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(Assets.imagesSvgjsG1087)),
                  Positioned(
                    bottom: 20,
                    child: Row(
                      children: [
                        CustomBackButton(
                          voidCallback: voidCallback,
                          color: Colors.white,
                          icon: Icons.arrow_back_rounded,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          screenTitle,
                          style: Styles.textsize32,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(29))),
                  child: screenbody),
            )
          ],
        ),
      ),
    );
    ;
  }
}
