import 'package:first_project/main_profile/languages/category_screen.dart';
import 'package:first_project/main_profile/languages/topic_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_project/enums/enums.dart';

class CSharpLanguage extends StatefulWidget {
  const CSharpLanguage({super.key});

  @override
  State<CSharpLanguage> createState() => _CSharpLanguageState();
}

class _CSharpLanguageState extends State<CSharpLanguage> {
  static const language = Languages.csharp;

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
