import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPageView(),
    );
  }
}

class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  int totalPages = 5;
  late SharedPreferences _prefs; // SharedPreferences instance

  // Flags for checking if the 'Get Started' screen was shown before
  bool showGetStarted = false;

  @override
  void initState() {
    super.initState();
    checkFirstSeen(); // Check if it's the first time using the app
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  // Function to check if it's the first time using the app
  Future<void> checkFirstSeen() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      showGetStarted = (_prefs.getBool('seenGetStarted') ?? false);
    });
  }

  // Function to set the flag indicating the 'Get Started' screen has been seen
  Future<void> setFirstSeen() async {
    setState(() {
      showGetStarted = true;
      _prefs.setBool('seenGetStarted', true);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: totalPages,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/zoro.gif",
                    width: 120,
                    height: 110,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[700],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "CodeX, your one-stop solution for all your coding needs. "
                          "Designed to help you master coding skills from your device.",
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          ),
          if (currentPage == 4 && !showGetStarted)
            Positioned(
              bottom: 210.0,
              left: 0,
              right: 0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                  setFirstSeen(); // Mark 'Get Started' as seen
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 50),
                  backgroundColor: Color(0xFF30CBF8),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
