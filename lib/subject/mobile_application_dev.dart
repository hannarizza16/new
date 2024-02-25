import 'package:flutter/material.dart';
// import 'package:first_project/gradient_background.dart';



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
        backgroundColor: Colors.black, // appbar color
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              setState(() {
                _isSidebarOpen = !_isSidebarOpen;
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(), // Placeholder for your main content
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              _selectedLessonIndex != -1 ? 'Lesson ${_selectedLessonIndex + 1}' : '',
              style: TextStyle(fontSize: 20, color: Colors.black),// color of the text in scren
            ),
          ),
          if (_isSidebarOpen)
            GestureDetector(
              onTap: () {
                setState(() {
                  _isSidebarOpen = false;
                });
              },
              child: Container(
                color: Colors.black.withOpacity(0.5), // Semi-transparent main screen black overlay
              ),
            ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 300), // the way sidebar closes
            top: 0,
            bottom: 0,
            right: _isSidebarOpen ? 0 : -200,
            child: Container(
              width: 200,
              color: Colors.black, //sidebar background color
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Lesson ${index + 1}', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: _selectedLessonIndex == index ? Colors.yellow : Colors.white,
                    )),
                    onTap: () {
                      setState(() {
                        _selectedLessonIndex = index;
                        _isSidebarOpen = false; // Close sidebar when lesson tapped
                      });
                      print('Lesson ${index + 1} tapped!');
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );

  }
}