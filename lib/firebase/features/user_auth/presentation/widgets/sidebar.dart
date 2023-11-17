
import 'package:first_project/extension/sidebar_section_ext.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});
  void _onItemTapped(BuildContext context, SideBarSection section) {
    switch (section) {
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
    TextStyle profileTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName:  Text("Hanna Rizza Malana", style: profileTextStyle,),
              accountEmail:  Text("hmalana@rtu.edu.ph", style: profileTextStyle,),
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


            // Divider(),
            // InkWell(
            //   onTap: () => _onItemTapped(context, SideBarSection.logout),
            //   child: ListTile(
            //     leading: Icon(SideBarSection.logout.icon),
            //     title: Text(SideBarSection.logout.text),
            //   ),
            // ),
          ],

        ));

  }
}