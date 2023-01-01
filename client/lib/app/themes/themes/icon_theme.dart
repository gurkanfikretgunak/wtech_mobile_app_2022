import 'package:flutter/material.dart';

import '../../../core/utils/constants/colors/color_constans.dart';

class CustomIconTheme {
  static IconThemeData iconTheme(bool isDarkTheme) {
    return IconThemeData(
      color: isDarkTheme ? ColorConstant.instance.cardColor : ColorConstant.instance.blue,
    );
  }
}
