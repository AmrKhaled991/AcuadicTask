// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:aquadic_task/constant.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';
import 'package:aquadic_task/core/dto/BundleData.dart';

class CustomCardPackage extends StatelessWidget {
  BundleData bundleData;
  CustomCardPackage({
    super.key,
    required this.bundleData,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: bundleData.color,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(15))),
                child: Center(child: bundleData.headerText)),
            const SizedBox(
              height: 5,
            ),
            Text(bundleData.prica != "0.0" ? paidpackagebody : unpaidpackagebody,
                textAlign: TextAlign.center, style: Styles.textsize12),
            const SizedBox(
              height: 5,
            ),
            Text(bundleData.prica, textAlign: TextAlign.center, style: Styles.textsize20),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: bundleData.color,
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 70)),
                onPressed: () {
                  bundleData.ontap();
                },
                child: Text(
                    bundleData.prica != "0.0" ? " اشترك الان" : 'أضف إعلانك الآن',
                    textAlign: TextAlign.center,
                    style: Styles.textsize16.copyWith(color: Colors.white))),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
