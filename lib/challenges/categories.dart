// categories.dart
class QuizCategory {
  final String category;
  final List<String> expertise;
  final List<String> subtext;

  QuizCategory(
      {required this.category,
      required this.expertise,
      required this.subtext});
}

List<QuizCategory> getQuizCategories() {
  return [
    QuizCategory( //done
      category: 'C',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: [
        'Navigate the fundamentals of C \nfrom syntax to memory management'
      ],
    ),
    QuizCategory(
      category: 'C++',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: [
        'Level up with classes, inheritance, \nand advanced C++ features'
      ],
    ),
    QuizCategory( //done
      category: 'Java',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: [
        'Showcase your skills in Java`s  \nrich class library and multithreading'
      ],
    ),
    QuizCategory(
      category: 'Dart',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: [
        'Demonstrate proficiency in Dart, Flutter, \nand UI responsiveness'
      ],
    ),
    QuizCategory(
      category: 'C#',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: ['Explore C# beauty, from programming \nto concise syntax'],
    ),
    QuizCategory
      (category: 'PHP',
        expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
        subtext: [
      'Unravel the elegance of PHP, \nfrom web development to code structures'
    ]),
    // Add more categories as needed
  ];
}
