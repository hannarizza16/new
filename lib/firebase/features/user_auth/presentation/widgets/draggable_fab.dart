import 'package:draggable_fab/draggable_fab.dart';
import 'package:first_project/ai_storage/ai_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class PersonalHelper extends StatelessWidget {
  const PersonalHelper({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableFab(
      child: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return ChatBotApp(
              );},
          );
        },
        child: ClipOval(
          child: Image.asset('assets/jrizal.jpg', width: 60, height: 60, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
