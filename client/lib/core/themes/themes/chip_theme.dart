import 'package:flutter/material.dart';
import '../../constants/color_constans.dart';

class CustomChipTheme {
  static ChipThemeData chipTheme() {
    return ChipThemeData(
      backgroundColor: ColorConstant.instance.yellow,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
    );
  }
}
