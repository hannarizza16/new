import 'package:flutter/material.dart';
import '../gradient_background.dart';
import 'questions.dart'; // Import your questions class here
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QuizDetailsScreen extends StatelessWidget {
  final List<QuizQuestion>? questions; // Make it nullable
  final List<int> userAnswers;

  const QuizDetailsScreen({
    Key? key,
    required this.questions,
    required this.userAnswers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Details'),
      ),
      body: Stack(
        children: [
          _buildQuizDetails(),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton.extended(
              onPressed: () {
                _sendEmail(context);
              },
              label: Text('Send a copy'),
              icon: Icon(Icons.email),
            ),
          ),
        ],
      ),
    );
  }

  // Function to send email
  void _sendEmail(BuildContext context) async {
    String? currentUserEmail = FirebaseAuth.instance.currentUser?.email;
    if (currentUserEmail != null) {
      String username = 'rtucodecultivator@gmail.com'; // Your Gmail username
      String password = 'rhcl ucqa jqae tdmu'; // Your Gmail password

      final smtpServer = gmail(username, password);

      final message = Message()
        ..from = Address(username)
        ..recipients.add(currentUserEmail) // Add recipient's email
        ..subject = 'Quiz Result'
        ..text = _buildEmailContent(context); // Compose email content

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Send Email?'),
            content: Text('Do you want to send the quiz details to your email?'),
            actions: <Widget>[
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                  try {
                    final sendReport = await send(message, smtpServer);
                    print('Message sent: $sendReport');

                    // Show a pop-up message indicating successful email sending
                    Fluttertoast.showToast(
                      msg: "Quiz details have been sent to your email!",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 3,
                      backgroundColor: Colors.black87,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  } catch (e) {
                    print('Error occurred while sending email: $e');
                  }
                },
                child: Text('Yes'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('No'),
              ),
            ],
          );
        },
      );
    } else {
      print('User is not logged in.'); // Handle case where user is not logged in
    }
  }

  // Function to build quiz details
  Widget _buildQuizDetails() {
    return Stack(
      children: [
        GradientContainer(), // Add GradientContainer as background
        ListView.builder(
          itemCount: questions!.length, // Use null assertion operator (!)
          itemBuilder: (context, index) {
            // Get the correct answer choice
            String correctAnswer = questions![index].answerChoices
                .where((choice) => choice.isCorrect)
                .first
                .text;

            // Get the user's answer choice
            String userAnswer = questions![index]
                .answerChoices[userAnswers[index]]
                .text;

            return Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Card(
                color: Colors.lightBlue[100],
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Question ${index + 1}:\n${questions![index].questionText}'),
                            SizedBox(height: 8),
                            Text(
                              '\nCorrect Answer:\n$correctAnswer',
                              style: TextStyle(color: Colors.deepPurpleAccent),
                            ),
                            Text(
                              '\nYour Answer:\n$userAnswer',
                              style: TextStyle(
                                color: userAnswers[index] == questions![index].answerChoices.indexWhere((choice) => choice.isCorrect)
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        userAnswers[index] == questions![index].answerChoices.indexWhere((choice) => choice.isCorrect)
                            ? Icons.check
                            : Icons.close,
                        color: userAnswers[index] == questions![index].answerChoices.indexWhere((choice) => choice.isCorrect)
                            ? Colors.green
                            : Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  // Function to build email content based on UI elements
  String _buildEmailContent(BuildContext context) {
    String emailContent = 'Here is your quiz result: For additional information, please check your record page on the Codex app.\n\n';
    // Append quiz details
    for (int i = 0; i < questions!.length; i++) {
      String correctAnswer = questions![i].answerChoices
          .where((choice) => choice.isCorrect)
          .first
          .text;

      String userAnswer = questions![i]
          .answerChoices[userAnswers[i]]
          .text;

      emailContent += 'Question ${i + 1}:\n${questions![i].questionText}\n';
      emailContent += '\nCorrect Answer:\n$correctAnswer\n';
      emailContent += 'Your Answer:\n$userAnswer\n\n';
    }
    // Append other UI elements if needed
    return emailContent;
  }
}