import 'package:firebase_core/firebase_core.dart';
import 'package:first_project/bottom_navigations/home_bottom.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/sign_up_page.dart';
// import 'firebase/features/app/splash_screen/splash_screen.dart';
import 'package:permission_handler/permission_handler.dart';

import 'firebase/features/app/splash_screen/splash_screen.dart';


void requestPermissions() async {
  if (await Permission.storage.request().isGranted) {
    // Permission Granted
  } else {
    // Permission Denied
  }
}
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCMCuN03y3s62Wl1Kg1dpFZp2LwD_ZWPMU",
        appId: "1:100023595531:android:845875063e7fc1c3800d0e",
        messagingSenderId: "100023595531",
        projectId: "codecultivator-3bdd6",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dialogTheme: DialogTheme(
          backgroundColor: Colors.white, // Set the background color
          titleTextStyle: TextStyle(
            color: Colors.black, // Set the title text color
            // fontWeight: FontWeight.bold,
            fontSize: 20, // Title size
          ),
          contentTextStyle: TextStyle(
            color: Colors.black, // content color under the title
          ),



          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(16.0), // Set the border radius
          // ),
        ),
      ),


      routes: {
        '/': (context) =>  SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SignUpPage(),
        '/home': (context) => const AllLanguages(),
      },
    );
  }
}
