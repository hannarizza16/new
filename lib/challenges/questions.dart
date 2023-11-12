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
  final String? imageUrl; // Make imageUrl optional

  AnswerChoice({required this.text, required this.isCorrect, this.imageUrl});
}

Map<String, Map<String, List<QuizQuestion>>> questionsMap = {
  'C': {
    'Beginner': [
      QuizQuestion(
        questionText: 'What is a variable in C?',
        answerChoices: [
          AnswerChoice(text: 'A data type', isCorrect: false),
          AnswerChoice(text: 'A storage location identified by a memory address', isCorrect: true),
          AnswerChoice(text: 'A constant value', isCorrect: false),
          AnswerChoice(text: 'A reserved keyword', isCorrect: false),
        ],
      ),
    ],
    'Beginner' :[
      QuizQuestion(
        questionText: 'What is the difference between C and another programming language?',
        answerChoices: [
          AnswerChoice(text: 'Syntax', isCorrect: false),
          AnswerChoice(text: 'Execution speed', isCorrect: false),
          AnswerChoice(text: 'Paradigm', isCorrect: false),
          AnswerChoice(text: 'All of the above', isCorrect: true),
        ],
      ),
      // Add more beginner questions for C
    ],
    'Intermediate': [
      QuizQuestion(
        questionText: 'What is the difference between C and another programming language?',
        answerChoices: [
          AnswerChoice(text: 'Syntax', isCorrect: false),
          AnswerChoice(text: 'Execution speed', isCorrect: false),
          AnswerChoice(text: 'Paradigm', isCorrect: false),
          AnswerChoice(text: 'All of the above', isCorrect: true),
        ],
      ),
      // Add more intermediate questions for C
    ],
    'Advanced': [
      QuizQuestion(
        questionText: 'How does memory management work in C?',
        answerChoices: [
          AnswerChoice(text: 'Automatic Garbage Collection', isCorrect: true),
          AnswerChoice(text: 'Manual Memory Allocation/Deallocation', isCorrect: false),
          AnswerChoice(text: 'Memory Pooling', isCorrect: false),
          AnswerChoice(text: 'Dynamic Memory Allocation', isCorrect: false),
        ],
      ),
      // Add more advanced questions for C
    ],
  },
  'C++': {
    // Repeat the structure for C++, Java, Dart, Arduino, Ruby, etc.
  },
  // Repeat for other languages
};

List<QuizQuestion> getQuestionsForCategoryAndLevel(String category, String expertiseLevel) {
  if (questionsMap.containsKey(category)) {
    final categoryQuestions = questionsMap[category];
    if (categoryQuestions != null && categoryQuestions.containsKey(expertiseLevel)) {
      return categoryQuestions[expertiseLevel]!;
    } else {
      throw ArgumentError('Invalid expertise level: $expertiseLevel');
    }
  } else {
    throw ArgumentError('Invalid category: $category');
  }
}
