library particles_fly;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/main_profile/particles_fly.dart';
import 'package:flutter/material.dart';
import 'package:first_project/firebase/features/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:first_project/firebase/global/common/toast.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _studentIDController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isSigningUp = false;

  @override
  void dispose() {
    _studentIDController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // PARA TO SA PAG DEFINE NG size.height AND size.width
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: [
      ParticlesFly(
        height: size.height,
        width: size.width,
        connectDots: true,
        numberOfParticles: 20,
        lineColor: Colors.black26,
        particleColor: Colors.blue,
      ),


      Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
         child:   Padding( padding: const EdgeInsets.only(top: 275 ),

         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Let's create your account",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.50),
              ),
              const SizedBox(
                height: 30,
              ),
              FormContainerWidget(
                controller: _studentIDController,
                labelText: "Student Number",
                hintText: "2023-102724",
                isPasswordField: false,
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerWidget(
                controller: _emailController,
                labelText: "School Email",
                hintText: "Jrizal@rtu.edu.ph",
                isPasswordField: false,
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerWidget(
                controller: _passwordController,
                labelText: "Password",
                hintText: "Enter Secure Password ",
                isPasswordField: true,
              ),
              Row(children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Password must contain special character',
                      style: TextStyle(color: Colors.green),
                    ))
              ]),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  _signUp();
                },
                child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF30CBF8),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: isSigningUp
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0),
                          ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the login page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        )]),
    ])));
  }

  void _signUp() async {
    setState(() {
      isSigningUp = true;
    });

    String studentID = _studentIDController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      // Handle the case where email or password fields are empty.
      setState(() {
        isSigningUp = false;
      });
      showToast(message: "Please fill in all required fields");
      return;
    }

    if (email.endsWith('@rtu.edu.ph')) {
      User? user = await _auth.signUpWithEmailAndPassword(email, password);

      setState(() {
        isSigningUp = false;
      });

      if (user != null) {
        showToast(message: "User is successfully created");
        // Navigate to the login page after signing up
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      }
    } else {
      setState(() {
        isSigningUp = false;
      });
      showToast(
          message:
              "Please use an RTU email address (e.g., yourname@rtu.edu.ph).");
    }
  }
}
