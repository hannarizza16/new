library particles_fly;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/main_profile//particles_fly.dart';
import 'package:flutter/material.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:first_project/firebase/global/common/toast.dart';
import '../../firebase_auth_implementation/firebase_auth_services.dart';
// Import the OTPScreen widget

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool _isSigning = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  final TextEditingController _emailController = TextEditingController( text: 'cjevardome@rtu.edu.ph');
  final TextEditingController _passwordController = TextEditingController(text: 'PitchBlack19@');



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
                  lineColor: Colors.black26 ,
                  particleColor: Colors.blue,
                  // particleColor: particleColors,
                  // speedOfParticles: 1,
                  // maxParticleSize: ,
                ),

                Column(
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(top: 220),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 250,
                              height: 100,
                            ),
                        Text(
                          'Create new password',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            ),
                           ),
                          ],
                        )),

                    Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15, bottom: 0),

                        child: FormContainerWidget(
                          controller: _passwordController,
                          labelText: "New Password",
                          hintText: "Password",
                          isPasswordField: true,
                        )),

                    Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15, bottom: 40),

                        child: FormContainerWidget(
                          controller: _passwordController,
                          labelText: "Confirm Password",
                          hintText: "Password",
                          isPasswordField: true,
                        )),


                    GestureDetector(
                      onTap: () {
                         // Pass the context to _signIn method
                      },

                      //LOGIN BUTTON
                      child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF30CBF8),
                          borderRadius: BorderRadius.circular(5),

                        ),
                        child: Center(
                          child: _isSigning
                              ? const CircularProgressIndicator(color: Colors.white)
                              : const Text(
                            "Change Password",
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


                      ],
                    ),
                  ],
                ),

              ),
        );
  }

}