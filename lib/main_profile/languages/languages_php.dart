import 'package:flutter/material.dart';
import 'package:first_project/enums/enums.dart';
import 'package:first_project/main_profile/languages/topic_screen.dart';
import 'package:first_project/main_profile/languages/category_screen.dart';


class PhpLanguage extends StatefulWidget {
  const PhpLanguage({super.key});

  @override
  State<PhpLanguage> createState() => _PhpLanguageState();
}

class _PhpLanguageState extends State<PhpLanguage> {
  static const language = Languages.php;

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
