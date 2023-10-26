import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_arduino.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_c++.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_dart.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_java.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_ruby.dart';
import 'package:flutter/material.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_c.dart';



class languagesAll extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Stack(
                  children: [
                    Container(
                      margin:
                      const EdgeInsets.symmetric(vertical: 10), // SPACE SA TAAS
                      height: 35,
                      color: Colors.white, // BACKGROUND TEXT SA TAAS

                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => languageC()));
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
                          InkWell(
                              onTap: () {
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
                          InkWell(
                              onTap: () {
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
                          InkWell(
                              onTap: () {
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
                          InkWell(
                              onTap: () {
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
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => languageArduino()));
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
              )
            ])));

  }
}
