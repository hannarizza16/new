import 'package:first_project/extension/admin_bottom_nav_ext.dart';
import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:first_project/admin_profile/admin_sidebar.dart';
import 'package:first_project/admin_profile/admin_bottom/professor_account_bottom.dart';
import 'package:first_project/admin_profile/admin_bottom/student_accounts_bottom.dart';
import 'package:first_project/admin_profile/admin_bottom/score_database.dart';




class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  final _adminBottomScreen = [
    AdminBottomStudentAccount(),
    AdminBottomProfessorAccountState(),
    // AdminBottomScoreDatabase(),


  ]; // kung anong pinindot mo na button sa bottom nav //this is home

  int selectedCurrentIndex = 1; // kung anong unang mag pop up pag log in bottom nav bar to.

  Future<bool> _onWillPop() async {
    if (selectedCurrentIndex == selectedCurrentIndex) {
      final shouldLogout = await showDialog(
        context: context,
        builder: (context) {


          return AlertDialog(
                // title: const Text('Log Out'),
                content: Center(child:
                const Text('Log out of your account?',
                  // textAlign: TextAlign.center  // to align the text horizontally
                )),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text('Cancel',
                      style: TextStyle(color: Colors.black, fontSize: 16,),),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text('Log Out',
                      style: TextStyle(color: Colors.red, fontSize: 16,),
                    ),
                  ),
                ],
              );
        },
      );

      if (shouldLogout ?? false) {
        // If the user confirms logout, navigate to the login screen
        Navigator.of(context).pop('LoginPage');  // Replace '/login' with your login screen route// Returning false to prevent default system navigation
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
        drawer: const AdminSideBar(

        ),
        appBar: AppBar(
          title: const Text('CodeX (Admin)'),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 21, // Change the font size as needed
            fontWeight: FontWeight.bold, // Make the font bold
          ),
          backgroundColor: Color(0xFF0C356A), // app bar color only
        ),
        // backgroundColor:
        // Colors.pink, // BACKGROUND OF top app and other pages

        //body color
        body: Container(
          decoration: BoxDecoration(
            //LANGUAGES NA SLIDING
            gradient: LinearGradient(
              colors: [Color(0xFF0C356A), Color(0xFF05172E)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: _adminBottomScreen[selectedCurrentIndex],
        ),

        //Bottom Nav Bar
        bottomNavigationBar: Stack(
          children: [
            // Original bottom navigation bar
            Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Color(0xFF05172E),
                textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: TextStyle(color: Colors.black26)),
              ),
              child: BottomNavigationBar(
                currentIndex: selectedCurrentIndex,
                onTap: (index) =>
                    setState(() => selectedCurrentIndex = index),
                items: AdminBottomNav.values //important!! this connects the bottom navigation bar
                    .map((nav) => BottomNavigationBarItem(
                  icon: Icon(nav.icon),
                  label: nav.text,
                ))
                    .toList(),
                selectedItemColor:
                Color(0xFF4CB9E7), // Define the color of the selected item here
                unselectedItemColor: Color(0xFF1F3DA0),
                selectedFontSize:
                13, // Size of selected icon in bottom navigation bar
                unselectedFontSize:
                10, // Size of unselected icon in bottom navigation bar
              ),
            ),
            // Overlay dots.gif
            // Overlay dots.gif
            Positioned(
              height: 400,
              child: IgnorePointer(
                child: Transform.scale(
                  scale: 1.2, // Adjust the scale factor as needed
                  child: Image.asset(
                    'assets/overlay/dots.gif',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FadePageRoute<T> extends MaterialPageRoute<T> {
  FadePageRoute({required WidgetBuilder builder, RouteSettings? settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}
