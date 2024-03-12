import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:first_project/gradient_background.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: AdminBottomAccountScreen(),
  ));
}

class AdminBottomAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: AdminBottomAccount(),
      ),
    );
  }
}

class AdminBottomAccount extends StatefulWidget {
  @override
  _AdminBottomAccountState createState() => _AdminBottomAccountState();
}

class _AdminBottomAccountState extends State<AdminBottomAccount> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is Admin Account Bottom ',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}