// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:aquadic_task/core/GlobalUtils/styles.dart';
import 'package:flutter/material.dart';

class CustomAmountContainer extends StatelessWidget {
  String text;
  int amount;
  Color color;
  CustomAmountContainer({
    super.key,
    required this.text,
    required this.amount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(text, style: Styles.textsize18),
          const SizedBox(
            height: 10,
          ),
          Text(amount.toString(), style: Styles.textsize48),
          const Text("اعلانات", style: Styles.textsize18),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
