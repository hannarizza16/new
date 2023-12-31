import 'package:flutter/material.dart';
import 'firebase/features/user_auth/presentation/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: GetStarted());
  }
}

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  _GetStarted createState() => _GetStarted();
}

class _GetStarted extends State<GetStarted> {
  final PageController _pageController = PageController(initialPage: 0);
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
        "\nDesigned to help you master coding skills from your device.",
    "Learn programming through hands-on"
        "\nand interactive tutorials on various languages.",
    "Test and enhance your skills "
        "\nwith coding challenges that reinforce your knowledge.",
    "Find extensive reference materials"
        "\nand documentation within the app.",
    "Ready to take your coding skills to the next level?"
        "\nClick the button below to get started.",
  ];

  List<String> imageLocation = [
    "assets/1.gif",
    "assets/2.gif",
    "assets/3.gif",
    "assets/4.gif",
    "assets/5.gif",
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
                  Image.asset( // image loc
                    imageLocation[index],
                    width: 500,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    headings[index], //heading loc
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[700],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      descriptions[index],
                      style: const TextStyle(fontSize: 15.5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned( //NAVIGATION DOTS
            bottom: 181.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(totalPages, (index) {
                return Container(
                  width: 15,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPage == index ? Colors.lightBlue[700] : Colors.grey,
                  ),
                );
              }),
            ),
          ),
          Positioned( // BUTTON POSITION
            bottom: 80,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (currentPage == 4)
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(250, 50),
                      backgroundColor: const Color(0xFF30CBF8),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(fontSize: 15.0, letterSpacing: 1.5),
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