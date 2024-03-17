import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:first_project/gradient_background.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: AdminBottomScoreDatabaseScreen(),
  ));
}

class AdminBottomScoreDatabaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const GradientContainer(
        child: SizedBox.expand(), // Expand to fill the whole screen
      ),

      Positioned(
        left: 0, // Align left
        top: 0, // Align top
        right: 0, // Align right
        bottom: 0, // Align bottom
        child: Opacity(
          opacity: 0.2, // Specify the opacity value here (0.0 - 1.0)
          child: Image.asset(
            'assets/overlay/2.jpg', // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
      ),

      AdminBottomScoreDatabase(),
    ]));
  }
}

class AdminBottomScoreDatabase extends StatefulWidget {
  @override
  _AdminBottomScoreDatabaseState createState() =>
      _AdminBottomScoreDatabaseState();
}

class _AdminBottomScoreDatabaseState extends State<AdminBottomScoreDatabase> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is Score Database ',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
