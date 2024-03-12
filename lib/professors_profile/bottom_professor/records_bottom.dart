import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:first_project/gradient_background.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: RecordsBottomScreen(),
  ));
}

class RecordsBottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: RecordsBottom(),
      ),
    );
  }
}

class RecordsBottom extends StatefulWidget {
  @override
  _RecordsBottomState createState() => _RecordsBottomState();
}

class _RecordsBottomState extends State<RecordsBottom> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is Record Bottom',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}