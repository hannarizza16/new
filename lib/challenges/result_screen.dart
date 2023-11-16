import 'package:first_project/firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
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

    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i] == questions[i].answerChoices.indexWhere((choice) => choice.isCorrect)) {
        correctAnswers++;
      } else {
        wrongQuestions.add(i + 1); // Question numbers start from 1, not 0
      }
    } print(userAnswers);


    // Determine the motivating quote based on the score
    String motivatingQuote = '';
    if (correctAnswers == questions.length) {
      motivatingQuote = "Congratulations! You got a perfect score!";
    } else if (correctAnswers >= questions.length - 1) {
      motivatingQuote = "You did great! Keep up the good work.";
    } else {
      motivatingQuote = "Aral kapa";
    }

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
              Expanded( // Added Expanded widget
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Your Score: $correctAnswers / ${questions.length}',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                        textAlign: TextAlign.center,
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
          content: Text('Are you sure you want to exit to expertise level selection?'),
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
