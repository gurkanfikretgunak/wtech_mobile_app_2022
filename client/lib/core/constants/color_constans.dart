import 'package:flutter/material.dart';

class ColorConstant {
  static final ColorConstant _instance = ColorConstant._init();
  static ColorConstant get instance => _instance;
  ColorConstant._init();
  Color white = const Color(0xFFFFFFFF);
  Color blue = const Color(0xFF009CFF);
  Color grey = const Color(0xFF939C9E);
  Color yellow = const Color(0xFFFFC221);
  Color shinyWhite = const Color(0xFFF3F5FA);
  Color textFormFieldBorderColor = const Color(0xFFE0E0E0);
  Color black = const Color(0xFF000000);
  Color settingGrey = const Color(0xffF7F7F7);
  Color settingBox = const Color(0xffD9D9D9);
  Color transparent = Colors.transparent;
  Color cardColor = const Color(0xFFF3F2F9);
}
