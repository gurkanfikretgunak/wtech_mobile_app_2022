import 'package:flutter/material.dart';
import '../../constants/colors/color_constans.dart';

class CustomBottomNavBarTheme {
  static BottomNavigationBarThemeData bottomNavBarTheme(bool isDarkTheme) {
    return BottomNavigationBarThemeData(
      unselectedItemColor: isDarkTheme ? ColorConstant.instance.white : ColorConstant.instance.blue,
      selectedItemColor: ColorConstant.instance.yellow,
      backgroundColor: isDarkTheme ? ColorConstant.instance.darkThemeAppbar : ColorConstant.instance.white,
      showUnselectedLabels: true,
    );
  }
}
