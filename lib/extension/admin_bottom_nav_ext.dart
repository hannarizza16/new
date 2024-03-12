import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


extension AdminBottomNavExt on AdminBottomNav {
  IconData get icon {
    switch (this) {
      case AdminBottomNav.accounts:
        return CupertinoIcons.person_3_fill;
      case AdminBottomNav.list:
        return CupertinoIcons.square_list_fill;

    }
  }
}
