import 'package:flutter/material.dart';
import '../challenges/category_selection.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // Navigate to the QuizApp when Challenges is clicked
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CategorySelection()),
          );
        },
        child: Container(
          // Optional: Change the color for visual indication
          color: Colors.blue,
          child: const Text(
            'Challenges Page',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
