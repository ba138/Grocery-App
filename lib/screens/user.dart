import 'package:citta_db/widgets/text_widgets.dart';
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
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black54;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: RichText(
                  text: TextSpan(
                      text: "Hi,  ",
                      style: const TextStyle(
                          color: Colors.cyan,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(
                          text: "My Name",
                          style: TextStyle(
                              color: color,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 8.0,
                ),
                child: TextWidget(
                    text: "Example@gmail.com", color: color, textSize: 14),
              ),
              const Divider(
                thickness: 2,
              ),
              _listTile(
                icon: Icons.person_outline,
                onTap: () {},
                title: "Address",
                subTitle: "My Address",
                color: color,
              ),
              _listTile(
                icon: Icons.account_balance_wallet_rounded,
                onTap: () {},
                title: "Orders",
                color: color,
              ),
              _listTile(
                icon: Icons.favorite_border,
                onTap: () {},
                title: "WishList",
                color: color,
              ),
              _listTile(
                icon: Icons.remove_red_eye_outlined,
                onTap: () {},
                title: "Viewed",
                color: color,
              ),
              _listTile(
                icon: Icons.lock_outline_rounded,
                onTap: () {},
                title: "Forget Password",
                color: color,
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
                color: color,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listTile(
      {required String title,
      String? subTitle,
      required IconData icon,
      required Function onTap,
      required Color color}) {
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
        subtitle: TextWidget(
          text: subTitle ?? "",
          color: color,
          textSize: 14,
        ),
        trailing: const Icon(
          Icons.navigate_next,
        ),
      ),
    );
  }
}
