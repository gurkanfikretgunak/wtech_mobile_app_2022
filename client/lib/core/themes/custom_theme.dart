import 'package:client/core/themes/themes/appbar_theme.dart';
import 'package:client/core/themes/themes/bottom_nav_bar_theme.dart';
import 'package:client/core/themes/themes/chip_theme.dart';
import 'package:client/core/themes/themes/elevated_button_theme.dart';
import 'package:client/core/themes/themes/icon_theme.dart';
import 'package:client/core/themes/themes/input_decoration_theme.dart';
import 'package:flutter/material.dart';

import '../constants/color_constans.dart';

class CustomTheme {
  static ThemeData customLightTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: ColorConstant.instance.white,
      appBarTheme: CustomAppBarTheme.appBarTheme(),
      textSelectionTheme: TextSelectionThemeData(selectionColor: ColorConstant.instance.black.withOpacity(0.5)),
      iconTheme: CustomIconTheme.iconTheme(),
      bottomNavigationBarTheme: CustomBottomNavBarTheme.bottomNavBarTheme(),
      elevatedButtonTheme: CustomElevatedButtonTheme.elevatedButtonTheme(),
      inputDecorationTheme: CustomInputDecorationTheme.inputDecorationTheme(),
      primaryColor: ColorConstant.instance.white,
      chipTheme: CustomChipTheme.chipTheme(),
    );
  }

  static ThemeData customDarkTheme(BuildContext context) {
    return ThemeData(
      textSelectionTheme: TextSelectionThemeData(
          selectionColor: Colors.white.withOpacity(0.5), cursorColor: ColorConstant.instance.white),
      scaffoldBackgroundColor: ColorConstant.instance.darkThemeBlack,
      appBarTheme: CustomAppBarTheme.appBarTheme(),
      iconTheme: CustomIconTheme.iconTheme(),
      bottomNavigationBarTheme: CustomBottomNavBarTheme.bottomNavBarTheme(),
      elevatedButtonTheme: CustomElevatedButtonTheme.elevatedButtonTheme(),
      primaryColor: ColorConstant.instance.darkThemeAppBar,
      inputDecorationTheme: CustomInputDecorationTheme.inputDecorationTheme(),
      chipTheme: CustomChipTheme.chipTheme(),
    );
  }
}
