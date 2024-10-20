// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:aquadic_task/core/GlobalUtils/custom_back_button.dart';
import 'package:aquadic_task/features/UserPackges/presentation/view/utils/CustomIndcator.dart';

class CustomSelectorRow extends StatelessWidget {
  VoidCallback ontapr;
  VoidCallback ontapl;
  int size;
  int page;
  CustomSelectorRow(
      {Key? key,
      required this.ontapr,
      required this.ontapl,
      required this.size,
      required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomBackButton(
              color: const Color(0xffF6F6F6),
              voidCallback: () {
                ontapr();
              },
              icon: Icons.arrow_back_rounded),
          CustomIndcator(
            page: page,
            size: size,
          ),
          CustomBackButton(
              color: const Color(0xffF6F6F6),
              voidCallback: () {
                ontapl();
              },
              icon: Icons.arrow_forward_rounded),
        ],
      ),
    );
  }
}
