import 'package:first_project/enums/enums.dart';
import 'package:flutter/material.dart';


extension SubjectSectionExt on SubjectSection {
  AssetImage get imageAsset {
    switch (this) {
      case SubjectSection.applicationdev:
        return AssetImage('assets/subject_image/application.png');
      case SubjectSection.gamedev:
        return AssetImage('assets/subject_image/game.png');
      case SubjectSection.webdev:
        return AssetImage('assets/subject_image/web.png');
      case SubjectSection.machinedev:
        return AssetImage('assets/subject_image/machine.png');
    }
  }
}
