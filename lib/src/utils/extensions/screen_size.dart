import 'package:flutter/material.dart';

double? screenWidth;
double? screenHeight;

extension ScreenSize on double {
  double getScreenWidth({BuildContext? context, double? multiplier}) {
    var screenWidth = MediaQuery.of(context!).size.width;
    if (multiplier != null) {
      screenWidth = screenWidth * multiplier;
    }
    return screenWidth;
  }

  double getScreenHeight({BuildContext? context, double? multiplier}) {
    var screenHeight = MediaQuery.of(context!).size.height;
    if (multiplier != null) {
      screenHeight = screenHeight * multiplier;
    }
    return screenHeight;
  }
}
