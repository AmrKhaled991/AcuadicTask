import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text, Color color) {
  final snackBar = SnackBar(
    content: Center(child: Text(text)),
    backgroundColor: color,
    behavior: SnackBarBehavior.floating,
    width: 300,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
