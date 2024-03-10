import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/prof_page.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/professor_sign_up_page.dart';

import 'package:first_project/firebase/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:first_project/firebase/global/common/toast.dart';
import 'package:first_project/main_profile//particles_fly.dart';
import 'package:flutter/material.dart';
import '../../firebase_auth_implementation/firebase_auth_services.dart';
import 'forgot_password.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSigning = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  final TextEditingController _emailController =
  TextEditingController(text: 'cjevardome@rtu.edu.ph');
  final TextEditingController _passwordController =
  TextEditingController(text: 'ggggg@');

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void clearTextFields() {
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 75),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 250,
                        child: Image(
                          image: AssetImage('assets/codexname.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: FormContainerWidget(
                    controller: _emailController,
                    labelText: "Email",
                    hintText: "student@rtu.edu.ph",
                    isPasswordField: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: FormContainerWidget(
                    controller: _passwordController,
                    labelText: "Password",
                    hintText: "Password",
                    isPasswordField: true,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage(),
                        ),
                      );
                    },
                    child: const Text('Forget Password ?'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _signIn(context);
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF30CBF8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: _isSigning
                          ? const CircularProgressIndicator(
                          color: Colors.white)
                          : const Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        const Text("Sign up as"),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              FadePageRoute(builder: (context) => const SignUpPage()),
                            );
                          },
                          child: const Text(
                            "Student",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5), // nilabas sa gesture detector para maging plain text pero under row pa din sila
                        const Text("|"),
                        GestureDetector( // then nag create ng another gesture detector para sa another text na may pupuntahan
                          onTap: () {
                            Navigator.push(
                              context,
                              FadePageRoute(builder: (context) => const ProfessorSignUpPage()),
                            );
                          },
                          child: const Text(
                            " Professor",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),// Plain text next to "Student"
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  void _signIn(BuildContext context) async {
    setState(() {
      _isSigning = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      showToast(message: 'Please fill in all required fields');
      setState(() {
        _isSigning = false;
      });
      return;
    }

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

// Inside your _signIn method
    if (user != null) {
      if (user.emailVerified) {
        String email = user.email ?? '';

        // Check if email is for a student
        if (email.endsWith('@rtu.edu.ph')) {
          // Check if the user is a student
          QuerySnapshot studentSnapshot = await FirebaseFirestore.instance
              .collection('students')
              .where('email', isEqualTo: email)
              .get();

          if (studentSnapshot.docs.isNotEmpty) {
            showToast(message: "User is successfully signed in as a student");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainHomePage()),
            );
            return;
          }
        }
        // Check if email is for a professor
        if (email.endsWith('@rtu.edu.ph')) {
          // Check if the user is a professor
          QuerySnapshot professorSnapshot = await FirebaseFirestore.instance
              .collection('professor_instructor')
              .where('email', isEqualTo: email)
              .get();

          if (professorSnapshot.docs.isNotEmpty) {
            showToast(message: "User is successfully signed in as a professor");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfessorHomePage()),
            );
            return;
          }
        }

        // Email is not associated with any role
        showToast(message: "Invalid email address or user not found");
      } else {
        showToast(message: "Email is not verified");
      }
    }

    }


}


class FadePageRoute<T> extends MaterialPageRoute<T> {
  FadePageRoute({required WidgetBuilder builder, RouteSettings? settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}
