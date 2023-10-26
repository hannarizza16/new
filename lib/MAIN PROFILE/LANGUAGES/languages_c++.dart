import 'package:first_project/MAIN%20PROFILE/SIDE%20NAVIGATION%20BAR/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:first_project/MAIN%20PROFILE/BOTTOM%20NAVIGATION%20BAR/bottomnavbar.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_all.dart';

class languageCplus extends StatelessWidget {
  const languageCplus ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideBar(),

      appBar: AppBar(
        title: const Text('C++ Languauge'),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Color(0xFFEEEEEE),
      body: languagesAll(),


    );
  }
}
