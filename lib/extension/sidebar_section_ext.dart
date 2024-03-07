import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


extension SideBarSectionExt on SideBarSection {
  IconData get icon {
    switch (this) {
      case SideBarSection.updateProfile:
        return Icons.edit_document;
      case SideBarSection.about:
        return CupertinoIcons.info_circle_fill;
      case SideBarSection.help:
        return Icons.help;
      case SideBarSection.logout:
        return Icons.logout;
    }
  }
}
