import 'package:flutter/material.dart';
import 'category_selection.dart';
import 'questions.dart';
import 'result_screen.dart';

class QuizApp extends StatefulWidget {
  final String category;
  final String expertiseLevel;

  const QuizApp({
    super.key,
    required this.category,
    required this.expertiseLevel,
  });

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
    questions =
        getQuestionsForCategoryAndLevel(widget.category, widget.expertiseLevel);
  }

  @override
  void dispose() {
    resetSelectedAnswers();
    super.dispose();
  }

  void handleAnswer(int answerIndex) {
    setState(() {
      for (int i = 0;
          i < questions[currentQuestionIndex].answerChoices.length;
          i++) {
        // print(questions[currentQuestionIndex].answerChoices[i].isSelected);

        questions[currentQuestionIndex].answerChoices[i].isSelected =
            i == answerIndex;

        final answerChoice = questions[currentQuestionIndex]
            .answerChoices[i]
            .copyWith(isSelected: i == answerIndex);

        questions[currentQuestionIndex].answerChoices[i] = answerChoice;
      }
      showNextQuestionButton = true;
    });
  }

  void resetSelectedAnswers() {
    setState(() {
      for (var question in questions) {
        for (var choice in question.answerChoices) {
          choice.isSelected = false;
        }
      }
      showNextQuestionButton = false; // Reset the next question button state
    });
  }

  void _showExitConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Exit'),
          content: const Text('Are you sure you want to exit?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Reset selected answers before exiting
                resetSelectedAnswers();
                // Exit the app or navigate to another screen if needed
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategorySelection(),
                  ),
                  (route) => false, // This line clears the navigation stack
                );
              },
              child: const Text('Exit'),
            ),
          ],
        );
      },
    );
  }

  void goToNextQuestion() {
    setState(() {
      showNextQuestionButton = false;

      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // If it's the last question, navigate to the result screen
        // Reset selected answers before navigating to the result screen

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              questions: questions,
              userAnswers: getUserAnswer(),
            ),
          ),
        );
      }
    });
  }

  List<int> getUserAnswer() {
    final answer = questions.map((q) {
      return q.answerChoices.indexWhere((choice) {
        return choice.isSelected;
      });
    }).toList();
    return answer;
  }

  Future<bool> _onWillPop() async {
    final exitConfirmed = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Exit'),
        content: const Text(
            'Are you sure you want to exit the quiz? Your progress will be lost.'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Exit'),
          ),
        ],
      ),
    );

    if (exitConfirmed ?? true) {
      // Reset selected answers before exiting
      resetSelectedAnswers();
    }

    return exitConfirmed ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final isLastQuestion = currentQuestionIndex == questions.length - 1;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Quiz: ${widget.category} - ${widget.expertiseLevel}'),
          backgroundColor: Color(0xFF279EFF),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFE0F4FF), Color(0xFF87C4FF)], //background color
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Question
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF0C356A),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    questions[currentQuestionIndex].questionText,
                    style: const TextStyle(fontSize: 18, color: Color(0xFFFFCC70)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Answer Choices
              ...List.generate(
                  questions[currentQuestionIndex].answerChoices.length,
                  (index) {
                final choice =
                    questions[currentQuestionIndex].answerChoices[index];
                return GestureDetector(
                  onTap: () {
                    handleAnswer(index);
                  },
                  child: Container(
                    //SELECTED ANSWER UI
                    margin: const EdgeInsets.symmetric(vertical: 9),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: choice.isSelected
                          ? Color(0xFF279EFF)
                          : const Color(0xFF0C356A),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(
                      choice.text,
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                );
              }),
              const SizedBox(height: 20),
              // Next Question / Submit Button
              if (showNextQuestionButton)
                ElevatedButton(
                  onPressed:
                      isLastQuestion ? goToNextQuestion : goToNextQuestion,
                  child: Text(isLastQuestion ? 'Submit' : 'Next Question'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

List<QuizQuestion> getQuestionsForCategoryAndLevel(
    String category, String expertiseLevel) {
  final key = '$category' + '_' + '$expertiseLevel';
  if (questionsMap.containsKey(key)) {
    return questionsMap[key]!;
  } else {
    throw ArgumentError('Invalid category or expertise level');
  }
}
