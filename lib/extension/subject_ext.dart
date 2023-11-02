import 'package:first_project/enums/enums.dart';


extension SubjectSectionExt on SubjectSection {
  String get imagePath {
    switch (this) {
      case SubjectSection.applicationdev:
        return 'assets/TEST.png';
      case SubjectSection.gamedev:
        return 'assets/TEST2.png';
      case SubjectSection.webdev:
        return 'assets/web_dev.png';
      case SubjectSection.machinedev:
        return 'assets/machine_learning.png';
    }
  }
}
