import 'package:flutter/material.dart';

class CustomElevatedButtonTheme {
  static ElevatedButtonThemeData elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (_) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8));
          },
        ),
      ),
    );
  }
}
