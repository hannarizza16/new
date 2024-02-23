import 'package:flutter/material.dart';
import 'package:first_project/gradient_background.dart';

class GameDevPage extends StatelessWidget {
  const GameDevPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Development'),
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
