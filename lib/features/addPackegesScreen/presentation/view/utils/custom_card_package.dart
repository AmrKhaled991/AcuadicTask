// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:aquadic_task/constant.dart';
import 'package:aquadic_task/core/GlobalUtils/get_current_color.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';

class CustomCardPackage extends StatelessWidget {
  Text headerText;
  String amount;
  int indexIdofpackged;
  VoidCallback ontap;

  CustomCardPackage({
    Key? key,
    required this.headerText,
    required this.amount,
    required this.indexIdofpackged,
    required this.ontap,
  }) : super(key: key);
  Color get currnatcolor => getCurrentColor(indexIdofpackged);
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
                    color: currnatcolor,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(15))),
                child: Center(child: headerText)),
            const SizedBox(
              height: 5,
            ),
            Text(indexIdofpackged != 1 ? paidpackagebody : unpaidpackagebody,
                textAlign: TextAlign.center, style: Styles.textsize12),
            const SizedBox(
              height: 5,
            ),
            Text(amount, textAlign: TextAlign.center, style: Styles.textsize20),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: currnatcolor,
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 70)),
                onPressed: () {
                  ontap();
                },
                child: Text(
                    indexIdofpackged != 1 ? " اشترك الان" : 'أضف إعلانك الآن',
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