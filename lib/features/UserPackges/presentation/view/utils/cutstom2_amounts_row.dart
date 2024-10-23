// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:aquadic_task/constant.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';
import 'package:aquadic_task/features/UserPackges/presentation/view/utils/custom_amount_container.dart';

class SectionButtons_Amounts extends StatelessWidget {
  final int bundle_amount;
  final int bundle_used;
  final Color color;
  const SectionButtons_Amounts({
    super.key,
    required this.bundle_amount,
    required this.bundle_used,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: CustomAmountContainer(
                    amount: bundle_amount,
                    color: green,
                    text: "تم الاستخدام",
                  )),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                      child: CustomAmountContainer(
                    amount: bundle_used,
                    color: red,
                    text: "متبقي",
                  )),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: color,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text('أضافة اعلان',
                        textAlign: TextAlign.center, style: Styles.textsize18),
                  )),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
