import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:first_project/gradient_background.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: AdminBottomListScreen(),
  ));
}

class AdminBottomListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: AdminBottomList(),
      ),
    );
  }
}

class AdminBottomList extends StatefulWidget {
  @override
  _AdminBottomListState createState() => _AdminBottomListState();
}

class _AdminBottomListState extends State<AdminBottomList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is Admin Bottom List Account',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}