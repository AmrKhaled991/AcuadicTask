// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class BundleData{
   Text headerText;
  String prica;
  int indexIdofpackged;
  VoidCallback ontap;
Color color;
  BundleData({
    Key? key,
    required this.headerText,
    required this.prica,
    required this.indexIdofpackged,
    required this.ontap,
    required this.color,
  });
}