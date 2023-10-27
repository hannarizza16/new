import 'package:flutter/material.dart';
import 'package:first_project/enums/enums.dart';
import 'package:first_project/main_profile/languages/topic_screen.dart';
import 'package:first_project/main_profile/languages/category_screen.dart';


class ArduinoLanguage extends StatefulWidget {
  const ArduinoLanguage({super.key});

  @override
  State<ArduinoLanguage> createState() => _ArduinoLanguageState();
}

class _ArduinoLanguageState extends State<ArduinoLanguage> {
  static const language = Languages.arduino;

  Categories? selectedCategory;

  void _onUpdateCategory(Categories category) {
    setState(() {
      selectedCategory = category;
    });
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TopicScreen(
        language: language,
        category: selectedCategory!,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return CategoryScreen(onUpdateCategory: _onUpdateCategory);
  }
}
