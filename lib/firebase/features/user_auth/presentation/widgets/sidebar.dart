import 'package:first_project/extension/sidebar_section_ext.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  void _onItemTapped(BuildContext context, SideBarSection section) {
    switch (section) {
      case SideBarSection.profile:
        return Navigator.of(context).pop();
      case SideBarSection.leaderboards:
        return Navigator.of(context).pop();
      case SideBarSection.settings:

        return Navigator.of(context).pop();
      case SideBarSection.logout:
        Fluttertoast.showToast(
          msg: "Logged out", // Toast message when the user logs out
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        Navigator.push(

          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),

        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: SideBarSection.values
            .map(
              (section) => InkWell(
                onTap: () => _onItemTapped(context, section),
                child: ListTile(
                  leading: Icon(section.icon),
                  title: Text(section.text),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
