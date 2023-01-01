import 'package:client/core/data/local/theme_preference.dart';
import 'package:flutter/material.dart';

class ThemeChangeProvider extends ChangeNotifier {
  ThemeChangePreference appPreference = ThemeChangePreference();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    appPreference.setThemePref(value);
    notifyListeners();
  }
}
