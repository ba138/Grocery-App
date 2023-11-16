import 'package:shared_preferences/shared_preferences.dart';

class DarkThenePrefs {
  static const THEME_VALUE = "THEMEVALUE";
  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_VALUE, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getBool(THEME_VALUE) ?? false;
  }
}
