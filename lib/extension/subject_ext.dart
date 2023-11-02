import 'package:first_project/enums/enums.dart';


extension SubjectSectionExt on SubjectSection {
  String get imagePath {
    switch (this) {
      case SubjectSection.applicationdev:
        return 'assets/final_mobile.png';
      case SubjectSection.gamedev:
        return 'assets/final_game.png';
      case SubjectSection.webdev:
        return 'assets/final_web.png';
      case SubjectSection.machinedev:
        return 'assets/final_machine.png';
    }
  }
}
