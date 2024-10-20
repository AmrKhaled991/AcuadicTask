// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:aquadic_task/constant.dart';
import 'package:flutter/material.dart';

Color getCurrentColor(int index) {
  switch (index) {
    case 1:
      return green;
    case 2:
      return grey;
    case 3:
      return gold; // No 'gold', use 'yellow' instead
    default:
      return Colors.black;
  }
}
