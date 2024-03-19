import 'package:first_project/side_bar/update_profile.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AboutProfile extends StatefulWidget {
  @override
  _AboutProfileState createState() => _AboutProfileState();
}

class _AboutProfileState extends State<AboutProfile> {
  Map<String, dynamic> userData = {};

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    // Get current user's email
    String? userEmail = FirebaseAuth.instance.currentUser?.email;

    if (userEmail != null) {
      QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
          .instance
          .collection('students')
          .where('email', isEqualTo: userEmail)
          .get();

      if (snapshot.docs.isNotEmpty) {
        setState(() {
          userData = snapshot.docs.first.data();
        });
      } else {
        print("Document not found");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            _buildProfileField('Last Name:                  ', userData['last_name'] ?? '---'),
            _buildProfileField('First Name:                 ', userData['first_name'] ?? '---'),
            _buildProfileField('Middle Initial:             ', userData['middle_initial'] ?? '---'),
            _buildProfileField('Selected Teacher:     ', userData['selected_teacher'] ?? '---'),
            _buildProfileField('Year Level:                 ', userData['year_level'] != null ? userData['year_level'].toString() : '------'),
            _buildProfileField('Section:                      ', userData['section'] ?? '---'),
            _buildProfileField('Student Number:      ', userData['student_number'] ?? '---', color: Colors.green),
            _buildProfileField('Email:                         ', FirebaseAuth.instance.currentUser?.email ?? '---', color: Colors.green),
            SizedBox(height: 20),
            Center( // Centering the button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateProfile(updateProfileData: (data) {
                      // Handle updated profile data if needed
                    })),
                  );
                },
                child: Text('Update Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileField(String label, String value, {Color color = Colors.blue}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
        color: color, // Set the color here
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 16, color: Colors.white), // Change text color to white for visibility
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
