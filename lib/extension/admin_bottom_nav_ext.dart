import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


extension AdminBottomNavExt on AdminBottomNav {
  IconData get icon {
    switch (this) {
      case AdminBottomNav.studentaccounts:
        return CupertinoIcons.person_3_fill;
      case AdminBottomNav.professoraccount:
        return CupertinoIcons.square_list_fill;
      case AdminBottomNav.score:
        return CupertinoIcons.square_list_fill;


    }
  }
}
