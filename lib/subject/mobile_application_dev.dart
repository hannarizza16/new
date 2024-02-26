import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:first_project/subject/lessons_screen_design.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/home_page.dart';



class AppDevPage extends StatefulWidget {
  const AppDevPage({Key? key}) : super(key: key);

  @override
  _AppDevPageState createState() => _AppDevPageState();
}
class _AppDevPageState extends State<AppDevPage> {
  static const lesson = SubjectSection.applicationdev;

  SubjectSection? selectedLesson;

  void _onUpdateCategory() {
    setState(() {
      selectedLesson = lesson;
    });
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>
          LessonScreen(
            lesson: selectedLesson!,
          ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Development'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _onUpdateCategory(); // Call _onUpdateCategory when the button is pressed
          },
          child: Text('Select App Development Lesson'),
        ),
      ),
    );
  }
}
