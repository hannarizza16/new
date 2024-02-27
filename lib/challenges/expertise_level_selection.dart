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
  late AnimationController _controller;
  late Animation<Color?> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);
    _animation = ColorTween(
      begin: Color(0xFF00A9FF),
      end: Color(0xFF71DFE7),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select an Expertise Level for ${widget.category}',
          style: TextStyle(color: Color(0xFF06283D)), // Changing font color
        ),
        backgroundColor: Color(0xFF00A9FF),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  _animation.value ?? Color(0xFF71DFE7),
                  Color(0xFF94DAFF),
                  _animation.value ?? Color(0xFF9ED5C5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: ListView.builder(
              itemCount: getQuizCategories()
                  .firstWhere((element) => element.name == widget.category)
                  .expertiseLevels
                  .length,
              itemBuilder: (context, index) {
                final expertiseLevel = getQuizCategories()
                    .firstWhere((element) => element.name == widget.category)
                    .expertiseLevels[index];

                EdgeInsetsGeometry margin = EdgeInsets.symmetric(horizontal: 16);
                if (index == 0) {
                  margin = EdgeInsets.fromLTRB(16, 16, 16, 8);
                } else if (index ==
                    getQuizCategories()
                        .firstWhere((element) => element.name == widget.category)
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
                      _navigateToQuizApp(context, widget.category, expertiseLevel);
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
          );
        },
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
