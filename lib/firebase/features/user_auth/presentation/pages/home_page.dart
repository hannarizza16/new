import 'package:first_project/bottom_navigations/statistics_bottom.dart';
import 'package:first_project/bottom_navigations/home_bottom.dart';
import 'package:first_project/bottom_navigations/leaderboards_bottom.dart';
import 'package:first_project/bottom_navigations/profile_bottom.dart';
import 'package:first_project/challenges/category_selection.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/draggable_fab.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/sidebar.dart';
import 'package:first_project/extension/bottom_nav_ext.dart';
import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';


class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final _bottomScreens = [
    LeaderboardScreen(),
    StatisticsWidget(),
    const AllLanguages(), // state name
    const CategorySelection(),
    const ProfilePage(),
  ]; // kung anong pinindot mo na button sa bottom nav //this is home

  int selectedCurrentIndex = 2; // kung anong unang mag pop up pag log in bottom nav bar to.

  Future<bool> _onWillPop() async {
    if (selectedCurrentIndex == 0) {
      final shouldLogout = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Logout'),
            content: const Text('Are you sure you want to log out?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Yes'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('No'),
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
              title: const Text('Logout'),
              content: const Text('Are you sure you want to log out?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('No'),
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
          backgroundColor: Color(0xFF00A9FF), // app bar color only
        ),
        backgroundColor:
        Colors.transparent, // BACKGROUND OF top app and other pages
        body: Container(
          decoration: BoxDecoration( //LANGUAGES NA SLIDING
            gradient: LinearGradient(
              colors: [Color(0xFFE0F4FF), Color(0xFF87C4FF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: _bottomScreens[selectedCurrentIndex],
        ),

        bottomNavigationBar: Theme( //BOTTOM NAVIGATION BAR
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xFF00A9FF), // Updated canvasColor
            primaryColor: Colors.blue, // ICON in bottom navigation
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.black26)),
          ),


          ///////////////////////////////////////

          child: BottomNavigationBar(
            currentIndex: selectedCurrentIndex,
            onTap: (index) => setState(() => selectedCurrentIndex = index),
            items: BottomNavs
                .values // BottomNavs contains the list items located in enums.
                .map((nav) => BottomNavigationBarItem(
              icon: Icon(nav.icon),
              label: nav.text,
            ))
                .toList(), //
            selectedFontSize: 13, // Size ng selected icon sa bott navbar
            unselectedFontSize: 10, // ICON in bottom navigation// size naman kapag di selected
          ),
        ),
        floatingActionButton: const PersonalHelper(),
      ),
    );
  }
}

