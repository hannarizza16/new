import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/main_profile/particles_fly.dart';
import 'package:flutter/material.dart';
import 'package:first_project/firebase/features/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:first_project/firebase/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:first_project/firebase/global/common/toast.dart';

import 'package:first_project/firebase/features/user_auth/presentation/pages/terms_and_condition.dart';

import 'otp_screen.dart';

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
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _middleIntController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  bool isSigningUp = false;
  bool isChecked = false;

  @override
  void dispose() {
    _studentIDController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _middleIntController.dispose();
    _lastNameController.dispose();
    _firstNameController.dispose();
    super.dispose();
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Let's create your account",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2.50),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        FormContainerWidget(
                          controller: _lastNameController,
                          labelText: "Last Name",
                          hintText: "Last Name",
                          isPasswordField: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FormContainerWidget(
                          controller: _firstNameController,
                          labelText: "First Name",
                          hintText: "First Name",
                          isPasswordField: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        middleInitialField(
                          controller: _middleIntController,
                          labelText: "Middle Initial",
                          hintText: "Middle Initial",
                          isPasswordField: false,
                          maxLength : 1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FormContainerWidget(
                          controller: _studentIDController,
                          labelText: "Student Number",
                          hintText: "Student Number",
                          isPasswordField: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FormContainerWidget(
                          controller: _emailController,
                          labelText: "School Email",
                          hintText: "School Email",
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

                        //PASSWORD VALIDATION CONDITION STATEMENT
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                _passwordController.text.isEmpty
                                    ? 'Create a secure and valid password'
                                    : !_passwordController.text
                                    .contains(RegExp(r'[A-Z]'))
                                    ? 'Password must contain an uppercase letter'
                                    : !_passwordController.text.contains(
                                    RegExp(
                                        r'[!@#$%^&*(),.?":{}|<>]'))
                                    ? 'Password must contain special character'
                                    : !_passwordController.text
                                    .contains(RegExp(r'[0-9]'))
                                    ? 'Password must contain at least one number'
                                    : 'Password secure',
                                style: TextStyle(
                                  color: _passwordController.text.isEmpty
                                      ? Colors.black54
                                      : !_passwordController.text
                                      .contains(RegExp(r'[A-Z]'))
                                      ? Colors.red
                                      : !_passwordController.text.contains(
                                      RegExp(
                                          r'[!@#$%^&*(),.?":{}|<>]'))
                                      ? Colors.red
                                      : !_passwordController.text
                                      .contains(
                                      RegExp(r'[0-9]'))
                                      ? Colors.red
                                      : Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 15,
                        ),
                        FormContainerWidget(
                          controller: _confirmPasswordController,
                          labelText: "Confirm Password",
                          hintText: "Re-enter Password ",
                          isPasswordField: true,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value ?? false;
                                });
                              },
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigate to the login page with fade animation
                                Navigator.push(
                                  context,
                                  FadePageRoute(
                                      builder: (context) => ConditionPage()),
                                );
                              },
                              child: const Text(
                                "I agree to the terms and condition",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            if (isChecked) {
                              _signUp();
                            } else {
                              showToast(message: "Please agree to the terms");
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xFF30CBF8),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: isSigningUp
                                  ? const CircularProgressIndicator(
                                  color: Colors.white)
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
                                // Navigate to the login page with fade animation
                                Navigator.push(
                                  context,
                                  FadePageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget middleInitialField({
    required TextEditingController controller,
    required String labelText,
    required String hintText,
    required bool isPasswordField,
    int? maxLength,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPasswordField,
      maxLength: maxLength,
      textCapitalization: TextCapitalization.characters, // Capitalize all characters
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.deepPurple[50], // Adjust the shade of gray as needed
        counterText: '', // Hides the character count display
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
    String confirmPassword = _confirmPasswordController.text;
    String last_name = _lastNameController.text;
    String first_name = _firstNameController.text;
    String initial = _middleIntController.text;

    if (last_name.isEmpty || first_name.isEmpty) {
      setState(() {
        isSigningUp = false;
      });
      showToast(message: "Please fill in all required fields");
      return;
    }

    // Check if middle initial is provided and validate its format
    if (initial.isNotEmpty && (initial.length != 1 || !initial.contains(RegExp(r'[a-zA-Z]')))) {
      setState(() {
        isSigningUp = false;
      });
      showToast(message: "Middle Initial should be a single letter");
      return;
    }

    if (email.isEmpty || password.isEmpty || studentID.isEmpty) {
      setState(() {
        isSigningUp = false;
      });
      showToast(message: "Please fill in all required fields");
      return;
    }

    if (email.endsWith('@rtu.edu.ph') || email.endsWith('@rtu.edu.ph')) {
      if (password != confirmPassword) {
        setState(() {
          isSigningUp = false;
        });
        showToast(message: "Password and Confirm Password do not match");
        return;
      }


      if (password.length <=5) {
        setState(() {
          isSigningUp = false;
        });
        showToast(message: "Password must be at least 6 characters long");
        return;
      }


      // Check for additional password requirements
      if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#$%^&*(),.?":{}|<>]).{3,}$')
          .hasMatch(password)) {
        setState(() {
          isSigningUp = false;
        });
        showToast(
            message:
            "Password must contain at least one Uppercase, number, and 3 special character");
        return;
      }

      QuerySnapshot emailSnapshot = await FirebaseFirestore.instance
          .collection('students')
          .where('email', isEqualTo: email)
          .get();

      if (emailSnapshot.docs.isNotEmpty) {
        setState(() {
          isSigningUp = false;
        });
        showToast(message: "Email already exists");
        return;
      }

      User? user = await _auth.signUpWithEmailAndPassword(email, password);

      if (user != null) {
        await user.sendEmailVerification();
        showToast(
            message: "Verification email sent. Please verify your email.");

        await saveUserDataToFirestore(studentID, email);

        Navigator.push(
          context,
          FadePageRoute(builder: (context) => VerifyEmailPage()),
        );
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

  Future<void> saveUserDataToFirestore(String studentID, String email) async {
    CollectionReference collRef =
    FirebaseFirestore.instance.collection('students');
    // Use email as the document ID
    await collRef.doc(email).set({
      'email': _emailController.text,
      'student_number': _studentIDController.text,
      'first_name': _firstNameController.text,
      'last_name': _lastNameController.text,
      'middle_initial': _middleIntController.text,
      'confirm_password': _confirmPasswordController.text,
      'password': _passwordController.text,
      'isStudent': true, // Add the isStudent identifier here
    });
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