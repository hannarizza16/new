

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
  statistics('Records'),
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
  dart('Dart'),
  csharp('C#'),
  php('Php');
  // pearl('Pearl');

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

