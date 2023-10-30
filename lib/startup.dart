import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

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

  List<String> headings = [
    "Welcome",
    "Interactive Tutorials",
    "Coding Challenges",
    "Comprehensive Resources",
    "Start",
  ];

  List<String> descriptions = [
    "CodeX, your one-stop solution for all your coding needs."
        "Designed to help you master coding skills from your device.",
    "Learn programming through hands-on, "
        "\n interactive tutorials on various languages.",
    "Test and enhance your skills "
        "\n with coding challenges that reinforce your knowledge.",
    "Find extensive reference materials "
        "\n and documentation within the app.",
    "Ready to take your coding skills to the next level? "
        "\n Click the button below to get started.",
  ];

  List<String> imageLocation = [
    "assets/zoro.gif",
    "assets/1.gif",
    "assets/2.gif",
    "assets/3.gif",
    "assets/4.gif",
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page?.round() ?? 0;
      });
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
                    imageLocation[index],
                    width: 120, // Set the width to 200 pixels
                    height: 110, // Set the height to 200 pixels
                    fit: BoxFit.contain, // Adjust the fit as needed
                  ),
                  SizedBox(height: 10),// heading code
                  Text(
                    headings[index],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[700],
                    ),
                  ),
                  SizedBox(height: 5),//description code
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      descriptions[index],
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 270.0, // Adjust this value as needed
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(totalPages, (index) {
                return Container(
                  width: 10,
                  height: 30,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPage == index ? Colors.lightBlue[700] : Colors.grey,
                  ),
                );
              }),
            ),
          ),
          Positioned(
            bottom: 210.0, // Adjust this value as needed
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                if (currentPage == 4)

                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the LoginPage when the button is pressed
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(250, 50), // Set the width and height here
                      backgroundColor: Color(0xFF30CBF8),
                    ),
                    child: Text("Get Started",
                      style: TextStyle(fontSize: 15.0,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}