import 'package:flutter/material.dart';

import 'questions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../firebase/features/user_auth/presentation/pages/home_page.dart';

class ResultScreen extends StatefulWidget {
  final List<QuizQuestion> questions;
  final List<int> userAnswers;
  final String category;
  final String expertise;

  ResultScreen({
    required this.questions,
    required this.userAnswers,
    required this.category,
    required this.expertise,
  });

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat(reverse: true);
    _animation = ColorTween(
      begin: Color(0xFFDCF2F1),
      end: Color(0xFFDCF2F1),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int correctAnswers = 0;
    List<int> wrongQuestions = [];

    for (int i = 0; i < widget.questions.length; i++) {
      if (widget.userAnswers[i] ==
          widget.questions[i].answerChoices
              .indexWhere((choice) => choice.isCorrect)) {
        correctAnswers++;
      } else {
        wrongQuestions.add(i + 1); // Question numbers start from 1, not 0
      }
    }

    // Get the currently logged-in user's email
    String? userEmail = FirebaseAuth.instance.currentUser?.email;

    // Save the score to Firebase
    if (userEmail != null) {
      _saveScoreToFirebase(correctAnswers, widget.questions.length, userEmail,
          widget.category, widget.expertise);
    }

    // Determine the motivating quote based on the score
    String motivatingQuote = '';
    if (correctAnswers == widget.questions.length) {
      motivatingQuote =
          "Congratulations! Achieving a perfect score is a testament to your dedication and knowledge. It's not just a victory; it's a milestone in your journey of continuous learning.";
    } else if (correctAnswers >= widget.questions.length - 10) {
      motivatingQuote =
          "You did great! Success is not just about the destination; it's about the journey. Your commitment and effort are evident in your performance.";
    } else if (correctAnswers >= widget.questions.length - 15) {
      motivatingQuote =
          "You are doing exceptionally well! Your dedication to learning shines through your remarkable performance. Keep up the excellent work!";
    } else {
      motivatingQuote =
          "Don't be discouraged by a low score. Every mistake is a step towards learning and improvement. Keep pushing yourself, and success will follow!";
    }

    return WillPopScope(
        onWillPop: () async {
          // Handle the back button press
          _showExitConfirmationDialog(context);
          return false;
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text('Quiz Result',
                  style: TextStyle(color: Color(0xFF06283D))),
              backgroundColor: Color(0xFFDCF2F1),
            ),
            body: Stack(children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          _animation.value ?? Color(0xFF85F4FF),
                          Color(0xFFC5FFF8),
                          _animation.value ?? Color(0xFF85F4FF),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Your Score: $correctAnswers / ${widget.questions.length}',
                                    style: TextStyle(
                                        fontSize: 30, color: Color(0xFF0C356A)),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 20),
                                  if (wrongQuestions.isNotEmpty)
                                    Center(
                                      child: Text(
                                        'Incorrect Answers in Question: \n${wrongQuestions.join(', ')}',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.red,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  SizedBox(height: 20),
                                  Text(
                                    motivatingQuote,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFF0C356A),
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              Positioned.fill(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/confetti.gif',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        'assets/fireworks.gif',
                        fit: BoxFit.contain,
                        height: 250, // Adjust the height as needed
                      ),
                    ),
                  ],
                ),
              ),
            ])));
  }

  void _saveScoreToFirebase(int score, int totalQuestions, String userEmail,
      String category, String expertise) async {
    // Get a reference to the Firestore database
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      // Fetch user details from the 'students' collection based on email
      QuerySnapshot userQuery = await firestore
          .collection('students')
          .where('email', isEqualTo: userEmail)
          .get();

      if (userQuery.docs.isNotEmpty) {
        String firstName = userQuery.docs.first['first_name'];
        String lastName = userQuery.docs.first['last_name'];

        // Add a new document with a generated ID
        await firestore.collection('scores').add({
          'score': score,
          'totalQuestions': totalQuestions,
          'userEmail': userEmail,
          'firstName': firstName,
          'lastName': lastName,
          'category': category,
          'expertise': expertise,
          'timestamp': DateTime.now(),
        });
        print("Score added to Firebase: $score");
      } else {
        print(
            "User with email $userEmail not found in the 'students' collection.");
      }
    } catch (error) {
      print(
          "Failed to retrieve user information or add score to Firebase: $error");
    }
  }

  void _showExitConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Exit'),
          content: Text('Are you sure you want to exit?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Navigate back to the expertise level selection screen
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainHomePage(),
                  ),
                  (route) => false, // This line clears the navigation stack
                );
              },
              child: Text('Exit'),
            ),
          ],
        );
      },
    );
  }
}
