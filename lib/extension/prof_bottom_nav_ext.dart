import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


extension ProfBottomNavExt on ProfBottomNav {
  IconData get icon {
    switch (this) {
      case ProfBottomNav.challenges:
        return CupertinoIcons.gamecontroller_alt_fill;
      case ProfBottomNav.students:
        return CupertinoIcons.person_3_fill;
      case ProfBottomNav.records:
        return CupertinoIcons.book_fill;
    }
  }
}
