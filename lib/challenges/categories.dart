// categories.dart
class QuizCategory {
  final String category;
  final List<String> expertise;
  final List<String> subtext;
  final List<String> expertiseText;

  QuizCategory(
      {required this.category,
      required this.expertise,
      required this.subtext,
      required this.expertiseText
      });
}
List<QuizCategory> getQuizCategories() {
  return [
    QuizCategory(
      category: 'C',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: [
        'Navigate the fundamentals of C \nfrom syntax to memory management'
      ],
      expertiseText: [
        'Basic concepts covering syntax, data types, and control structures.',
        'Deeper understanding of functions, loops, and conditionals.',
        'Advanced topics like algorithms and memory management.',
        'Complex problem-solving with data structures and optimization techniques.',
        'Expert level mastering complex scenarios and application architecture.'
      ],
    ),
    QuizCategory(
      category: 'C++',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: [
        'Level up with classes, inheritance, \nand advanced C++ features'
      ],
      expertiseText: [
        'Foundational understanding of C++ syntax and basic OOP principles.',
        'Exploration of classes, inheritance, and polymorphism.',
        'Advanced features like templates and exception handling.',
        'Mastery of advanced OOP concepts and design patterns.',
        'Expert level proficiency in performance optimization and advanced features.'
      ],
    ),
    QuizCategory(
      category: 'Java',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: [
        'Showcase your skills in Java`s  \nrich class library and multithreading'
      ],
      expertiseText: [
      'Understanding basic Java syntax and core library functionalities.',
      'Exploration of Java class library and basic multithreading concepts.',
    'Advanced topics including data structures, algorithms, and advanced multithreading.',
      'Mastery of Java fundamentals and proficiency in frameworks and technologies.',
      'Expertise in advanced Java features, frameworks, and application development.'
      ],
    ),
    QuizCategory(
      category: 'Dart',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: [
        'Demonstrate proficiency in Dart, Flutter, \nand UI responsiveness'
      ],
      expertiseText: [
        'Introduction to Dart basics and Flutter development.',
        'Deeper understanding of Dart language and asynchronous programming.',
        'Advanced Flutter UI development and state management.',
        'Mastery of Flutter application development and performance optimization.',
        'Expertise in advanced Dart and Flutter features for complex applications.'
      ],
    ),
    QuizCategory(
      category: 'C#',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: ['Explore C# beauty, from programming \nto concise syntax'],
      expertiseText: [
        'Basic understanding of C# syntax fundamentals.',
        'Exploration of advanced C# features async programming.',
        'Advanced topics including development and entity framework.',
        'Mastery of C# application development and architectural design.',
        'Expertise in advanced C# concepts and technologies for large-scale applications.'
      ],
    ),
    QuizCategory(
      category: 'PHP',
      expertise: ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'],
      subtext: [
        'Unravel the elegance of PHP, \nfrom web development to code structures'
      ],
      expertiseText: [
        'Introduction to PHP basics and web development concepts.',
        'Deeper understanding of PHP language features and object-oriented programming.',
        'Advanced PHP topics including MVC architecture and framework development.',
        'Mastery of PHP frameworks and database integration.',
        'Expertise in PHP security practices and performance optimization.'
      ],
    ),
    // Add more categories as needed
  ];
}
