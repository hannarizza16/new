import 'package:first_project/professors_profile/bottom_professor/prof_leaderbaords.dart';
import 'package:first_project/professors_profile/bottom_professor/students_bottom.dart';
import 'package:first_project/professors_profile/bottom_professor/records_bottom.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/draggable_fab.dart';
import 'package:first_project/extension/prof_bottom_nav_ext.dart';
import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:first_project/professors_profile/prof_sidebar.dart';


class ProfessorHomePage extends StatefulWidget {
  const ProfessorHomePage({Key? key}) : super(key: key);

  @override
  State<ProfessorHomePage> createState() => _ProfessorHomePageState();
}

class _ProfessorHomePageState extends State<ProfessorHomePage> {
  final _profBottomScreen = [
    ProfLeaderboardScreen(),
    StudentBottomScreen(),
    RecordsBottomScreen(),


  ]; // kung anong pinindot mo na button sa bottom nav //this is home

  int selectedCurrentIndex = 0; // kung anong unang mag pop up pag log in bottom nav bar to.

  Future<bool> _onWillPop() async {
    if (selectedCurrentIndex == selectedCurrentIndex) {
      final shouldLogout = await showDialog(
        context: context,
        builder: (context) {


          return AlertDialog(
            // title: const Text('Log Out'),
            content:Center(child: const Text('Log out of your account?')),
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
        drawer: const ProfessorSideBar(

        ),
        appBar: AppBar(
          title: const Text('CodeX (Professor)'),
          titleTextStyle: TextStyle(
            color: Color(0xFF0C356A),
            fontSize: 21, // Change the font size as needed
            fontWeight: FontWeight.bold, // Make the font bold
          ),
          backgroundColor: Color(0xFFDCF2F1), // app bar color only
        ),
        backgroundColor:
        Colors.transparent, // BACKGROUND OF top app and other pages
        body: Container(
          decoration: BoxDecoration(
            //LANGUAGES NA SLIDING
            gradient: LinearGradient(
              colors: [Color(0xFFDCF2F1), Color(0xFFDCF2F1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: _profBottomScreen[selectedCurrentIndex],
        ),

        bottomNavigationBar: Stack(
          children: [
            // Original bottom navigation bar
            Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Color(0xFFDCF2F1),
                textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: TextStyle(color: Colors.black26)),
              ),
              child: BottomNavigationBar(
                currentIndex: selectedCurrentIndex,
                onTap: (index) =>
                    setState(() => selectedCurrentIndex = index),
                items: ProfBottomNav.values
                    .map((nav) => BottomNavigationBarItem(
                  icon: Icon(nav.icon),
                  label: nav.text,
                ))
                    .toList(),
                selectedItemColor:
                Color(0xFF4CB9E7), // Define the color of the selected item here
                unselectedItemColor: Color(0xFF0C356A),
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
        floatingActionButton: const PersonalHelper(),
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
