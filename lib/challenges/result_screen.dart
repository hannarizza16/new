import 'package:flutter/material.dart';
import '../bottom_navigations/challenges_bottom.dart';
import '../firebase/features/user_auth/presentation/pages/home_page.dart';
import 'category_selection.dart';
import 'questions.dart';

class ResultScreen extends StatelessWidget {
  final List<QuizQuestion> questions;
  final List<int> userAnswers;

  ResultScreen({required this.questions, required this.userAnswers});

  @override
  Widget build(BuildContext context) {
    int correctAnswers = 0;
    List<int> wrongQuestions = [];

    // Calculate the score and identify correct/wrong answers
    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i] == questions[i].answerChoices.indexWhere((choice) => choice.isCorrect)) {
        correctAnswers++;
      } else {
        wrongQuestions.add(i + 1); // Question numbers start from 1, not 0
      }
    }

    // Add your motivating quote here
    String motivatingQuote = "You did great! Keep up the good work.";

    return WillPopScope(
      onWillPop: () async {
        // Handle the back button press
        _showExitConfirmationDialog(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Result'),
          backgroundColor: Color(0xFF164863),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF3D84A8), Color(0xFF27496D)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your Score: $correctAnswers / ${questions.length}',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 20),
              if (wrongQuestions.isNotEmpty)
                Text(
                  'Incorrect Answers: ${wrongQuestions.join(', ')}',
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              SizedBox(height: 20),
              Text(
                motivatingQuote,
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showExitConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Exit'),
          content: Text('Are you sure you want to exit to category level selection?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Navigate back to the expertise level selection screen
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainHomePage(),
                  ),
                      (route) => false, // This line clears the navigation stack
                );
              },
              child: Text('Exit'),
            ),
          ],
        );
      },
    );
  }

}
