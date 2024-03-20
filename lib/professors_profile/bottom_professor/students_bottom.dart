import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/gradient_background.dart';

class StudentBottomScreen extends StatefulWidget {
  @override
  _StudentBottomScreenState createState() => _StudentBottomScreenState();
}

class _StudentBottomScreenState extends State<StudentBottomScreen> {
  String? currentUserEmail = FirebaseAuth.instance.currentUser?.email;
  final List<String> _sections = [
    'All',
    '101P',
    '102P',
    '202P',
    '401P',
    '501P',
    '801P'
  ]; // Add specific sections
  final List<int> _yearLevels = [0, 1, 2, 3, 4]; // Add specific year levels

  String _selectedSection = 'All'; // Default selected section
  int _selectedYearLevel = 0; // Default selected year level

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // Layer 1: Gradient Container
      const GradientContainer(
        child: SizedBox.expand(), // Expand to fill the whole screen
      ),
      // Layer 2: Image

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
      // Layer 2: Image
      // Layer 3: Other Widgets
      Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              'Student List',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 1.5,
              ),
            ),
          ),

          //blue line
          Divider(
            color: Colors.blue,
            thickness: 2.0,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Section:'),
                DropdownButton<String>(
                  value: _selectedSection,
                  onChanged: (value) {
                    setState(() {
                      _selectedSection = value!;
                    });
                  },
                  items: _sections.map((section) {
                    return DropdownMenuItem<String>(
                      value: section,
                      child: Text(section),
                    );
                  }).toList(),
                ),
                Text('Year Level:'),
                DropdownButton<int>(
                  value: _selectedYearLevel,
                  onChanged: (value) {
                    setState(() {
                      _selectedYearLevel = value!;
                      print('Selected Year Level: $_selectedYearLevel');
                    });
                  },
                  items: _yearLevels.map((yearLevel) {
                    return DropdownMenuItem<int>(
                      value: yearLevel,
                      child:
                          Text(yearLevel == 0 ? 'All' : yearLevel.toString()),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _selectedSection == 'All' && _selectedYearLevel == 0
                  ? FirebaseFirestore.instance
                      .collection('students')
                      .where('selected_teacher', isEqualTo: currentUserEmail)
                      .orderBy('last_name') // Sort by last name
                      .snapshots()
                  : _selectedSection == 'All'
                      ? FirebaseFirestore.instance
                          .collection('students')
                          .where('selected_teacher',
                              isEqualTo: currentUserEmail)
                          .where('year_level', isEqualTo: _selectedYearLevel)
                          .orderBy('last_name') // Sort by last name
                          .snapshots()
                      : _selectedYearLevel == 0
                          ? FirebaseFirestore.instance
                              .collection('students')
                              .where('selected_teacher',
                                  isEqualTo: currentUserEmail)
                              .where('section', isEqualTo: _selectedSection)
                              .orderBy('last_name') // Sort by last name
                              .snapshots()
                          : FirebaseFirestore.instance
                              .collection('students')
                              .where('selected_teacher',
                                  isEqualTo: currentUserEmail)
                              .where('section', isEqualTo: _selectedSection)
                              .where('year_level',
                                  isEqualTo: _selectedYearLevel)
                              .orderBy('last_name') // Sort by last name
                              .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
                  return Center(child: Text('No students found'));
                }
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var studentData = snapshot.data!.docs[index];
                    return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),

                        child: ListTile(

                          //white container design
                            title: Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ), // changes position of shadow


                                child: Row(children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            'Name: ${studentData['last_name']}, ${studentData['first_name']} ${studentData['middle_initial'] ?? ''}.'),
                                        SizedBox(height: 4),
                                        Text(
                                            'Student Number: ${studentData['student_number']}'),
                                        Text(
                                            'Year Level: ${studentData['year_level']}'),
                                        Text(
                                            'Section: ${studentData['section']}'),
                                        Text('Email: ${studentData['email']}'),
                                      ],
                                    ),
                                  ),


                                  SizedBox(width: 10),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors
                                            .transparent, // You can change the color here
                                      ),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            _showDeleteConfirmationDialog(
                                              context,
                                              studentData['last_name'],
                                              studentData['first_name'],
                                              studentData['middle_initial'] ??
                                                  '',
                                              studentData, // passing of studentData
                                            );
                                          },
                                          child: Text('Unenroll',
                                              style: TextStyle(
                                                color: Colors.red,
                                              )),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .transparent, // Remove button background color
                                            elevation:
                                                0, // Remove button elevation
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical:
                                                    8), // Adjust button padding
                                          )
                                      )
                                  )
                                ]))));
                  },
                );
              },
            ),
          ),
        ],
      ),
    ]));
  }
}

void _showDeleteConfirmationDialog(BuildContext context, String lastName,
    String firstName, String middleInitial, DocumentSnapshot studentData) {
  // passing this as a parameter since it is called in list tile DocumentSnapshot studentData and retrieved the data from the list builder.
  showDialog(
    context: context,
    builder: (BuildContext context) {
      String fullName =
          '$lastName, $firstName ${middleInitial.isNotEmpty ? middleInitial + '.' : ''}';

      return  AlertDialog(
        title: Text('Unenroll Student'),
        content: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(text: 'Are you sure you want to unenroll\n'),
              TextSpan(
                text: '$fullName',
                style:
                    TextStyle(color: Colors.red), //fontWeight: FontWeight.bold,
              ),
              TextSpan(text: '?')
            ],
          ),
        ),

        //style
        actions: <Widget>[
          TextButton(
            child: Text('Cancel', style: TextStyle(color: Colors.black) ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('Yes', style: TextStyle(color: Colors.red)),
            onPressed: () {
              Navigator.of(context).pop(); // Close current dialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Confirmation'),
                    content: Text('Are you sure?'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Cancel', style: TextStyle(color: Colors.black)),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),

                      //condition
                      TextButton(
                        child: Text('Unenroll', style: TextStyle(color: Colors.red)),
                        onPressed: () {

                          // Clear the selected_teacher field
                          FirebaseFirestore.instance
                              .collection('students')
                              .doc(studentData.id)
                              .update({'selected_teacher': null}).then((_) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content:
                                      Text('Student unenrolled successfully')),
                            );
                            Navigator.of(context).pop(); // Close current dialog
                          }).catchError((error) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Failed to unenroll student: $error')),
                            );
                          });
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      );
    },
  );
}
