import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';

extension BottomNavsExt on BottomNavs {
  IconData get icon {
    switch (this) {
      // case BottomNavs.news:
      //   return Icons.newspaper;
      case BottomNavs.statistics:
        return Icons.bar_chart;
      case BottomNavs.home:
        return Icons.home;
      case BottomNavs.challenges:
        return Icons.gamepad;
      case BottomNavs.profile:
        return Icons.account_circle;
    }
  }
}
