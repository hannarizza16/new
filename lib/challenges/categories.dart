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
      expertise: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: [
        'Navigate the fundamentals of C \nfrom syntax to memory management'
      ],
    ),
    QuizCategory(
      category: 'C++',
      expertise: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: [
        'Level up with classes, inheritance, \nand advanced C++ features'
      ],
    ),
    QuizCategory( //done
      category: 'Java',
      expertise: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: [
        'Showcase your skills in Java`s  \nrich class library and multithreading'
      ],
    ),
    QuizCategory(
      category: 'Dart',
      expertise: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: [
        'Demonstrate proficiency in Dart, Flutter, \nand UI responsiveness'
      ],
    ),
    QuizCategory(
      category: 'C#',
      expertise: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Explore C# beauty, from programming \nto concise syntax'],
    ),
    QuizCategory
      (category: 'PHP',
        expertise: [
      'Beginner',
      'Intermediate',
      'Advanced'
    ], subtext: [
      'Unravel the elegance of PHP, \nfrom web development to code structures'
    ]),
    // Add more categories as needed
  ];
}
