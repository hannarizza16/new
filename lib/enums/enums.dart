

enum SplashTransitionType {
  scaleTransition,
}

enum SideBarSection {
  profile('Profile'),
  leaderboards('LeaderBoards'),
  settings('Settings'),
  logout('Logout');

  final String text;
  const SideBarSection(this.text);
}

enum BottomNavs {
  home('Home'),
  news('News'),
  code('Code'),
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