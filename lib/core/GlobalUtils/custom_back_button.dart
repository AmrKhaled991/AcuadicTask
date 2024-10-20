// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  const CustomBackButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.voidCallback,
  }) : super(key: key);

  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: voidCallback,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Icon(
          icon,
          color: Colors.black87,
        ),
      ),
    );
  }
}
