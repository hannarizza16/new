import 'package:flutter/material.dart';

Widget buildAppBarAndBackground({required int selectedCurrentIndex, required List<Widget> bottomScreens}) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('CodeX'),
      titleTextStyle: TextStyle(
        color: Color(0xFF0C356A),
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Color(0xFFDCF2F1),
    ),
    backgroundColor: Colors.transparent,
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFDCF2F1), Color(0xFFDCF2F1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: bottomScreens[selectedCurrentIndex],
    ),
  );
}
