// questions.dart
import 'categories.dart';

class QuizQuestion {
  final String questionText;
  final List<AnswerChoice> answerChoices;

  QuizQuestion({required this.questionText, required this.answerChoices});
}
class AnswerChoice {
  final String text;
  final bool isCorrect;
  final String? imageUrl;
  bool isSelected;

  AnswerChoice({
    required this.text,
    required this.isCorrect,
    this.imageUrl,
    this.isSelected = false,
  });
}


Map<String, List<QuizQuestion>> questionsMap = {
  'C_Beginner': [
    QuizQuestion(
      questionText: 'What is a variable in C?',
      answerChoices: [
        AnswerChoice(text: 'A data type', isCorrect: false),
        AnswerChoice(text: 'A storage location identified by a memory address', isCorrect: true),
        AnswerChoice(text: 'A constant value', isCorrect: false),
        AnswerChoice(text: 'A reserved keyword', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the "printf" function do in C?',
      answerChoices: [
        AnswerChoice(text: 'Reads input from the user', isCorrect: false),
        AnswerChoice(text: 'Prints formatted output to the console', isCorrect: true),
        AnswerChoice(text: 'Allocates memory for variables', isCorrect: false),
        AnswerChoice(text: 'Defines a new variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which symbol is used for comments in C?',
      answerChoices: [
        AnswerChoice(text: '//', isCorrect: true),
        AnswerChoice(text: '--', isCorrect: false),
        AnswerChoice(text: '**', isCorrect: false),
        AnswerChoice(text: '%%', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the "return" statement in a C function?',
      answerChoices: [
        AnswerChoice(text: 'Terminates the program', isCorrect: false),
        AnswerChoice(text: 'Returns a value from the function', isCorrect: true),
        AnswerChoice(text: 'Declares a new function', isCorrect: false),
        AnswerChoice(text: 'Loops through code', isCorrect: false),
      ],
    ),
    // Add more beginner questions for C
  ],
  'C_Intermediate': [
    // Intermediate questions for C
  ],
  'C_Advanced': [
    // Advanced questions for C
  ],
  // Repeat for other categories and levels
};

List<QuizQuestion> getQuestionsForCategoryAndLevel(String category, String expertiseLevel) {
  final key = '$category' + '_' + '$expertiseLevel';
  if (questionsMap.containsKey(key)) {
    return questionsMap[key]!;
  } else {
    throw ArgumentError('Invalid category or expertise level');
  }
}
