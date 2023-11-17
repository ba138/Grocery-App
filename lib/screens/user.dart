import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // ListTile(
            //   leading: Icon(
            //     Icons.person,
            //   ),
            //   title: Text(
            //     "Address",
            //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            //   ),
            //   subtitle: Text("Sub-Title-Here"),
            //   trailing: Icon(
            //     Icons.navigate_next,
            //   ),
            // ),
            _listTile(
                icon: Icons.person_outline,
                onTap: () {},
                title: "Address",
                subTitle: "My Address"),
            _listTile(
              icon: Icons.account_balance_wallet_rounded,
              onTap: () {},
              title: "Orders",
            ),
            _listTile(
              icon: Icons.favorite_border,
              onTap: () {},
              title: "WishList",
            ),
            _listTile(
              icon: Icons.remove_red_eye_outlined,
              onTap: () {},
              title: "Viewed",
            ),
            _listTile(
              icon: Icons.lock_outline_rounded,
              onTap: () {},
              title: "Forget Password",
            ),
            SwitchListTile(
              title: const Text(
                "Theme",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              secondary: Icon(
                themeState.getDarkTheme
                    ? Icons.dark_mode_outlined
                    : Icons.light_mode_outlined,
              ),
              onChanged: (bool value) {
                setState(() {
                  themeState.setDarkTheme = value;
                });
              },
              value: themeState.getDarkTheme,
            ),

            _listTile(
              icon: Icons.logout,
              onTap: () {},
              title: " Logout",
            ),
          ],
        ),
      ),
    );
  }

  Widget _listTile(
      {required String title,
      String? subTitle,
      required IconData icon,
      required Function onTap}) {
    return InkWell(
      onTap: onTap(),
      child: ListTile(
        leading: Icon(
          icon,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(subTitle ?? ""),
        trailing: const Icon(
          Icons.navigate_next,
        ),
      ),
    );
  }
}
