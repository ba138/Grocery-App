import 'package:citta_db/consts/theme_data.dart';
import 'package:citta_db/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Styles.themeData(isDark, context),
      home: const HomeScreen(),
    );
  }
}
