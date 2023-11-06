import 'package:first_project/bottom_navigations/code_bottom.dart';
import 'package:first_project/bottom_navigations/home_bottom.dart';
import 'package:first_project/bottom_navigations/newsfeed_bottom.dart';
import 'package:first_project/bottom_navigations/profile_bottom.dart';
import 'package:first_project/bottom_navigations/challenges_bottom.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/draggable_fab.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/sidebar.dart';
import 'package:first_project/extension/bottom_nav_ext.dart';
import 'package:first_project/enums/enums.dart';
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
  ]; // kung anong pinindot mo na button sa bottom nav //this is home

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
        // If the user confirms logout, navigate to the login screen
        Navigator.of(context).pushReplacementNamed(
            '/login'); // Replace '/login' with your login screen route
        return false; // Returning false to prevent default system navigation
      }

      return shouldLogout ?? true;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
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
          Navigator.of(context).pop('LoginPage'); // Replace '/login' with your login screen route
        }
        return shouldLogout ?? false;
      },
      child: Scaffold(
        drawer: const SideBar(),
        appBar: AppBar(
          title: const Text('CodeX'),
          backgroundColor: Colors.lightBlue[300], // app bar color only
        ),
        backgroundColor:
            Colors.transparent, // BACKGROUND OF top app and other pages
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/white_and_lightblue.jpg',), // BG IMAGE IN CATEGORY SCREEN
              fit: BoxFit.cover,
              // colorFilter: ColorFilter.mode( // SET OPACITY
              //   Colors.white.withOpacity(0.5), // Set the opacity level here
              //   BlendMode.srcOver,
              // ), // You can adjust the fit as needed
              // You can adjust the fit as needed
            ),
          ),
          child: _bottomScreens[selectedCurrentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(

          backgroundColor: Colors.red, //Color(0xFF30CBF8),
          selectedItemColor: Colors.black, // ICON in bottom navigation
          unselectedItemColor: Colors.black26,
          currentIndex: selectedCurrentIndex,

          onTap: (index) => setState(() => selectedCurrentIndex = index),
          items: BottomNavs
              .values // BottomNavs contains the list items located in enums.
              .map((nav) => BottomNavigationBarItem(
                    // then ipinasok sa .map para mairelocate sa (nav)
                    icon: Icon(nav.icon),
                    label: nav.text,
                  ))
              .toList(), //
          selectedIconTheme: const IconThemeData(
              size: 30), // Size ng selected icon sa bott navbar
          unselectedIconTheme:
              const IconThemeData(size: 25), // size naman kapag di selected
        ),
        floatingActionButton: PersonalHelper(),
      ),
    );
  }
}
