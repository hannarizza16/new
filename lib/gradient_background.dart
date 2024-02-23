import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget? child; // Make the child parameter optional
  final double? width;

  const GradientContainer({Key? key, this.width, this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE0F4FF), Color(0xFF87C4FF)], //background color
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child, // Add the child widget
    );
  }
}
