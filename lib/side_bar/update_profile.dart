import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController middleInitialController = TextEditingController();
  String studentNumber = ""; // Store student number here
  final _formKey = GlobalKey<FormState>(); // Form key for validation

  @override
  void initState() {
    super.initState();
    fetchStudentData();
  }

  fetchStudentData() async {
    // Get current user's email
    String? userEmail = FirebaseAuth.instance.currentUser?.email;

    if (userEmail != null) {
      // Query Firestore to get student number based on email
      QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
          .collection('students')
          .where('email', isEqualTo: userEmail)
          .get();

      if (snapshot.docs.isNotEmpty) {
        // If document is found, extract student number
        setState(() {
          studentNumber = snapshot.docs.first['student_number'];
          firstNameController.text = snapshot.docs.first['first_name'];
          lastNameController.text = snapshot.docs.first['last_name'];
          middleInitialController.text = snapshot.docs.first['middle_initial'] ?? ''; // If middle initial is not present, default to empty string
        });
      } else {
        // Handle the case when no document is found
        print("Document not found");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CodeX'),
        titleTextStyle: TextStyle(
          color: Color(0xFF0C356A),
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Color(0xFFDCF2F1),
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFDCF2F1), Color(0xFFDCF2F1)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Form(
            key: _formKey, // Assigning form key
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: firstNameController,
                  decoration: InputDecoration(labelText: 'First Name'),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your first name';
                    }
                    if (!RegExp(r"^[a-zA-Z',\s]*$").hasMatch(value)) {
                      return 'Please enter only letters, spaces, or characters like \' and ,';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: lastNameController,
                  decoration: InputDecoration(labelText: 'Last Name'),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your last name';
                    }
                    if (!RegExp(r"^[a-zA-Z',\s]*$").hasMatch(value)) {
                      return 'Please enter only letters, spaces, or characters like \' and ,';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: middleInitialController,
                  decoration: InputDecoration(labelText: 'Middle Initial'),
                  maxLength: 1,
                  validator: (value) {
                    if (!RegExp(r'^[a-zA-Z]*$').hasMatch(value ?? '')) {
                      return 'Please enter only one letter';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      updateProfile();
                    }
                  },
                  child: Text('Update Profile'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  updateProfile() async {
    String updatedFirstName = firstNameController.text;
    String updatedLastName = lastNameController.text;
    String updatedMiddleInitial = middleInitialController.text;

    // Query Firestore to get the document ID based on student number
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
        .collection('students')
        .where('student_number', isEqualTo: studentNumber)
        .get();

    if (snapshot.docs.isNotEmpty) {
      // If document is found, extract the first document ID
      String docId = snapshot.docs.first.id;

      // Update the data in Firestore
      await FirebaseFirestore.instance.collection('students').doc(docId).update({
        'first_name': updatedFirstName,
        'last_name': updatedLastName,
        'middle_initial': updatedMiddleInitial,
      });

      // Update user's name in the 'scores' collection
      await FirebaseFirestore.instance.collection('scores')
          .where('userEmail', isEqualTo: FirebaseAuth.instance.currentUser?.email)
          .get()
          .then((querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          doc.reference.update({
            'firstName': updatedFirstName,
            'lastName': updatedLastName,
          });
        });
      });

      Fluttertoast.showToast(
        msg: 'Profile Updated Successfully',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else {
      // Handle the case when no document is found
      Fluttertoast.showToast(
        msg: 'Student Number not found',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
