import 'package:firebase_core/firebase_core.dart';
import 'package:first_project/bottom_navigations/home_bottom.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/sign_up_page.dart';
import 'firebase/features/app/splash_screen/splash_screen.dart';

//hgellojsa
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCsHDQtI9DItQgSqwy45_y2xG9tDGxuER8",
        appId: "1:540215271818:web:8b22d4aee01acdce862873",
        messagingSenderId: "540215271818",
        projectId: "flutter-firebase-9c136",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SignUpPage(),
        '/home': (context) => AllLanguages(),
      },
    );
  }
}
