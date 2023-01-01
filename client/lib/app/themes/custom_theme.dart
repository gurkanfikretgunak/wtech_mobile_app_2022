import 'package:client/app/themes/themes/appbar_theme.dart';
import 'package:client/app/themes/themes/bottom_nav_bar_theme.dart';
import 'package:client/app/themes/themes/chip_theme.dart';
import 'package:client/app/themes/themes/elevated_button_theme.dart';
import 'package:client/app/themes/themes/icon_theme.dart';
import 'package:client/app/themes/themes/input_decoration_theme.dart';
import 'package:client/app/themes/themes/tabbar_theme.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constants/colors/color_constans.dart';

class CustomTheme {
  static ThemeData customLightTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: ColorConstant.instance.white,
      appBarTheme: CustomAppBarTheme.appBarTheme(false),

      //Categories Circle Color
      hoverColor: ColorConstant.instance.cardColor,
      bottomNavigationBarTheme: CustomBottomNavBarTheme.bottomNavBarTheme(false),

      textSelectionTheme: TextSelectionThemeData(
          selectionColor: ColorConstant.instance.black.withOpacity(0.5), cursorColor: ColorConstant.instance.black),
      iconTheme: CustomIconTheme.iconTheme(false),
      elevatedButtonTheme: CustomElevatedButtonTheme.elevatedButtonTheme(),
      inputDecorationTheme: CustomInputDecorationTheme.inputDecorationTheme(),
      primaryColor: ColorConstant.instance.white,
      chipTheme: CustomChipTheme.chipTheme(),
      tabBarTheme: CustomTabBarTheme.tabbarTheme(false),
      backgroundColor: ColorConstant.instance.cardColor,

      // Text,Card ,Icons Color
      cardTheme: CardTheme(color: ColorConstant.instance.cardColor),
      bottomAppBarColor: ColorConstant.instance.white,
      drawerTheme: DrawerThemeData(backgroundColor: ColorConstant.instance.white),
      selectedRowColor: const Color.fromARGB(255, 245, 242, 242),
    );
  }

  static ThemeData customDarkTheme(BuildContext context) {
    return ThemeData(
      textSelectionTheme: TextSelectionThemeData(
          selectionColor: Colors.white.withOpacity(0.5), cursorColor: ColorConstant.instance.white),
      scaffoldBackgroundColor: ColorConstant.instance.darkThemeBody,
      appBarTheme: CustomAppBarTheme.appBarTheme(true),
      iconTheme: CustomIconTheme.iconTheme(true),
      bottomNavigationBarTheme: CustomBottomNavBarTheme.bottomNavBarTheme(true),
      elevatedButtonTheme: CustomElevatedButtonTheme.elevatedButtonTheme(),
      primaryColor: ColorConstant.instance.darkThemeAppBar,
      inputDecorationTheme: CustomInputDecorationTheme.inputDecorationTheme(),
      chipTheme: CustomChipTheme.chipTheme(),
      cardTheme: CardTheme(color: ColorConstant.instance.darkThemeAppbar),
      tabBarTheme: CustomTabBarTheme.tabbarTheme(true),
      expansionTileTheme: ExpansionTileThemeData(backgroundColor: Theme.of(context).appBarTheme.backgroundColor),
      // Text,Card ,Icons Color
      backgroundColor: ColorConstant.instance.cardColor,
      bottomAppBarColor: ColorConstant.instance.darkThemeAppbar,
      drawerTheme: DrawerThemeData(backgroundColor: ColorConstant.instance.darkThemeAppbar),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: ColorConstant.instance.darkThemeBody),
      selectedRowColor: ColorConstant.instance.darkThemeCards,
      //Categories Circle Color
      hoverColor: ColorConstant.instance.darkThemeAppbar,
    );
  }
}
