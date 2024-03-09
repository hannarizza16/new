class QuizQuestion {
  String questionText;
  List<AnswerChoice> answerChoices;

  QuizQuestion({
    required this.questionText,
    required this.answerChoices,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      questionText: json['questionText'] ?? '',
      answerChoices: (json['answerChoices'] as List<dynamic>)
          .map((choice) => AnswerChoice.fromJson(choice))
          .toList(),
    );
  }
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
  factory AnswerChoice.fromJson(Map<String, dynamic> json) {
    return AnswerChoice(
      text: json['text'] ?? '',
      isCorrect: json['isCorrect'] ?? false,
    );
  }

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
  'C_Level 1': [
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
        AnswerChoice(text: 'A. Reads input from the user', isCorrect: false),
        AnswerChoice(
            text: 'B. Prints formatted output to the console', isCorrect: true),
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
      questionText: 'What is the output of the following C code?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint x = 5;'
          '\nprintf("The value of x is: %d", x);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. The value of x is: 5', isCorrect: true),
        AnswerChoice(text: 'B. The value of x is: %d', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),

  ],
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
