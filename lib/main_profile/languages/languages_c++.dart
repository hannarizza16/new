import 'package:first_project/enums/enums.dart';
import 'package:first_project/main_profile/languages/category_screen.dart';
import 'package:first_project/main_profile/languages/topic_screen.dart';
import 'package:flutter/material.dart';

class CPlusPlusLanguage extends StatefulWidget {
  const CPlusPlusLanguage({super.key});

  @override
  State<CPlusPlusLanguage> createState() => _CPlusPlusLanguageState();
}

class _CPlusPlusLanguageState extends State<CPlusPlusLanguage> {
  static const language = Languages.cplusplus;

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
    return CategoryScreen(onUpdateCategory: _onUpdateCategory,);
    // customTextStyle: const TextStyle(
    //     fontSize: 24, // Change the font size
    //     color: Colors.blue, // Change the text color
    //     fontWeight: FontWeight.bold, // Apply font weight
    //     fontStyle: FontStyle.italic, // Apply font style
    //     letterSpacing: 1.5,));
  }
}
