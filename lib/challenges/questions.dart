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

  AnswerChoice copyWith({
    String? text,
    bool? isCorrect,
    String? imageUrl,
    bool? isSelected,
  }) =>
      AnswerChoice(
        text: text ?? this.text,
        isCorrect: isCorrect ?? this.isCorrect,
        imageUrl: imageUrl ?? this.imageUrl,
        isSelected: isSelected ?? this.isSelected,
      );
}

// Firebase
Map<String, List<QuizQuestion>> questionsMap = {
  'C_Beginner': [
    QuizQuestion(
      questionText: 'What is a variable in C?',
      answerChoices: [
        AnswerChoice(text: 'A. A data type', isCorrect: false),
        AnswerChoice(
            text: 'B. A storage location identified by a memory address',
            isCorrect: true),
        AnswerChoice(text: 'C. A constant value', isCorrect: false),
        AnswerChoice(text: 'D. A reserved keyword', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the "printf" function do in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Reads input from the user', isCorrect: false),
        AnswerChoice(
            text: 'B. Prints formatted output to the console',
            isCorrect: true),
        AnswerChoice(
            text: 'C. Allocates memory for variables', isCorrect: false),
        AnswerChoice(text: 'D. Defines a new variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which symbol is used for comments in C?',
      answerChoices: [
        AnswerChoice(text: 'A. //', isCorrect: true),
        AnswerChoice(text: 'B. --', isCorrect: false),
        AnswerChoice(text: 'C. **', isCorrect: false),
        AnswerChoice(text: 'D. %%', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText:
      'What will be the output of the following Java code? '
          '\n\npublic class DebugQuestion {'
          '\npublic static void main(String[] args) {'
          '\nint x = 10;'
          '\nint y = 20;'
          '\nint sum = x + y;'
          '\n\nSystem.out.println("The sum of x and y is: " + sum);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 10', isCorrect: false),
        AnswerChoice(text: 'B. 20', isCorrect: false),
        AnswerChoice(text: 'C. 30', isCorrect: true),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),


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

List<QuizQuestion> getQuestionsForCategoryAndLevel(
    String category, String expertiseLevel) {
  final key = '$category' + '_' + '$expertiseLevel';
  if (questionsMap.containsKey(key)) {
    // Retrieve the list of questions for the specified category and expertise level
    List<QuizQuestion> shuffledQuestions = List.from(questionsMap[key]!);
    // Shuffle the list of questions
    shuffledQuestions.shuffle();
    return shuffledQuestions;
  } else {
    throw ArgumentError('Invalid category or expertise level');
  }
}
