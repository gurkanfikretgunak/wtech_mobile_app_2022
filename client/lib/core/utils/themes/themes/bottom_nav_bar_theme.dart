import 'package:flutter/material.dart';
import '../../constants/colors/color_constans.dart';

class CustomBottomNavBarTheme {
  static BottomNavigationBarThemeData bottomNavBarTheme() {
    return BottomNavigationBarThemeData(
      unselectedItemColor: ColorConstant.instance.blue,
      selectedItemColor: ColorConstant.instance.yellow,
      backgroundColor: ColorConstant.instance.white,
      showUnselectedLabels: true,
    );
  }
}
