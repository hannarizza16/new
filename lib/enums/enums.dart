

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
  news('News'),// button names
  code('Code'),
  home('Home'),
  challenges('Challenges'),
  profile('Profile'); // inside the () is the name of button assigned in nav bar

  final String text;
  const BottomNavs(this.text);
}

enum Languages {
  java('Java'),
  c('C'),
  cplusplus('C++'),
  dart ('Dart'),
  ruby('Ruby'),
  arduino('Arduino');

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

  final String text;
  const SubjectSection (this.text);
}
