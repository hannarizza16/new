// import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../../startup.dart';
//
// class GettingStartedScreen extends StatefulWidget {
//   @override
//   _GettingStartedScreenState createState() => _GettingStartedScreenState();
// }
//
// class _GettingStartedScreenState extends State<GettingStartedScreen> {
//   bool _isFirstTime = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _checkFirstTime();
//   }
//
//   Future<void> _checkFirstTime() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool isFirstTime = prefs.getBool('first_time') ?? true;
//
//     if (isFirstTime) {
//       // App is being opened for the first time
//       setState(() {
//         _isFirstTime = true;
//       });
//       await prefs.setBool('first_time', false);
//     } else {
//       // App has been opened before, navigate to the login screen or another screen
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => LoginPage()), // Change this to MyPageView or any other desired screen
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return _isFirstTime ? GetStarted() : Container(); // Show MyPageView if it's the first time
//   }
// }
