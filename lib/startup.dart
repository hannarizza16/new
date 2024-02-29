import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: GetStarted());
  }
}

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  int totalPages = 5;
  late SharedPreferences _prefs;
  late AnimationController _animationController;

  List<String> headings = [
    "Welcome",
    "Interactive Tutorials",
    "Coding Challenges",
    "Comprehensive Resources",
    "Start",
  ];

  List<String> descriptions = [
    "CodeX, your trusted solution for all your coding needs."
        "\nDesigned to master your coding skills from your device.",
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
    _initPrefs();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page?.round() ?? 0;
      });
    });
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animationController.forward();
  }

  void _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    bool? isFirstTime = _prefs.getBool('isFirstTime') ?? true;
    if (!isFirstTime) {
      // If not first time, navigate to next page or perform necessary action.
      // For example:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
    } else {
      // If first time, set isFirstTime to false.
      _prefs.setBool('isFirstTime', false);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        opacity: 1.0,
        duration: const Duration(milliseconds: 500),
        child: Stack(
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
                      width: 500,
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      headings[index],
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue[700],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        descriptions[index],
                        style: const TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              },
            ),
            Positioned(
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
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                opacity: currentPage == 4 ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (currentPage == 4)
                      ElevatedButton(
                        onPressed: () {
                          _animationController.reverse().then((value) {
                            // Navigate to the sign-up page with fade animation
                            Navigator.of(context).push(FadePageRoute(builder: (context) => const SignUpPage()));
                          });
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
            ),
          ],
        ),
      ),
    );
  }
}

class FadePageRoute<T> extends PageRouteBuilder<T> {
  final WidgetBuilder builder;

  FadePageRoute({required this.builder})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
        builder(context),
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}
