import 'package:flutter/material.dart';

class CustomNavigator {
  static Future goToScreen(BuildContext context, path) {
    return Navigator.pushNamed(context, path);
  }
}
