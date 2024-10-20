// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:aquadic_task/constant.dart';
import 'package:aquadic_task/core/GlobalUtils/styles.dart';
import 'package:flutter/material.dart';

class CustomBottunPayPackage extends StatelessWidget {
  VoidCallback onTap;
  CustomBottunPayPackage({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 27,
        width: 232,
        child: Text('أو شراء باقات جديدة',
            textAlign: TextAlign.center,
            style: Styles.textsize14.copyWith(color: red)),
      ),
    );
  }
}
