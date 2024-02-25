import 'package:flutter/material.dart';
import 'package:first_project/enums/enums.dart';

import 'package:first_project/gradient_background.dart';
import 'package:first_project/subject/lessons_screen_design.dart';


class MachineDevPage extends StatelessWidget {
  const MachineDevPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Machine Learning'),
        backgroundColor: Color(0xFF279EFF),
      ),
      body: GradientContainer( // Use GradientContainer instead of Container
        child: Center(
          child: Text(
            '',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}