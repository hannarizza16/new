
import 'package:flutter/material.dart';
import 'package:first_project/enums/enums.dart';
import 'package:first_project/main_profile/languages/topic_screen.dart';
import 'package:first_project/main_profile/languages/category_screen.dart';


List<String> getCTopics() {
  return ['Beginner', 'Advanced', 'Intermediate'];
}

class CLanguage extends StatefulWidget {
  const CLanguage({super.key});

  @override
  State<CLanguage> createState() => _CLanguageState();
}

class _CLanguageState extends State<CLanguage> {
  static const language = Languages.c;

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
