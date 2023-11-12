import 'package:flutter/material.dart';
import 'questions.dart';
import 'result_screen.dart';

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
  bool showNextQuestionButton = false;

  @override
  void initState() {
    super.initState();
    // Get questions for the specified category and expertise level
    questions = getQuestionsForCategoryAndLevel(widget.category, widget.expertiseLevel);
  }

  void handleAnswer(int answerIndex) {
    setState(() {
      for (int i = 0; i < questions[currentQuestionIndex].answerChoices.length; i++) {
        questions[currentQuestionIndex].answerChoices[i].isSelected = i == answerIndex;
      }
      showNextQuestionButton = true;
    });
  }

  void goToNextQuestion() {
    setState(() {
      showNextQuestionButton = false;

      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // If it's the last question, navigate to the result screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              questions: questions,
              userAnswers: questions
                  .map((q) => q.answerChoices.indexWhere((choice) => choice.isSelected))
                  .toList(),
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLastQuestion = currentQuestionIndex == questions.length - 1;

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
            ...List.generate(questions[currentQuestionIndex].answerChoices.length, (index) {
              final choice = questions[currentQuestionIndex].answerChoices[index];
              return GestureDetector(
                onTap: () {
                  handleAnswer(index);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: choice.isSelected ? Colors.pink[900] : Color(0xFF263238),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text(
                    choice.text,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              );
            }),
            SizedBox(height: 20),
            // Next Question / Submit Button
            if (showNextQuestionButton)
              ElevatedButton(
                onPressed: isLastQuestion ? goToNextQuestion : goToNextQuestion,
                child: Text(isLastQuestion ? 'Submit' : 'Next Question'),
              ),
          ],
        ),
      ),
    );
  }
}

List<QuizQuestion> getQuestionsForCategoryAndLevel(String category, String expertiseLevel) {
  final key = '$category' + '_' + '$expertiseLevel';
  if (questionsMap.containsKey(key)) {
    return questionsMap[key]!;
  } else {
    throw ArgumentError('Invalid category or expertise level');
  }
}
