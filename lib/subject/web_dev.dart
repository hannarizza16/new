
import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:first_project/subject/lessons_screen_design.dart';

class  WebDevPage extends StatefulWidget {
  const  WebDevPage({Key? key}) : super(key: key);

  @override
  _WebDevPageState createState() => _WebDevPageState();
}

class _WebDevPageState extends State<WebDevPage> {
  static const lesson = SubjectSection.webdev;

  @override
  void initState() {
    super.initState();
    // Automatically navigate to the lesson screen
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) =>
            LessonScreen(
              lesson: lesson,
            ),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    // You can return an empty container or any other widget here since the navigation is done automatically
    return Container();
  }
}
