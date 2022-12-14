import 'package:flutter/material.dart';

import '../constants/color_constans.dart';

class CustomTheme {
  static ThemeData customThemeData(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: ColorConstant.instance.white,
      appBarTheme: AppBarTheme(
        color: ColorConstant.instance.white,
        elevation: 0,
        centerTitle: true,
        shape: Border(
            bottom: BorderSide(
                color: ColorConstant.instance.grey.withOpacity(0.5), width: 1)),
        iconTheme: IconThemeData(
          color: ColorConstant.instance.blue,
        ),
      ),
      iconTheme: IconThemeData(
        color: ColorConstant.instance.blue,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: ColorConstant.instance.blue,
        selectedItemColor: ColorConstant.instance.yellow,
        backgroundColor: ColorConstant.instance.white,
        showUnselectedLabels: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));
      }))),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: ColorConstant.instance.black)),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: ColorConstant.instance.yellow,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    );
  }
}
