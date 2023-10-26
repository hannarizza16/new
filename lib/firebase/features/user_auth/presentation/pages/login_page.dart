library particles_fly;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/MAIN%20PROFILE/particles_fly.dart';
import 'package:flutter/material.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:first_project/firebase/global/common/toast.dart';

import '../../firebase_auth_implementation/firebase_auth_services.dart';
import 'otp_screen.dart'; // Import the OTPScreen widget

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSigning = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
              lineColor: Colors.black26 ,
              particleColor: Colors.blue,
              // particleColor: particleColors,
              // speedOfParticles: 1,
              // maxParticleSize: ,
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
                    child: Image(image: AssetImage('assets/codexname.png')
                    ),
                  ),
                ],
              )),

          Padding( padding: EdgeInsets.symmetric(horizontal: 15),
                  child: FormContainerWidget(
                    controller: _emailController,
                    labelText: "Email",
                    hintText: "student@rtu.edu.ph",
                    isPasswordField: false,
                  )),

            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),

               child: FormContainerWidget(
                    controller: _passwordController,
                    labelText: "Password",
                    hintText: "Password",
                    isPasswordField: true,
                  )),
                  Align(
                      alignment: Alignment.centerRight,

                      child: TextButton(
                        onPressed: (){
                                          },
                        child: Text('Forget Password ?'),

                      )),

                  GestureDetector(
                    onTap: () {
                      _signIn(context); // Pass the context to _signIn method
                    },

                    //LOGIN BUTTON
                    child: Container(
                      width: 350,
                        height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF30CBF8),
                        borderRadius: BorderRadius.circular(5),

                      ),
                      child: Center(
                        child: _isSigning
                            ? CircularProgressIndicator(color: Colors.white)
                            : Text(
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                            (route) => false,
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

          ]),
        ));
  }

  void _signIn(BuildContext context) async {
    setState(() {
      _isSigning = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    // Add a condition to check if both fields are filled
    if (email.isEmpty || password.isEmpty) {
      showToast(message: 'Please fill in both email and password.');
      setState(() {
        _isSigning = false;
      });
      return;
    }

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

    if (user != null) {
      showToast(message: "User is successfully signed in");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OTPScreen()));
    }
  }
}
