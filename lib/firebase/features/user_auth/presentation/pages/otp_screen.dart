
library particles_fly;
import 'dart:async';



import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/main_profile/particles_fly.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class ThreeDotLoader extends StatefulWidget {
  @override
  _ThreeDotLoaderState createState() => _ThreeDotLoaderState();
}
//hello
class _ThreeDotLoaderState extends State<ThreeDotLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds:2), // Adjust duration for slower animation
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FadeTransition(
              opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: Interval(
                    (0.1 * i),
                    (0.1 * (i + 1)),
                    curve: Curves.easeInOut,
                  ),
                ),
              ),
              child: Icon(Icons.circle, size: 20, color: Colors.blue),
            ),
          ),
      ],
    );
  }
}

class VerifyEmailPage extends StatefulWidget {
  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  bool isEmailVerified = false;
  Timer? timer;
  String verificationMessage = '';

  int countdown = 5;

  @override
  void initState() {
    super.initState();

    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified) {
      sendVerificationEmail();

      timer = Timer.periodic(
        Duration(seconds: 3),
            (_) => checkEmailVerified(),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();

    super.dispose();
  }

  Future<void> checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
      verificationMessage = isEmailVerified
          ? 'Congratulations! Your account is verified'
          : 'Your account is being verified';
    });

    if (isEmailVerified) {
      timer?.cancel();
      startCountdown();
    }
  }

  Future<void> sendVerificationEmail() async {
    final auth = FirebaseAuth.instance.currentUser!;
    await auth.sendEmailVerification();
    setState(() {
      verificationMessage = 'Your account is being verifie';
    });
  }

  void navigateToHomePage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MainHomePage()),
    );
  }

  void startCountdown() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (countdown == 1) {
          timer.cancel();
          navigateToHomePage();
        } else {
          setState(() {
            countdown--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ParticlesFly(
              height: size.height,
              width: size.width,
              connectDots: true,
              numberOfParticles: 20,
              lineColor: Colors.black26,
              particleColor: Colors.blue,
            ),


      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.5),
            ThreeDotLoader(), // Use custom loading animation here
            SizedBox(height: 20),
            Text(
              verificationMessage,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            if (isEmailVerified)
              Text(
                'Directing to Home screen in $countdown',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
          ],
        ),
      ),
          ],
        )
      )
    );
  }
}
