import 'package:first_project/challenges/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'quiz_app.dart';
import 'quiz_screen.dart';

class ExpertiseLevelSelection extends StatelessWidget {
  final String category;

  ExpertiseLevelSelection({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select an Expertise Level for $category'),
        backgroundColor: Color(0xFF164863),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF3D84A8), Color(0xFF27496D)],
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
            return Card(
              elevation: 5,
              color: Color(0xFF263238),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigate to QuizScreen and pass selected category and expertise level
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizApp(
                        category: category,
                        expertiseLevel: expertiseLevel,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: ListTile(
                            title: Text(
                              expertiseLevel,
                              style: TextStyle(fontSize: 18, color: Colors.orange),
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
        color: Colors.pink[900],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
    );
  }
}
