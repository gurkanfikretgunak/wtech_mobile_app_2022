import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors/color_constans.dart';

class CustomAppBarTheme {
  static AppBarTheme appBarTheme(bool isDarkTheme) {
    return AppBarTheme(
      color: isDarkTheme ? ColorConstant.instance.darkThemeAppbar : ColorConstant.instance.white,
      elevation: 0,
      centerTitle: true,
      shape: Border(bottom: BorderSide(color: ColorConstant.instance.grey.withOpacity(0.5), width: 1)),
      iconTheme: IconThemeData(
        color: isDarkTheme ? ColorConstant.instance.cardColor : ColorConstant.instance.blue,
      ),
    );
  }
}
