
import 'package:first_project/bottom_navigations/code_bottom.dart';
import 'package:first_project/bottom_navigations/home_bottom.dart';
import 'package:first_project/bottom_navigations/newsfeed_bottom.dart';
import 'package:first_project/bottom_navigations/profile_bottom.dart';
import 'package:first_project/bottom_navigations/challenges_bottom.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/draggable_fab.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/sidebar.dart';
import 'package:first_project/extension/bottom_nav_ext.dart';
import 'package:first_project/enums/enums.dart';
import 'package:first_project/subject/application_dev.dart';
import 'package:first_project/subject/game_dev.dart';
import 'package:first_project/subject/machine_dev.dart';
import 'package:first_project/subject/web_dev.dart';
import 'package:flutter/material.dart';

import '../../../../../ai_storage/ai_main.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final _bottomScreens = [
    const NewsFeedPage(),
    const CodePage(),
    const AllLanguages(),
    const ChallengesPage(),
    const ProfilePage(),
  ];

  int selectedCurrentIndex = 2;

  Future<bool> _onWillPop() async {
    if (selectedCurrentIndex == 0) {
      final shouldLogout = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Logout'),
            content: Text('Are you sure you want to log out?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text('Yes'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text('No'),
              ),
            ],
          );
        },
      );

      if (shouldLogout ?? false) {
        // Perform logout actions here
        // For example:
        // Your logout logic, clearing tokens, etc.
      }

      return shouldLogout ?? false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        drawer: const SideBar(),
        appBar: AppBar(
          title: const Text('CodeX'),
          backgroundColor: Colors.lightBlue[400],
        ),
        backgroundColor: const Color(0xFFFAFAFA),
        body: _bottomScreens[selectedCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
          currentIndex: selectedCurrentIndex,
          onTap: (index) => setState(() => selectedCurrentIndex = index),
          items: BottomNavs.values
              .map(
                (nav) => BottomNavigationBarItem(
              icon: Icon(nav.icon),
              label: nav.text,
            ),
          )
              .toList(),
          selectedIconTheme: const IconThemeData(size: 30),
          unselectedIconTheme: const IconThemeData(size: 25),
        ),
        floatingActionButton: PersonalHelper(),
      ),
    );
  }
}
