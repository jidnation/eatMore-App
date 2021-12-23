import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xfff07567);

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late MediaQueryData mediaQuery;
  static late Orientation orientation;

  void init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
    orientation = mediaQuery.orientation;

    defaultSize = (orientation == Orientation.landscape)
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }
}
