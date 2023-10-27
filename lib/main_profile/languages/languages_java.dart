import 'package:first_project/main_profile/languages/category_screen.dart';
import 'package:first_project/enums/enums.dart';
import 'package:first_project/main_profile/languages/topic_screen.dart';
import 'package:flutter/material.dart';


class JavaLanguage extends StatefulWidget {
  const JavaLanguage({super.key});

  @override
  State<JavaLanguage> createState() => _JavaLanguageState();
}

class _JavaLanguageState extends State<JavaLanguage> {
  static const language = Languages.java;

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
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: sideBar(),
//
//       appBar: AppBar(
//         title: const Text('Java Languauge'),
//         backgroundColor: Colors.transparent,
//       ),
//       bottomNavigationBar: BottomNavBar(),
//       backgroundColor: Color(0xFFEEEEEE),
//
//
//
//     );
//   }
// }
