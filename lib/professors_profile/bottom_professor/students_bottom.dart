import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:first_project/gradient_background.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: StudentBottomScreen(),
  ));
}

class StudentBottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: StudentBottom(),
      ),
    );
  }
}

class StudentBottom extends StatefulWidget {
  @override
  _StudentBottomState createState() => _StudentBottomState();
}

class _StudentBottomState extends State<StudentBottom> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is student bottom',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}