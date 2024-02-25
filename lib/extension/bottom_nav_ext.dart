import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


extension BottomNavsExt on BottomNavs {
  IconData get icon {
    switch (this) {
      case BottomNavs.leaderboards:
        return CupertinoIcons.ant;
      case BottomNavs.statistics:
        return Icons.bar_chart;
      case BottomNavs.home:
        return Icons.home;
      case BottomNavs.challenges:
        return CupertinoIcons.gamecontroller_alt_fill;
      case BottomNavs.profile:
        return Icons.account_circle;
    }
  }
}
