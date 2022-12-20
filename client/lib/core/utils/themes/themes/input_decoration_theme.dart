import 'package:flutter/material.dart';
import '../../constants/colors/color_constans.dart';

class CustomInputDecorationTheme {
  static InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide:
              BorderSide(color: ColorConstant.instance.black.withOpacity(0.2))),
    );
  }
}
