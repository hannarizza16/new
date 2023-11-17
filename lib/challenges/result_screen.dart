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
      if (userAnswers[i] ==
          questions[i].answerChoices.indexWhere((choice) => choice.isCorrect)) {
        correctAnswers++;
      } else {
        wrongQuestions.add(i + 1); // Question numbers start from 1, not 0
      }
    }
    print(userAnswers);

    // Determine the motivating quote based on the score
    String motivatingQuote = '';
    if (correctAnswers == questions.length) {
      motivatingQuote = "Congratulations! Achieving a perfect score is a testament to your dedication and knowledge. It's not just a victory; it's a milestone in your journey of continuous learning.";
    } else if (correctAnswers >= questions.length - 1) {
      motivatingQuote = "You did great! Success is not just about the destination; it's about the journey. Your commitment and effort are evident in your performance.";
    } else {
      motivatingQuote =
      "Don't be discouraged by a low score. Every mistake is a step towards learning and improvement. Keep pushing yourself, and success will follow!";
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
          backgroundColor: Color(0xFF279EFF),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFE0F4FF),
                Color(0xFF87C4FF)
              ], // background color
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Your Score: $correctAnswers / ${questions.length}',
                          style:
                              TextStyle(fontSize: 30, color: Color(0xFF0C356A)),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        if (wrongQuestions.isNotEmpty)
                          Text(
                            'Incorrect Answers in Question: ${wrongQuestions.join(', ')}',
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          ),
                        SizedBox(height: 20),
                        Text(
                          motivatingQuote,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF0C356A),
                            fontStyle: FontStyle.italic, // Italicize the quote
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
          content: Text(
              'Are you sure you want to exit to expertise level selection?'),
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
