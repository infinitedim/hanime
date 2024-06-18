import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late Size size;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    size = _mediaQueryData.size;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  return (inputHeight / 812.0) * SizeConfig.screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  return (inputWidth / 375.0) * SizeConfig.screenWidth;
}
