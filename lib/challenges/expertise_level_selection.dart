import 'package:first_project/gradient_background.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'quiz_app.dart';

class ExpertiseLevelSelection extends StatefulWidget {
  final String category;

  ExpertiseLevelSelection({required this.category});

  @override
  _ExpertiseLevelSelectionState createState() => _ExpertiseLevelSelectionState();
}

class _ExpertiseLevelSelectionState extends State<ExpertiseLevelSelection> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select a level',
          style: TextStyle(color: Color(0xFF06283D)), // Changing font color
        ),
        backgroundColor: Color(0xFFDCF2F1),
      ),
      body: GradientContainer(
        child: ListView.builder(
          itemCount: getQuizCategories()
              .firstWhere((element) => element.category == widget.category)
              .expertise
              .length,
          itemBuilder: (context, index) {
            final category = getQuizCategories().firstWhere((element) => element.category == widget.category);
            final expertise = category.expertise[index];
            final descriptionIndex = category.expertise.indexOf(expertise); // Index of current expertise level
            final description = category.expertiseText[descriptionIndex];


            EdgeInsetsGeometry margin = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
            if (index == 0) {
              margin = EdgeInsets.fromLTRB(16, 16, 16, 8);
            } else if (index == category.expertise.length - 1) {
              margin = EdgeInsets.fromLTRB(16, 8, 16, 16);
            }

            return Card(
              elevation: 5,
              color: Color(0xFF0C356A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: margin,
              child: GestureDetector(
                onTap: () {
                  _navigateToQuizApp(context, widget.category, expertise);
                },
                child: Container(
                  padding: EdgeInsets.all(20), // Adjust the padding here to increase card size
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        expertise,
                        style: TextStyle(fontSize: 18, color: Color(0xFFFFCC70)),
                      ),
                      SizedBox(height: 12), // Increased space between text and description
                      Text(
                        description,
                        style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic), // Italicize the description
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _navigateToQuizApp(BuildContext context, String category, String expertise) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizApp(category: category, expertise: expertise),
      ),
    );
  }
}
