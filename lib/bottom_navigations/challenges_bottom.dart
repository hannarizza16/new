import 'package:flutter/material.dart';
import '../challenges/category_selection.dart';


class ChallengesPage extends StatelessWidget {
  const ChallengesPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // Navigate to the QuizApp when Challenges is clicked
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategorySelection()),
          );
        },
        // Optional: Change the color for visual indication
          ),
        ),
      ),
    );
  }
}
