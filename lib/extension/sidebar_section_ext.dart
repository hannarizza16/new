import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';

extension SideBarSectionExt on SideBarSection {
  IconData get icon {
    switch (this) {
      case SideBarSection.updateProfile:
        return Icons.leaderboard;
      case SideBarSection.about:
        return Icons.settings;
      case SideBarSection.help:
        return Icons.help;
      case SideBarSection.logout:
        return Icons.logout;
    }
  }
}
