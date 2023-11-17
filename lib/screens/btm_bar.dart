import 'package:citta_db/provider/dark_theme_provider.dart';
import 'package:citta_db/screens/cart.dart';
import 'package:citta_db/screens/categrios.dart';
import 'package:citta_db/screens/home.dart';
import 'package:citta_db/screens/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int selectIndex = 0;
  final List<Map<String, dynamic>> pages = [
    {"page": const HomeScreen(), "title": "Home Screen"},
    {"page": const CategriousScreen(), "title": "Categrious Screen"},
    {"page": const CartScreen(), "title": "Cart Screen"},
    {"page": const UserScreen(), "title": "User Screen"},
  ];
  void selectedPage(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    bool isDark = themeState.getDarkTheme;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(pages[selectIndex]["title"]),
      // ),
      body: pages[selectIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: themeState.getDarkTheme
            ? Theme.of(context).canvasColor
            : Colors.white,
        unselectedItemColor: isDark ? Colors.white : Colors.grey,
        selectedItemColor: isDark ? Colors.lightBlue : Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectIndex,
        onTap: selectedPage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              selectIndex == 0 ? Icons.home : Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              selectIndex == 1 ? Icons.menu : Icons.menu_open_outlined,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              selectIndex == 2 ? Icons.category_rounded : Icons.card_travel,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              selectIndex == 3 ? Icons.person : Icons.person_outline,
            ),
            label: "User",
          ),
        ],
      ),
    );
  }
}
