// import 'package:first_project/main_profile/languages/category_screen.dart';
// import 'package:first_project/main_profile/languages/topic_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:first_project/enums/enums.dart';
//
// class PearlLanguage extends StatefulWidget {
//   const PearlLanguage({super.key});
//
//   @override
//   State<PearlLanguage> createState() => _PearlLanguageState();
// }
//
// class _PearlLanguageState extends State<PearlLanguage> {
//   static const language = Languages.pearl;
//
//   Categories? selectedCategory;
//
//   void _onUpdateCategory(Categories category) {
//     setState(() {
//       selectedCategory = category;
//     });
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) => TopicScreen(
//         language: language,
//         category: selectedCategory!,
//       ),
//     ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CategoryScreen(onUpdateCategory: _onUpdateCategory);
//   }
// }
