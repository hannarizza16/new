// quiz_app.dart

import 'package:flutter/material.dart';
import 'questions.dart';

class QuizScreen extends StatefulWidget {
  final String category;
  final String expertiseLevel;

  QuizScreen({required this.category, required this.expertiseLevel});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  List<QuizQuestion> currentQuestions = [];

  @override
  void initState() {
    super.initState();
    // Load questions for the selected category and expertise level
    currentQuestions = getQuestionsForCategoryAndLevel(widget.category, widget.expertiseLevel);
    print('Questions loaded: ${currentQuestions.length}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz - ${widget.category} - ${widget.expertiseLevel}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestionIndex < currentQuestions.length
                  ? currentQuestions[currentQuestionIndex].questionText
                  : 'Quiz Completed',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: currentQuestionIndex < currentQuestions.length
                  ? currentQuestions[currentQuestionIndex].answerChoices
                  .map(
                    (choice) => ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    // For simplicity, let's just move to the next question for now.
                    setState(() {
                      if (currentQuestionIndex < currentQuestions.length - 1) {
                        currentQuestionIndex++;
                      } else {
                        // User has completed all questions
                        // You can add logic to show a summary or navigate to another screen
                        print('Quiz Completed');
                      }
                    });
                  },
                  child: Text(choice.text),
                ),
              )
                  .toList()
                  : [
                ElevatedButton(
                  onPressed: () {
                    // Handle submission or navigate to another screen
                    print('Quiz Submitted');
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              // Handle button press
              setState(() {
                if (currentQuestionIndex < currentQuestions.length - 1) {
                  currentQuestionIndex++;
                } else {
                  // User has completed all questions
                  // You can add logic to show a summary or navigate to another screen
                  print('Quiz Completed');
                }
              });
            },
            child: Text(
              currentQuestionIndex < currentQuestions.length - 1 ? 'Next Question' : 'Submit',
            ),
          ),
        ),
      ),
    );
  }
}
