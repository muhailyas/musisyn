import 'package:flutter/material.dart';

class AppConstants {
  static const fullWidth = SizedBox(width: double.infinity);
  static final width15 = SizedBox(width: w * 0.03);
  static final height10 = SizedBox(height: h * 0.015);
  static final height15 = SizedBox(height: h * 0.03);

  static double w = 0;
  static double h = 0;
  static double t = 0;
  static void sizeInit(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    t = MediaQuery.of(context).textScaleFactor;
  }
}
