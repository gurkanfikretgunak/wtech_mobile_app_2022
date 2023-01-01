import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:flutter/material.dart';

class CustomTabBarTheme {
  static TabBarTheme tabbarTheme(bool isDarkTheme) {
    return TabBarTheme(
      labelColor: isDarkTheme ? ColorConstant.instance.darkThemeAppbar : ColorConstant.instance.white,
      unselectedLabelColor: ColorConstant.instance.yellow,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorConstant.instance.yellow,
      ),
    );
  }
}
