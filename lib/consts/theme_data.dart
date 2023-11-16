import 'package:flutter/material.dart';

class Styles {
  Styles(bool isDark, BuildContext context);

  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? const Color(0xff00001a) : const Color(0xffFFFFFF),
      primaryColor: Colors.blue,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: isDarkTheme
                ? const Color(0xff1a1f3c)
                : const Color(
                    0xffFFFFFF,
                  ),
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor: isDarkTheme
          ? const Color(0xff0a0d2c)
          : const Color(
              0xFFF2FDFD,
            ),
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme
                ? const ColorScheme.dark()
                : const ColorScheme.light(),
          ),
    );
  }
}
