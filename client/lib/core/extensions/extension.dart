import 'package:flutter/material.dart';



extension ContextExtension on BuildContext {
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;

  Orientation get orientation => MediaQuery.of(this).orientation;
  ThemeData get theme => Theme.of(this);
}


extension PaddingExtension on BuildContext {
  EdgeInsetsGeometry get paddingAll => EdgeInsets.all(dynamicWidth(
      0.02));
  EdgeInsetsGeometry get paddingBodyHorizontal => EdgeInsets.symmetric(
      horizontal: dynamicWidth(
          0.02));
  EdgeInsetsGeometry get paddingBodyVertical => EdgeInsets.symmetric(
      vertical: dynamicWidth(
          0.02));        


  EdgeInsetsGeometry get paddingOnlyTop => EdgeInsets.only(
        top: dynamicWidth(
           0.02),

      );
}