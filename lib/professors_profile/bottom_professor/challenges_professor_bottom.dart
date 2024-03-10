import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:first_project/gradient_background.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: ProfessorChallengesScreen(),
  ));
}

class ProfessorChallengesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: ProfessorChallengesBottom(),
      ),
    );
  }
}

class ProfessorChallengesBottom extends StatefulWidget {
  @override
  _ProfessorChallengesBottomState createState() => _ProfessorChallengesBottomState();
}

class _ProfessorChallengesBottomState extends State<ProfessorChallengesBottom> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is Challenges bottom',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}