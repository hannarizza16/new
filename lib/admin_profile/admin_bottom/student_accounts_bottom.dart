import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Add this import

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
            child: SizedBox.expand(),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/overlay/2.jpg',
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

class AdminBottomStudentAccount extends StatefulWidget {
  @override
  _AdminBottomStudentAccountState createState() => _AdminBottomStudentAccountState();
}

class _AdminBottomStudentAccountState extends State<AdminBottomStudentAccount> {
  String? _selectedSection = 'All'; // Set 'All' as default filter

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: _selectedSection,
          onChanged: (String? newValue) {
            setState(() {
              _selectedSection = newValue;
            });
          },
          items: <String>['All', '101P', '102P'] // Add more sections as needed
              .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
          )
              .toList(),
        ),
        Expanded(
          child: StreamBuilder(
            stream: _selectedSection == 'All'
                ? FirebaseFirestore.instance.collection('students').snapshots()
                : FirebaseFirestore.instance
                .collection('students')
                .where('section', isEqualTo: _selectedSection)
                .snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return Center(
                  child: Text('No data in the database detected'),
                );
              }

              return ListView(
                children: snapshot.data!.docs.map((document) {
                  final Map<String, dynamic>? data = document.data() as Map<String, dynamic>?; // Explicit cast
                  if (data != null && data.containsKey('section')) { // Check if 'section' field exists
                    return ListTile(
                      title: Text(
                        '${data['last_name'] ?? ""}, ${data['first_name']} ${data['middle_initial'] ?? ""}',
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Student Number: ${data['student_number']}'),
                          Text('Section: ${data['section'] ?? ""}'),
                          Text('Year Level: ${data['year_level'] ?? ""}'),
                          Text('Selected Teacher: ${data['selected_teacher'] ?? ""}'),
                          Text('Email: ${data['email'] ?? ""}'),
                          InkWell(
                            onTap: () async {
                              final email = data['email'];
                              // Show dialog box for password input
                              final bool success = await _showPasswordDialog(context);
                              if (success) {
                                // Show confirmation dialog
                                final bool confirmDelete = await _showConfirmationDialog(context);
                                if (confirmDelete) {
                                  // Delete documents from Firestore
                                  await _deleteUserData(email);
                                  // Delete email from Authentication
                                  FirebaseAuth.instance.currentUser!.delete(); // This will delete the currently signed-in user
                                }
                              }
                            },
                            child: Text(
                              'Delete', // Make 'Delete' clickable
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Handle case when 'section' field doesn't exist
                    return ListTile(
                      title: Text('Document doesn\'t contain "section" field'),
                    );
                  }
                }).toList(),
              );

            },
          ),
        ),
      ],
    );
  }

  Future<void> _deleteUserData(String email) async {
    final studentDocs = await FirebaseFirestore.instance
        .collection('students')
        .where('email', isEqualTo: email)
        .get();
    final scoreDocs = await FirebaseFirestore.instance
        .collection('scores')
        .where('userEmail', isEqualTo: email) // Adjust field name as per your collection
        .get();

    final batch = FirebaseFirestore.instance.batch();
    for (final doc in studentDocs.docs) {
      batch.delete(doc.reference);
    }
    for (final doc in scoreDocs.docs) {
      batch.delete(doc.reference);
    }
    await batch.commit();
  }

  Future<bool> _showPasswordDialog(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) {
        String? enteredPassword;
        return AlertDialog(
          title: Text('Enter Password'),
          content: TextField(
            onChanged: (value) {
              enteredPassword = value;
            },
            obscureText: true,
            decoration: InputDecoration(hintText: 'Password'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false); // Return false if cancel button is pressed
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                // Perform password validation here, for demonstration, just compare with a hard-coded password
                if (enteredPassword == 'adminpassword') {
                  Navigator.of(context).pop(true); // Return true if entered password is correct
                } else {
                  // Show error message if password is incorrect
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Invalid password'),
                    ),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    ) ?? false; // Return false if dialog is dismissed
  }

  Future<bool> _showConfirmationDialog(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirm Deletion'),
          content: Text('Are you sure you want to delete this data?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false); // Return false if cancel button is pressed
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true); // Return true if confirm button is pressed
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    ) ?? false; // Return false if dialog is dismissed
  }
}
