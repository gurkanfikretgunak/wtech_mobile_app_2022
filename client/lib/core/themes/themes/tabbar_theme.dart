import 'package:flutter/material.dart';
import '../../constants/color_constans.dart';

class CustomTabBarTheme {
  static TabBarTheme tabbarTheme() {
    return TabBarTheme(
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorConstant.instance.yellow,
      ),
    );
  }
}
