// categories.dart
class QuizCategory {
  final String name;
  final List<String> expertiseLevels;
  final List<String> subtext;

  QuizCategory({required this.name, required this.expertiseLevels, required this.subtext});
}

List<QuizCategory> getQuizCategories() {
  return [
    QuizCategory(
      name: 'C',
      expertiseLevels: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Navigate the fundamentals of C \nfrom syntax to memory management'],
    ),
    QuizCategory(
      name: 'C++',
      expertiseLevels: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Level up with classes, inheritance, \nand advanced C++ features'],
    ),
    QuizCategory(
      name: 'Java',
      expertiseLevels: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Showcase your skills in Java`s  \nrich class library and multithreading'],
    ),
    QuizCategory(
      name: 'Dart',
      expertiseLevels: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Demonstrate proficiency in Dart, Flutter, \nand UI responsiveness'],
    ),
    QuizCategory(
      name: 'C#',
      expertiseLevels: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Explore C# beauty, from programming \nto concise syntax'],
    ),
    // Add more categories as needed
  ];
}
