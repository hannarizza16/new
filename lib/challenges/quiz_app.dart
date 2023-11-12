import 'package:flutter/material.dart';
import 'questions.dart';

class QuizApp extends StatefulWidget {
  final String category;
  final String expertiseLevel;

  QuizApp({required this.category, required this.expertiseLevel});

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int currentQuestionIndex = 0;
  List<QuizQuestion> questions = [];

  @override
  void initState() {
    super.initState();
    // Get questions for the specified category and expertise level
    questions = getQuestionsForCategoryAndLevel(widget.category, widget.expertiseLevel);
  }

  void handleAnswer(bool isCorrect) {
    // Handle the answer logic here if needed
    // For simplicity, you can just move to the next question for now
    goToNextQuestion();
  }

  void goToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        // Move to the next question
        currentQuestionIndex++;
      } else {
        // Quiz is completed, you can navigate to a result screen or perform any other action
        // For now, let's just go back to the previous screen
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz: ${widget.category} - ${widget.expertiseLevel}'),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Question
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF263238),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                questions[currentQuestionIndex].questionText,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            // Answer Choices
            ...questions[currentQuestionIndex].answerChoices.map((choice) {
              return GestureDetector(
                onTap: () {
                  handleAnswer(choice.isCorrect);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFF263238),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text(
                    choice.text,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              );
            }).toList(),
            SizedBox(height: 20),
            // Next Question Button
            ElevatedButton(
              onPressed: goToNextQuestion,
              child: Text('Next Question'),
            ),
          ],
        ),
      ),
    );
  }
}
