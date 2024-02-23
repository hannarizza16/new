
import 'package:flutter/material.dart';

class AppDevPage extends StatelessWidget {
  const AppDevPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.blue, // Change this to the color you want
      child: const Center(
        child: Text(
          'MOBILE APPLICATION DEVELOPMENT',
          style: TextStyle(fontSize: 20, color: Colors.white), // Adjust text style
        ),
      ),
    );
  }
}

