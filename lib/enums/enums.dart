

enum SplashTransitionType {
  scaleTransition,
}

enum SideBarSection {
  leaderboards('LeaderBoards'),
  settings('Settings'),
  logout('Logout');

  final String text;
  const SideBarSection(this.text);
}

enum BottomNavs {
  leaderboards('Leaderboards'),// button names
  statistics('Statistics'),
  home('Home'),
  challenges('Challenges'),
  profile('Profile'); // inside the () is the name of button assigned in nav bar

  final String text;
  const BottomNavs(this.text);
}

enum Languages {
  c('C'),
  cplusplus('C++'),
  java('Java'),
  dart ('Dart'),
  ruby('Ruby'),
  arduino('Arduino'),
  pearl('Pearl');

final String value;
const Languages(this.value);

}

enum Categories {
  beginner('Beginner'),
  intermediate ('Intermediate'),
  advanced ('Advanced');

final String text;
const Categories (this.text);

}

enum SubjectSection {
  applicationdev('Mobile Application Development'),
  gamedev('Mobile Game Development'),
  webdev('Web Development'),
  machinedev('Machine Learning');

  final String value;
  const SubjectSection (this.value);
}


//
// enum SubjectCategories{
//   lesson_one('Lesson One'),
//   lesson_two('Lesson Two'),
//   lesson_three('Lesson Three'),
//   lesson_four('Lesson Four'),
//   lesson_five('Lesson Five'),
//   lesson_six('Lesson Six'),
//   lesson_seven('Lesson Seven'),
//   lessone_ight('Lesson Eight'),
//   lesson_nine('Lesson Nine'),
//   lesson_ten('Lesson Ten');
//
//
//   final String text;
//   const SubjectCategories(this.text);
// }