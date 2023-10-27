import 'package:first_project/MAIN%20PROFILE/SIDE%20NAVIGATION%20BAR/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:first_project/bottom_navigations//bottomnavbar.dart';

class languageArduino extends StatelessWidget {
  const languageArduino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideBar(),

      appBar: AppBar(
        title: const Text('Arduino Languauge'),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Color(0xFFEEEEEE),
      // body: languagesAll(),


    );
  }
}
