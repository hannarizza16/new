import 'package:flutter/material.dart';
import '../gradient_background.dart';
import 'questions.dart'; // Import your questions class here

class QuizDetailsScreen extends StatelessWidget {
  final List<QuizQuestion>? questions; // Make it nullable
  final List<int> userAnswers;

  const QuizDetailsScreen({super.key,
    required this.questions,
    required this.userAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Details'),
      ),
      body: Stack(
        children: [
          GradientContainer(), // Add GradientContainer as background
          ListView.builder(
            itemCount: questions!.length, // Use null assertion operator (!)
            itemBuilder: (context, index) {
              // Get the correct answer choice
              String correctAnswer = questions![index].answerChoices
                  .where((choice) => choice.isCorrect)
                  .first
                  .text;

              // Get the user's answer choice
              String userAnswer = questions![index]
                  .answerChoices[userAnswers[index]]
                  .text;

              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Card(
                  color: Colors.lightBlue[100],
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Question ${index + 1}:\n${questions![index].questionText}'),
                              SizedBox(height: 8),
                              Text(
                                '\nCorrect Answer:\n$correctAnswer',
                                style: TextStyle(color: Colors.deepPurpleAccent),
                              ),
                              Text(
                                '\nYour Answer:\n$userAnswer',
                                style: TextStyle(
                                  color: userAnswers[index] == questions![index].answerChoices.indexWhere((choice) => choice.isCorrect)
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          userAnswers[index] == questions![index].answerChoices.indexWhere((choice) => choice.isCorrect)
                              ? Icons.check
                              : Icons.close,
                          color: userAnswers[index] == questions![index].answerChoices.indexWhere((choice) => choice.isCorrect)
                              ? Colors.green
                              : Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}