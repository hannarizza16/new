import 'package:flutter/material.dart';
import 'package:first_project/gradient_background.dart';

class AppDevPage extends StatefulWidget {
  const AppDevPage({Key? key}) : super(key: key);

  @override
  _AppDevPageState createState() => _AppDevPageState();
}

class _AppDevPageState extends State<AppDevPage> {
  int _selectedLessonIndex = -1; // Define the selected lesson index

  bool _isSidebarOpen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Application Development'),
        backgroundColor: Color(0xFF279EFF),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            setState(() {
              _isSidebarOpen = !_isSidebarOpen;
            });
          },
        ),
      ),
      body: Stack(
        children: [
          GradientContainer(),
          Center(
            child: Text(
              _selectedLessonIndex != -1 ? 'Lesson ${_selectedLessonIndex + 1}' : '', // Display selected lesson
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          if (_isSidebarOpen) // Render only when sidebar is open
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              top: 0,
              bottom: 0,
              left: 0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isSidebarOpen = false;
                  });
                },
                child: Container(
                  width: 200,
                  color: Colors.grey[200],
                  child: ListView.builder(
                    itemCount: 10, // Number of lessons
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Lesson ${index + 1}'),
                        onTap: () {
                          // Handle tap event for each lesson
                          setState(() {
                            _selectedLessonIndex = index;
                            _isSidebarOpen = false; // Close sidebar when lesson tapped
                          });
                          print('Lesson ${index + 1} tapped!');
                        },
                        tileColor: _selectedLessonIndex == index
                            ? Colors.blue.withOpacity(0.5) // Highlight color when selected
                            : null,
                        selectedTileColor: Colors.blue.withOpacity(0.5), // Highlight color for selected state
                      );
                    },
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}