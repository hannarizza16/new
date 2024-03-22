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
            final expertise = getQuizCategories()
                .firstWhere((element) => element.category == widget.category)
                .expertise[index];

            EdgeInsetsGeometry margin = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
            if (index == 0) {
              margin = EdgeInsets.fromLTRB(16, 16, 16, 8);
            } else if (index ==
                getQuizCategories()
                    .firstWhere((element) => element.category == widget.category)
                    .expertise
                    .length -
                    1) {
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
                  height: 80,
                  width: MediaQuery.of(context).size.width - 32,
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: ListTile(
                            title: Text(
                              expertise,
                              style: TextStyle(fontSize: 18, color: Color(0xFFFFCC70)),
                            ),
                          ),
                        ),
                      ),
                      _buildDesignElement(),
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

  Widget _buildDesignElement() {
    return Container(
      width: 20,
      decoration: BoxDecoration(
        color: Color(0xFF096E9C6),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
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