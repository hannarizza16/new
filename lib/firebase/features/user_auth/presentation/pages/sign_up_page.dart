import 'package:firebase_auth/firebase_auth.dart';
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
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              FormContainerWidget(
                controller: _studentIDController,
                hintText: "Student-ID",
                isPasswordField: false,
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerWidget(
                controller: _emailController,
                hintText: "RTU Email",
                isPasswordField: false,
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerWidget(
                controller: _passwordController,
                hintText: "Password",
                isPasswordField: true,
              ),
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: isSigningUp
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
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
      ),
    );
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
      showToast(message: "Please fill in all required fields.");
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
      }
    } else {
      setState(() {
        isSigningUp = false;
      });
      showToast(message: "Please use an RTU email address (e.g., yourname@rtu.edu.ph).");
    }
  }
}