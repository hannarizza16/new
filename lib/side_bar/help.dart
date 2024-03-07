import 'package:flutter/material.dart';
// import 'package:first_project/bottom_navigations/statistics_bottom.dart';
// import 'package:first_project/bottom_navigations/home_bottom.dart';
// import 'package:first_project/bottom_navigations/leaderboards_bottom.dart';
// import 'package:first_project/bottom_navigations/profile_bottom.dart';
// import 'package:first_project/challenges/category_selection.dart';


class HelpProfile extends StatefulWidget {
  const HelpProfile({Key? key}) : super(key: key);

  @override
  _HelpProfileState createState() => _HelpProfileState();
}

class _HelpProfileState extends State<HelpProfile> {
  // final _bottomScreens = [
  //   LeaderboardScreen(),
  //   StatisticsWidget(),
  //   const AllLanguages(), // state name
  //   const CategorySelection(),
  //   const ProfilePage(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CodeX'),
        titleTextStyle: TextStyle(
          color: Color(0xFF0C356A),
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Color(0xFFDCF2F1),
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFDCF2F1), Color(0xFFDCF2F1)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),


        child: Center(
          child: GestureDetector(
            // onTap: () {
            //  // Navigate to the QuizApp when Challenges is clicked
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => const CategorySelection()),
            //   );
            // },
            child: Container(
              // Optional: Change the color for visual indication
              color: Colors.blue,
              child: const Text(
                'Help Profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
