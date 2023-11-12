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
      subtext: ['Navigate the fundamentals of C, from syntax \nto memory management'],
    ),
    QuizCategory(
      name: 'C++',
      expertiseLevels: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Level up with classes, inheritance, polymorphism, \nand advanced C++ features'],
    ),
    QuizCategory(
      name: 'Java',
      expertiseLevels: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Showcase your skills in Java`s rich class library \nand multithreading'],
    ),
    QuizCategory(
      name: 'Dart',
      expertiseLevels: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Demonstrate proficiency in Dart, Flutter, and UI responsiveness'],
    ),
    QuizCategory(
      name: 'Ruby',
      expertiseLevels: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Explore Ruby`s beauty, from metaprogramming \nto concise syntax'],
    ),
    QuizCategory(
      name: 'Arduino',
      expertiseLevels: ['Beginner', 'Intermediate', 'Advanced'],
      subtext: ['Master embedded systems, coding for microcontrollers \nand creating real-world projects'],
    ),
    // Add more categories as needed
  ];
}
