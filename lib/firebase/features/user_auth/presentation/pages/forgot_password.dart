library particles_fly;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/form_container_widget.dart';
import '../../../../../main_profile/particles_fly.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool _isResettingPassword = false;
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
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
              lineColor: Colors.black26,
              particleColor: Colors.blue,
            ),

            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 300, bottom: 20),
                  child: Text(
                    'Enter your email to reset your password',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 20),
                  child: FormContainerWidget(
                    controller: _emailController,
                    labelText: "Email",
                    hintText: "example@example.com",
                    isPasswordField: false,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    resetPassword();
                  },

                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF30CBF8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: _isResettingPassword
                          ? const CircularProgressIndicator(color: Colors.white)
                          : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email, color: Colors.white), // Email symbol
                          const SizedBox(width: 10),
                          const Text(
                            "Reset Password",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ],
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

  Future resetPassword () async {
    // await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
    setState(() {
      _isResettingPassword = true;
    });
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _emailController.text.trim(),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Password reset email has been sent'),
          duration: const Duration(seconds: 3),
        ),
      );
    } catch (error) {
      print('Error sending password reset email: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Failed to send password reset email'),
          duration: const Duration(seconds: 3),
        ),
      );
    } finally {
      setState(() {
        _isResettingPassword = false;
      });
    }
  }
}