import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/extension/sidebar_section_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../enums/enums.dart';
import '../pages/login_page.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key});

  Future<String?> _getUserEmail() async {
    // Get the current user
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // If user is not null, return the email
      return user.email;
    } else {
      // If user is null, return null
      return null;
    }
  }

  void _onItemTapped(BuildContext context, SideBarSection section) {
    switch (section) {
      case SideBarSection.leaderboards:
        return Navigator.of(context).pop();
      case SideBarSection.settings:
        return Navigator.of(context).pop();
      case SideBarSection.logout:
        FirebaseAuth.instance.signOut(); // Sign out the user
        Fluttertoast.showToast(
          msg: "Logged out", // Toast message when the user logs out
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle profileTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

    return Drawer(
      child: FutureBuilder<String?>(
        future: _getUserEmail(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While waiting for the future to complete, display a loading indicator
            return CircularProgressIndicator();
          } else {
            // If future completes, show the drawer with the user's email
            String userEmail = snapshot.data ?? "No email"; // Default to "No email" if email is null
            return ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "Welcome",
                    style: profileTextStyle,
                  ),
                  accountEmail: Text(
                    userEmail,
                    style: profileTextStyle,
                  ),
                  currentAccountPicture: const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/jrizal.jpg'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage('assets/logorizal_4.png'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.3), // Adjust the opacity (0.0 to 1.0)
                        BlendMode.dstATop,
                      ),
                    ),
                  ),
                ),
                ...SideBarSection.values
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
              ],
            );
          }
        },
      ),
    );
  }
}
