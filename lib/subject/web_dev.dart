import 'package:flutter/material.dart';
import 'package:first_project/gradient_background.dart';

class WebDevPage extends StatelessWidget {
  const WebDevPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Development'),
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