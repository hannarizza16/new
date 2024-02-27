import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../gradient_background.dart';

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
  int _totalScore = 0;

  @override
  void initState() {
    super.initState();
    _nameController.text = '$_firstName $_middleInitial $_lastName';
    _fetchNameFromFirestore();
    _fetchUserTotalScore(); // Call the function to fetch user's total score
    loadProfileImage();
    print('Current email login: ${FirebaseAuth.instance.currentUser?.email}');

  }

  void _fetchNameFromFirestore() async {
    String? currentUserEmail = FirebaseAuth.instance.currentUser?.email;

    if (currentUserEmail != null) {
      CollectionReference users =
      FirebaseFirestore.instance.collection('students');

      try {
        QuerySnapshot querySnapshot =
        await users.where('email', isEqualTo: currentUserEmail).get();

        if (querySnapshot.docs.isNotEmpty) {
          setState(() {
            _firstName = querySnapshot.docs.first['first_name'];
            _middleInitial = querySnapshot.docs.first['middle_initial'];
            _lastName = querySnapshot.docs.first['last_name'];
            _studentNumber = querySnapshot.docs.first['student_number'];
            _nameController.text = '$_firstName $_middleInitial. $_lastName';
          });
          // Load ng profile image URL galing sa Firestore
          loadProfileImage();
        }
      } catch (e) {
        print('Error fetching name: $e');
      }
    } else {
      print('No current user or user email found.');
    }
  }
  void _fetchUserTotalScore() {
    String? currentUserEmail = FirebaseAuth.instance.currentUser?.email;

    if (currentUserEmail != null) {
      CollectionReference scores =
      FirebaseFirestore.instance.collection('scores');

      scores
          .where('userEmail', isEqualTo: currentUserEmail)
          .snapshots()
          .listen((snapshot) {
        int totalScore = 0;
        snapshot.docs.forEach((doc) {
          int score = (doc['score'] ?? 0).toInt(); // Cast to int
          totalScore += score;
        });
        setState(() {
          _totalScore = totalScore;
          print('User total score fetched: $_totalScore');
        });
      }, onError: (error) {
        print('Error fetching total score: $error');
      });
    } else {
      print('No current user or user email found.');
    }
  }






  // Function para mag-load ng profile image mula sa Firebase Storage
  void loadProfileImage() async {
    String? currentUserEmail = FirebaseAuth.instance.currentUser?.email;

    if (currentUserEmail != null) {
      String cacheKey = 'profile_image_url_$currentUserEmail';
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? cachedImageURL = prefs.getString(cacheKey);

      if (cachedImageURL != null) {
        setState(() {
          _image = File.fromUri(Uri.parse(cachedImageURL));
        });
      } else {
        try {
          String fileName = currentUserEmail + '_profile_image';
          firebase_storage.Reference storageReference = firebase_storage
              .FirebaseStorage.instance
              .ref()
              .child('profile_images/$fileName');
          String downloadURL = await storageReference.getDownloadURL();
          setState(() {
            _image = File.fromUri(Uri.parse(downloadURL));
          });
          prefs.setString(cacheKey, downloadURL);
        } catch (e) {
          print('Error loading profile image: $e');
        }
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
        // Upload ng larawan sa Firebase Storage pagkatapos pumili ng larawan
        uploadImageToFirebaseStorage(); // Dito dapat walang argumento
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> uploadImageToFirebaseStorage() async {
    String? currentUserEmail = FirebaseAuth.instance.currentUser?.email;

    if (currentUserEmail != null && _image != null) {
      String fileName = currentUserEmail + '_profile_image';
      firebase_storage.Reference storageReference = firebase_storage
          .FirebaseStorage.instance
          .ref()
          .child('profile_images/$fileName');
      firebase_storage.UploadTask uploadTask =
      storageReference.putFile(_image!);

      await uploadTask.whenComplete(() => null);

      // Kapag natapos na ang pag-upload, tawagin ang function para i-update ang profile image URL sa Firestore
      String downloadURL = await storageReference.getDownloadURL();

      SharedPreferences prefs = await SharedPreferences.getInstance();
      String cacheKey = 'profile_image_url_$currentUserEmail';
      prefs.setString(cacheKey, downloadURL);

      updateProfileImageURL(downloadURL);

      // Hindi na natin kailangan i-set ang _image variable dito dahil hindi naman ito ginagamit
    }
  }

  Future<void> updateProfileImageURL(String imageURL) async {
    String? userId = FirebaseAuth.instance.currentUser!.uid;
    DocumentReference userRef =
    FirebaseFirestore.instance.collection('students').doc(userId);

    await userRef.update({'profile_image_url': imageURL});

    print('Profile image URL updated in Firestore');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            buildTop(),
            buildContent(),
            buildColumn(context, _totalScore), // Pass _totalScore to buildColumn
            secondColumn(context, _totalScore), // Pass _totalScore to secondColumn
            thirdColumn(context, _totalScore), // Pass _totalScore to thirdColumn
          ],
        ),
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

  Widget buildProfileImage() => Stack(
    children: [
      Container(
        width: profileHeight,
        height: profileHeight,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: _image != null
            ? CircleAvatar(
          radius: profileHeight / 2,
          backgroundImage: FileImage(_image!),
        )
            : CircleAvatar(
          radius: profileHeight / 2,
        ),
      ),
      if (_image == null)
        Positioned.fill(
          child: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
        ),
    ],
  );


  Widget buildColumn(BuildContext context, int _score) => Column(
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
                  // borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(height: 100),
                      BorderedCircleAvatar(
                        imageUrl: 'https://picsum.photos/seed/592/600',
                        onTap: () {
                          // Handle the tap event here
                          print('sampol');
                        },
                        userScore: _score, // Condition for changing color
                        requiredScore:  0, // Set the required score for returning to natural color

                      ),
                      Row(
                        children: [
                          BorderedCircleAvatar(
                            imageUrl: 'https://picsum.photos/seed/496/600',
                            onTap: () {
                              // Handle the tap event here
                              print('Image tapped!');
                              // Navigator.of(context).pop();
                            },
                            userScore: _score, // Condition for changing color
                            requiredScore: 1, // Set the required score for returning to natural color
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          BorderedCircleAvatar(
                            imageUrl: 'https://picsum.photos/seed/496/600',
                            onTap: () {
                              // Handle the tap event here
                              print('Image tapped!');
                            },
                            userScore: _score, // Condition for changing color
                            requiredScore: 1, // Set the required score for returning to natural color
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          BorderedCircleAvatar(
                            imageUrl: 'https://picsum.photos/seed/496/600',
                            onTap: () {
                              // Handle the tap event here
                              print('Image tapped!');
                            },
                            userScore: _score, // Condition for changing color
                            requiredScore: 1, // Set the required score for returning to natural color
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          BorderedCircleAvatar(
                            imageUrl: 'https://picsum.photos/seed/496/600',
                            onTap: () {
                              // Handle the tap event here
                              print('Image tapped!');
                            },
                            userScore: _score, // Condition for changing color
                            requiredScore: 4, // Set the required score for returning to natural color
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

  Widget secondColumn(BuildContext context, int totalScore) =>
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
                        // borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(height: 100),
                            Row(
                              children: [
                                BorderedCircleAvatar(
                                  imageUrl: 'https://picsum.photos/seed/592/600',
                                  onTap: () {
                                    // Handle the tap event here
                                    print('Sample');
                                  },
                                  userScore: _totalScore, // Pass total score to determine unlock status
                                  requiredScore:10, // Set the required score for unlocking this image
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                BorderedCircleAvatar(
                                  imageUrl: 'https://picsum.photos/seed/592/600',
                                  onTap: () {
                                    // Handle the tap event here
                                    print('Sample');
                                  },
                                  userScore: _totalScore, // Pass total score to determine unlock status
                                  requiredScore: 5, // Set the required score for unlocking this image
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                BorderedCircleAvatar(
                                  imageUrl: 'https://picsum.photos/seed/592/600',
                                  onTap: () {
                                    // Handle the tap event here
                                    print('Sample');
                                  },
                                  userScore: _totalScore, // Pass total score to determine unlock status
                                  requiredScore: 5, // Set the required score for unlocking this image
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

  Widget thirdColumn(BuildContext context, int totalScore) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 8.0),
          child: Text(
            'Advance',
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
                        // borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(height: 11),
                            Row(
                              children: [
                                BorderedCircleAvatar(
                                  imageUrl: 'https://picsum.photos/seed/592/600',
                                  onTap: () {
                                    // Handle the tap event here
                                    print('Sample');
                                  },
                                  userScore: _totalScore, // Pass total score to determine unlock status
                                  requiredScore: 5, // Set the required score for unlocking this image
                                ),
                            Row(
                              children: [BorderedCircleAvatar(
                                imageUrl: 'https://picsum.photos/seed/592/600',
                                onTap: () {
                                  // Handle the tap event here
                                  print('Sample');
                                },
                                userScore: _totalScore, // Pass total score to determine unlock status
                                requiredScore: 5, // Set the required score for unlocking this image
                              ),
                            Row(
                              children: [
                                BorderedCircleAvatar(
                                  imageUrl: 'https://picsum.photos/seed/592/600',
                                  onTap: () {
                                    // Handle the tap event here
                                    print('Sample');
                                  },
                                  userScore: _totalScore, // Pass total score to determine unlock status
                                  requiredScore: 5, // Set the required score for unlocking this image
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    ])))
  ))],
        )
      ]);


  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }


}


class BorderedCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final Color borderColor;
  final int userScore;
  final int requiredScore; // Add a variable to hold the required score for the avatar to return to original color
  final double borderWidth;
  final VoidCallback onTap;

  const BorderedCircleAvatar({
    required this.imageUrl,
    this.radius = 30,
    this.borderColor = Colors.white,
    this.borderWidth = 3.0,
    required this.userScore,
    required this.requiredScore, // Accept the required score as a parameter
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool returnToNaturalColor = userScore >= requiredScore;
    print('User score: $userScore, Required score: $requiredScore, Return to natural color: $returnToNaturalColor'); // Debugging
    return Padding(
      padding: EdgeInsets.only(top: 9.0, bottom: 9.0, left: 15, right: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: borderColor, width: borderWidth),
          ),
          child: ClipOval(
            child: ColorFiltered(
              colorFilter: returnToNaturalColor
                  ? ColorFilter.mode(Colors.transparent, BlendMode.multiply) // Return to natural color
                  : ColorFilter.mode(
                Colors.grey, // Grayscale filter
                BlendMode.saturation,
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: radius * 2, // Set the width to twice the radius to maintain circular shape
                height: radius * 2, // Set the height to twice the radius to maintain circular shape
              ),
            ),
          ),
        ),
      ),
    );
  }
}




void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}