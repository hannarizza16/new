// // summary_screen.dart
// import 'package:flutter/material.dart';
//
// class SummaryScreen extends StatelessWidget {
//   final int score;
//   final int totalQuestions;
//   final List<bool> correctAnswers;
//
//   SummaryScreen({required this.score, required this.totalQuestions, required this.correctAnswers});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quiz Summary'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Your Score: $score out of $totalQuestions'),
//             SizedBox(height: 16),
//             Text('Correct Answers:'),
//             for (int i = 0; i < correctAnswers.length; i++)
//               Text(
//                 '${i + 1}. ${correctAnswers[i] ? 'Correct' : 'Incorrect'}',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ElevatedButton(
//               onPressed: () {
//                 // Reset the quiz and navigate back to the quiz screen
//                 Navigator.popUntil(context, ModalRoute.withName('/'));
//               },
//               child: Text('Restart Quiz'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
