import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double coverHeight = 100;
  final double profileHeight = 100;

  TextEditingController _nameController = TextEditingController();
  String _firstName = '';
  String _middleInitial = '';
  String _lastName = '';
  String _studentNumber = '';
  File? _image;

  @override
  void initState() {
    super.initState();
    _nameController.text = '$_firstName $_middleInitial $_lastName';
    // Ito ang pagkuha ng pangalan mula sa Firestore dito sa initState
    _fetchNameFromFirestore();
  }

  // I-update ang pangalan ng gumagamit mula sa Firestore
  void _fetchNameFromFirestore() async {
    // Kunin ang kasalukuyang email address ng gumagamit mula sa Firebase Auth
    String? currentUserEmail = FirebaseAuth.instance.currentUser?.email;

    // Siguraduhing may kasalukuyang user at may email address ito
    if (currentUserEmail != null) {
      // Reference sa collection na may mga user profiles
      CollectionReference users = FirebaseFirestore.instance.collection('students');

      try {
        // Query para kunin ang pangalan batay sa email address
        QuerySnapshot querySnapshot = await users.where('email', isEqualTo: currentUserEmail).get();

        // Kung may natagpuang resulta, i-update ang pangalan
        if (querySnapshot.docs.isNotEmpty) {
          setState(() {
            _firstName = querySnapshot.docs.first['first_name']; // Kunin ang first name mula sa Firestore
            _middleInitial = querySnapshot.docs.first['middle_initial']; // Kunin ang middle initial mula sa Firestore
            _lastName = querySnapshot.docs.first['last_name']; // Kunin ang last name mula sa Firestore
            _studentNumber = querySnapshot.docs.first['student_number']; // Kunin ang student number mula sa Firestore
            _nameController.text = '$_firstName $_middleInitial. $_lastName'; // I-set ang pangalan sa text field
          });
        }
      } catch (e) {
        print('Error fetching name: $e');
      }
    } else {
      print('No current user or user email found.');
    }
  }

  Future getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          buildTop(),
          buildContent(),
          buildColumn(context),
          secondColumn(context),
          thirdColumn(context),

        ],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: GestureDetector(
            onTap: getImage,
            child: buildProfileImage(),
          ),
        ),
      ],
    );
  }

  Widget buildContent() => Column(
    children: [
      const SizedBox(height: 2),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _firstName,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(width: 5),
          Text(
            _middleInitial + '.',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(width: 5),
          Text(
            _lastName,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],
      ),
      SizedBox(height: 5),
      Text(
        '$_studentNumber',
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    ],
  );

  Widget buildCoverImage() => Container(
    width: double.infinity,
    height: coverHeight,
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.5),
      image: DecorationImage(
        image: NetworkImage('https://picsum.photos/seed/496/600'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.white.withOpacity(0.3),
          BlendMode.srcOver,
        ),
      ),
    ),
  );

  Widget buildProfileImage() => Container(
    width: profileHeight,
    height: profileHeight,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(color: Colors.white, width: 3),
    ),
    child: _image != null
        ? CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: FileImage(_image!),
    )
        : CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: NetworkImage('https://picsum.photos/seed/532/600'),
    ),
  );

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}

Widget buildColumn(BuildContext context) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Beginner',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),
    Stack(
      alignment: Alignment.center,
      children: [
        // Add any other content here
        // This container will be above the SingleChildScrollView
        Container(
          width: double.infinity,
          height: 100, // Adjust the height as needed
          // Add any other decoration or content for the foreground
        ),
        // This SingleChildScrollView will act as the background
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context)
                  .size
                  .width, // Set minimum width to screen width
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://cdn.vectorstock.com/i/1000x1000/58/09/cosmic-space-black-sky-background-with-blue-stars-vector-11805809.webp',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(height: 100),
                    BorderedCircleAvatar(
                      imageUrl: 'https://picsum.photos/seed/532/600',
                      onTap: () {
                        // Handle the tap event here
                        print('Image tapped!');
                      },
                    ),
                    Row(
                      children: [
                        BorderedCircleAvatar(
                          imageUrl: '',
                          onTap: () {
                            // Handle the tap event here
                            print('Image tapped!');
                            // Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BorderedCircleAvatar(
                          imageUrl: '',
                          onTap: () {
                            // Handle the tap event here
                            print('Image tapped!');
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BorderedCircleAvatar(
                          imageUrl: '',
                          onTap: () {
                            // Handle the tap event here
                            print('Image tapped!');
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BorderedCircleAvatar(
                          imageUrl: '',
                          onTap: () {
                            // Handle the tap event here
                            print('Image tapped!');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ),
  ],
);

Widget secondColumn(BuildContext context) =>
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 8.0),
        child: Text(
          'Intermediate',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 100,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.vectorstock.com/i/1000x1000/58/09/cosmic-space-black-sky-background-with-blue-stars-vector-11805809.webp'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(height: 100),
                          Row(
                            children: [
                              BorderedCircleAvatar(
                                imageUrl: '',
                                onTap: () {
                                  // Handle the tap event here
                                  print('Image tapped!');
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              BorderedCircleAvatar(
                                imageUrl: '',
                                onTap: () {
                                  // Handle the tap event here
                                  print('Image tapped!');
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              BorderedCircleAvatar(
                                imageUrl: '',
                                onTap: () {
                                  // Handle the tap event here
                                  print('Image tapped!');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )))
        ],
      )
    ]);

Widget thirdColumn(BuildContext context) =>
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 8.0),
        child: Text(
          'Intermediate',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 100,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.vectorstock.com/i/1000x1000/58/09/cosmic-space-black-sky-background-with-blue-stars-vector-11805809.webp'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(height: 100),
                          Row(
                            children: [
                              BorderedCircleAvatar(
                                imageUrl: '',
                                onTap: () {
                                  // Handle the tap event here
                                  print('Image tapped!');
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              BorderedCircleAvatar(
                                imageUrl: '',
                                onTap: () {
                                  // Handle the tap event here
                                  print('Image tapped!');
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              BorderedCircleAvatar(
                                imageUrl: '',
                                onTap: () {
                                  // Handle the tap event here
                                  print('Image tapped!');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )))
        ],
      )
    ]);


class BorderedCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final Color borderColor;
  final double borderWidth;
  final VoidCallback onTap;

  const BorderedCircleAvatar({
    required this.imageUrl,
    this.radius = 30,
    this.borderColor = Colors.white,
    this.borderWidth = 3.0,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 9.0, bottom: 9.0, left: 15, right: 15),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: borderColor, width: borderWidth),
            ),
            child: CircleAvatar(
              radius: radius,
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
        ));
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}
