// expertise_level_selection.dart
import 'package:flutter/material.dart';
import 'categories.dart';
import 'quiz_app.dart';

class ExpertiseLevelSelection extends StatelessWidget {
  final String category;

  ExpertiseLevelSelection({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select an Expertise Level for $category'),
        backgroundColor: Color(0xFF279EFF),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE0F4FF), Color(0xFF87C4FF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: getQuizCategories()
              .firstWhere((element) => element.name == category)
              .expertiseLevels
              .length,
          itemBuilder: (context, index) {
            final expertiseLevel = getQuizCategories()
                .firstWhere((element) => element.name == category)
                .expertiseLevels[index];

            EdgeInsetsGeometry margin = EdgeInsets.symmetric(horizontal: 16);
            if (index == 0) {
              margin = EdgeInsets.fromLTRB(16, 16, 16, 8);
            } else if (index ==
                getQuizCategories()
                    .firstWhere((element) => element.name == category)
                    .expertiseLevels
                    .length -
                    1) {
              margin = EdgeInsets.fromLTRB(16, 8, 16, 16);
            } else {
              margin = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
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
                  _navigateToQuizApp(context, category, expertiseLevel);
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
                              expertiseLevel,
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
        color: Color(0xFFFFCC70),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
    );
  }

  void _navigateToQuizApp(BuildContext context, String category, String expertiseLevel) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizApp(category: category, expertiseLevel: expertiseLevel),
      ),
    );
  }
}
