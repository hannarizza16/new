import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Add this import

import 'package:first_project/gradient_background.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: AdminBottomStudentAccountScreen(),
  ));
}

class AdminBottomStudentAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientContainer(
            child: SizedBox.expand(), // Expand to fill the whole screen
          ),
          Positioned(
            left: 0, // Align left
            top: 0, // Align top
            right: 0, // Align right
            bottom: 0, // Align bottom
            child: Opacity(
              opacity: 0.2, // Specify the opacity value here (0.0 - 1.0)
              child: Image.asset(
                'assets/overlay/2.jpg', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          AdminBottomStudentAccount(),
        ],
      ),
    );
  }


}
class AdminBottomStudentAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('students').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData || snapshot.data == null) {
          return Center(
            child: CircularProgressIndicator(), // Display a loading indicator
          );
        }

        return ListView(
          children: snapshot.data!.docs.map((document) {
            return ListTile(
              title: Text(
                '${document['last_name'] ?? ""}, ${document['first_name']} ${document['middle_initial'] ?? ""}',
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ //wag mo delete ung naka comment
                  Text('Student Number: ${document['student_number']}'),
                  // Text('Section: ${document['section'] ?? ""}'),
                  // Text('Year Level: ${document['year_level'] ?? ""}'),
                  // Text('Selected Teacher: ${document['selected_teacher'] ?? ""}'),
                  Text('Email: ${document['email'] ?? ""}'),
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
