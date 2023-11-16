import 'package:citta_db/services/dark_theme_pref.dart';
import 'package:flutter/material.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThenePrefs darkThenePrefs = DarkThenePrefs();
  bool darkTheme = false;
  bool get getDarkTheme => darkTheme;
  set setDarkTheme(bool value) {
    darkTheme = value;
    darkThenePrefs.setDarkTheme(value);
    notifyListeners();
  }
}
