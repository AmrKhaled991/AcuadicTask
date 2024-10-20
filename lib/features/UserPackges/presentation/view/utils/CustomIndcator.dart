// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:aquadic_task/constant.dart';

class CustomIndcator extends StatelessWidget {
  int page;
  int size;
  CustomIndcator({
    Key? key,
    required this.page,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          size,
          (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: CustomDetactore_container(check: page == index),
              )),
    );
  }
}

class CustomDetactore_container extends StatelessWidget {
  const CustomDetactore_container({
    super.key,
    required this.check,
  });

  final bool check;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: check ? 18 : 8,
        height: 8,
        decoration: ShapeDecoration(
          color: check ? red : red.withOpacity(.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ));
  }
}
