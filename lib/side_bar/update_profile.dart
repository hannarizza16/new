import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpdateProfile extends StatefulWidget {
  final Function(Map<String, dynamic>) updateProfileData;

  const UpdateProfile({Key? key, required this.updateProfileData}) : super(key: key);

  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  bool _isUpdating = false;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController middleInitialController = TextEditingController();
  TextEditingController sectionController = TextEditingController();
  TextEditingController yearLevelController = TextEditingController();
  String studentNumber = ""; // Store student number here
  String? selectedTeacher; // Change to String?
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    fetchStudentData();
  }

  Future<void> fetchStudentData() async {
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
          studentNumber = snapshot.docs.first['student_number'];
          firstNameController.text = snapshot.docs.first['first_name'];
          lastNameController.text = snapshot.docs.first['last_name'];
          middleInitialController.text =
              snapshot.docs.first['middle_initial'] ?? '';
          yearLevelController.text = snapshot.docs.first['year_level'] ?? '';
          selectedTeacher =
          snapshot.docs.first['selected_teacher']; // Update selectedTeacher
        });
      } else {
        print("Document not found");
      }
    }
  }

  Future<List<Map<String, dynamic>>> fetchTeachers() async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
      await FirebaseFirestore.instance.collection('professor_instructor').get();
      List<Map<String, dynamic>> teachers = [];
      querySnapshot.docs.forEach((doc) {
        Map<String, dynamic> teacherData = {
          'id': doc['email'], // Change field name to the appropriate one
          'firstName': doc['first_name'],
          'lastName': doc['last_name'],
        };
        teachers.add(teacherData);
      });
      return teachers;
    } catch (e) {
      print('Error fetching teachers: $e');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: firstNameController,
                  decoration: InputDecoration(labelText: 'First Name'),
                  validator: (value) {
                    if (value == null || value
                        .trim()
                        .isEmpty) {
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
                    if (value == null || value
                        .trim()
                        .isEmpty) {
                      return 'Please enter your last name';
                    }
                    if (!RegExp(r"^[a-zA-Z',\s]*$").hasMatch(value)) {
                      return 'Please enter only letters, spaces, or characters like \' and ,';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: TextFormField(
                    controller: middleInitialController,
                    decoration: InputDecoration(labelText: 'Middle Initial'),
                    maxLength: 1,
                    validator: (value) {
                      if (!RegExp(r'^[a-zA-Z]*$').hasMatch(value ?? '')) {
                        return 'Please enter only one letter';
                      }
                      return null;
                    },
                    textCapitalization: TextCapitalization.characters,
                    // Auto-capitalizes the input
                    keyboardType: TextInputType
                        .text, // Forces the keyboard to use capital letters
                  ),
                ),
                FutureBuilder<List<Map<String, dynamic>>>(
                  future: fetchTeachers(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      List<Map<String, dynamic>> teachers = snapshot.data ?? [];
                      return DropdownButtonFormField<String?>(
                        value: selectedTeacher,
                        onChanged: (value) {
                          setState(() {
                            selectedTeacher = value; // Update selectedTeacher
                          });
                        },
                        items: teachers.map((teacher) {
                          return DropdownMenuItem<String?>(
                            value: teacher['id'],
                            child: Text(
                                '${teacher['lastName']}, ${teacher['firstName']}'),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          labelText: 'Select Teacher',
                        ),
                      );
                    }
                  },
                ),
                TextFormField(
                  controller: yearLevelController,
                  decoration: InputDecoration(labelText: 'Year Level'),
                  validator: (value) {
                    if (value == null || value
                        .trim()
                        .isEmpty) {
                      return 'Please enter your year level';
                    }
                    if (!RegExp(r'^[1-4]$').hasMatch(value)) {
                      return 'Please enter a valid year level (1, 2, 3, or 4)';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[1-4]')),
                    // Allow only 1, 2, 3, or 4
                    LengthLimitingTextInputFormatter(1),
                    // Set max length to 1
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: TextFormField(
                    controller: sectionController,
                    decoration: InputDecoration(labelText: 'Section'),
                    validator: (value) {
                      if (value == null || value
                          .trim()
                          .isEmpty) {
                        return 'Please enter your section';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      sectionController.text = value.toUpperCase();
                      sectionController.selection = TextSelection.fromPosition(
                          TextPosition(offset: sectionController.text.length));
                    },
                    textCapitalization: TextCapitalization.characters,
                  ),
                ),
                const SizedBox(height: 20
                ),
                GestureDetector(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _isUpdating = true;
                      });
                      await updateProfile();
                      setState(() {
                        _isUpdating = false;
                      });
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF30CBF8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: _isUpdating
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text(
                        "Update Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProfile() async {
    String updatedFirstName = firstNameController.text;
    String updatedLastName = lastNameController.text;
    String updatedMiddleInitial = middleInitialController.text;
    String updatedSection = sectionController.text;
    int updatedYearLevel = int.parse(yearLevelController.text);

    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('students')
        .where('student_number', isEqualTo: studentNumber)
        .get();

    if (snapshot.docs.isNotEmpty) {
      String docId = snapshot.docs.first.id;

      await FirebaseFirestore.instance.collection('students').doc(docId).update(
          {
            'first_name': updatedFirstName,
            'last_name': updatedLastName,
            'middle_initial': updatedMiddleInitial,
            'section': updatedSection,
            'selected_teacher': selectedTeacher,
            'year_level': updatedYearLevel,
          });

      // Update credentials in scores database (for leaderboards)
      await FirebaseFirestore.instance.collection('scores')
          .where(
          'userEmail', isEqualTo: FirebaseAuth.instance.currentUser?.email)
          .get()
          .then((querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          doc.reference.update({
            'firstName': updatedFirstName,
            'lastName': updatedLastName,
            'middleInitial': updatedMiddleInitial, // Adding middle initial
            'section': updatedSection, // Adding section
            'yearLevel': updatedYearLevel, // Adding year level
            'selected_teacher': selectedTeacher,
          });
        });
      });

      widget.updateProfileData({
        'first_name': updatedFirstName,
        'last_name': updatedLastName,
        'middle_initial': updatedMiddleInitial,
        'section': updatedSection,
        'selected_teacher': selectedTeacher,
        'year_level': updatedYearLevel,
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

      await Future.delayed(Duration(seconds: 2));
      Navigator.pop(context);
    } else {
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