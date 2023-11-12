import 'package:draggable_fab/draggable_fab.dart';
import 'package:first_project/ai_storage/ai_main.dart'; // Replace with your correct import path
import 'package:flutter/material.dart';

class PersonalHelper extends StatelessWidget {
  const PersonalHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableFab(
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatBotApp()), // Replace AI_Main() with your AI screen
          );
        },
        child: ClipOval(
          child: Image.asset(
            'assets/jrizal.jpg',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
