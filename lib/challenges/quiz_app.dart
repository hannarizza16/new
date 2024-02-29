import 'package:flutter/material.dart';
import 'category_selection.dart';
import 'questions.dart';
import 'result_screen.dart';

class QuizApp extends StatefulWidget {
  final String category;
  final String expertiseLevel;

  const QuizApp({
    Key? key,
    required this.category,
    required this.expertiseLevel,
  }) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> with SingleTickerProviderStateMixin {
  int currentQuestionIndex = 0;
  List<QuizQuestion> questions = [];
  bool showNextQuestionButton = false;
  late AnimationController _controller;
  late Animation<Color?> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat(reverse: true);
    _animation = ColorTween(
      begin: Color(0xFF00A9FF),
      end: Color(0xFF71DFE7),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    // Get questions for the specified category and expertise level
    questions = getQuestionsForCategoryAndLevel(widget.category, widget.expertiseLevel);
  }

  @override
  void dispose() {
    resetSelectedAnswers();
    _controller.dispose();
    super.dispose();
  }

  void handleAnswer(int answerIndex) {
    setState(() {
      for (int i = 0; i < questions[currentQuestionIndex].answerChoices.length; i++) {
        questions[currentQuestionIndex].answerChoices[i].isSelected = i == answerIndex;

        final answerChoice = questions[currentQuestionIndex].answerChoices[i].copyWith(isSelected: i == answerIndex);
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
      showNextQuestionButton = false;
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
              userAnswers: getUserAnswer(),
              category: widget.category,
              expertiseLevel: widget.expertiseLevel,
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
        content: const Text('Are you sure you want to exit the quiz? Your progress will be lost.'),
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
          title: Text(
            'Quiz: ${widget.category} - ${widget.expertiseLevel}',
            style: TextStyle(color: Color(0xFF06283D)), // Changing font color
          ),
          backgroundColor: Color(0xFF279EFF),
        ),
        body: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    _animation.value ?? Color(0xFF71DFE7),
                    Color(0xFF94DAFF),
                    _animation.value ?? Color(0xFF9ED5C5),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF0C356A),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        questions[currentQuestionIndex].questionText,
                        style: TextStyle(fontSize: 18, color: Color(0xFFFFCC70)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ...List.generate(
                    questions[currentQuestionIndex].answerChoices.length,
                        (index) {
                      final choice = questions[currentQuestionIndex].answerChoices[index];
                      return GestureDetector(
                        onTap: () {
                          handleAnswer(index);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 9),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: choice.isSelected ? Color(0xFF279EFF) : Color(0xFF0C356A),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Text(
                            choice.text,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  if (showNextQuestionButton)
                    ElevatedButton(
                      onPressed: isLastQuestion ? goToNextQuestion : goToNextQuestion,
                      child: Text(isLastQuestion ? 'Submit' : 'Next Question'),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
