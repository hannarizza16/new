import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_arduino.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_c++.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_c.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_dart.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_java.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_ruby.dart';
import 'package:flutter/material.dart';
import '../../../../../bottom_navigations/bottomnavbar.dart';
import '../../../../../MAIN PROFILE/SIDE NAVIGATION BAR/sidebar.dart';
import 'package:draggable_fab/draggable_fab.dart';



//eto na ung homepage after login


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCurrentIndex = 0;
  // Color inkWellColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: sideBar(),

        // drawerScrimColor: Colors.black, // background color when slide
        appBar: AppBar(
          title: Text('CodeX'),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Color(0xFFEEEEEE),
        bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.transparent,

          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
          currentIndex: selectedCurrentIndex,

          onTap: (index) => setState(() => selectedCurrentIndex= index),

          items: <BottomNavigationBarItem>[

            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',backgroundColor: Colors.cyan[100]),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News', backgroundColor: Colors.cyan[200]),
            BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Code',backgroundColor: Colors.cyan[300]),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile',backgroundColor: Colors.cyan[400]),
          ],
          selectedIconTheme: IconThemeData(size:30),
          unselectedIconTheme: IconThemeData(size: 25),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10), // SPACE SA TAAS
                      height: 35,
                      color: Colors.white, // BACKGROUND TEXT SA TAAS

                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryScreen(
                                      language: 'C',
                                      topics: getCTopics(),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                // decoration: BoxDecoration(
                                //     // color: Color(0xFF30CBF8),
                                //   border: Border.all(width: 1,
                                //   color:Color(0xFF30CBF8),
                                //
                                //   ),
                                //   borderRadius: BorderRadius.circular(10),
                                //   color: Colors.transparent,
                                // ),
                                width: 70,
                                child: Center(
                                    child: Text(
                                      "C",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        letterSpacing: 2.0,
                                      ),
                                    )),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => languageCplus()));
                              },
                              child: Container(
                                  width: 75,
                                  // color: Colors.yellow,
                                  child: Center(
                                      child: Text(
                                        "C++",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          letterSpacing: 2.0,
                                        ),
                                      )))),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => languageJava()));
                              },
                              child: Container(
                                  width: 75,
                                  // color: Colors.deepOrangeAccent,
                                  child: Center(
                                      child: Text(
                                        "Java",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          letterSpacing: 2.0,
                                        ),
                                      )))),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => languageRuby()));
                              },
                              child: Container(
                                  width: 75,
                                  // color: Colors.blue,
                                  child: Center(
                                      child: Text(
                                        "Ruby",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          letterSpacing: 2.0,
                                        ),
                                      )))),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => languageDart()));
                              },
                              child: Container(
                                  width: 75,
                                  // color: Colors.black,
                                  child: Center(
                                      child: Text(
                                        "Dart",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          letterSpacing: 2.0,
                                        ),
                                      )))),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            languageArduino()));
                              },
                              child: Container(
                                  width: 100,
                                  // color: Colors.purpleAccent,
                                  child: Center(
                                      child: Text(
                                        "Arduino",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          letterSpacing: 2.0,
                                        ),
                                      )))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // WIDGET
        floatingActionButton: DraggableFab(
            child:
            // floatingActionButtonLocation:
            // FloatingActionButtonLocation.endDocked,
            FloatingActionButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Input Modal'),
                        content: Container(
                          // HEIGHT OF MODAL
                          width: 300,
                          height: 300,
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.send),
                                  hintText: 'Type here',
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: Text('Send'),
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Close the dialog
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: ClipOval(
                    child: Image.asset('assets/jrizal.jpg',
                        width: 60, height: 60, fit: BoxFit.cover)))));
  }
}

