import 'package:client/core/themes/themes/appbar_theme.dart';
import 'package:client/core/themes/themes/bottom_nav_bar_theme.dart';
import 'package:client/core/themes/themes/chip_theme.dart';
import 'package:client/core/themes/themes/elevated_button_theme.dart';
import 'package:client/core/themes/themes/icon_theme.dart';
import 'package:client/core/themes/themes/input_decoration_theme.dart';
import 'package:flutter/material.dart';

import '../constants/color_constans.dart';

class CustomTheme {
  static ThemeData customThemeData(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: ColorConstant.instance.white,
      appBarTheme: CustomAppBarTheme.appBarTheme(),
      iconTheme: CustomIconTheme.iconTheme(),
      bottomNavigationBarTheme: CustomBottomNavBarTheme.bottomNavBarTheme(),
      elevatedButtonTheme: CustomElevatedButtonTheme.elevatedButtonTheme(),
      inputDecorationTheme: CustomInputDecorationTheme.inputDecorationTheme(),
      chipTheme: CustomChipTheme.chipTheme(),
      cardTheme: CardTheme(color: ColorConstant.instance.cardColor),
    );
  }
}
