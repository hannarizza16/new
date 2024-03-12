import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';




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
      }
    } else {
    }
  }

  void _fetchUserTotalScore() {
    String? currentUserEmail = FirebaseAuth.instance.currentUser?.email;

    if (currentUserEmail != null) {
      CollectionReference scores =
      FirebaseFirestore.instance.collection('scores');

      scores.where('userEmail', isEqualTo: currentUserEmail).snapshots().listen(
              (snapshot) {
            int totalScore = 0;
            for (var doc in snapshot.docs) {
              int score = (doc['score'] ?? 0).toInt(); // Cast to int
              totalScore += score;
            }
            setState(() {
              _totalScore = totalScore;
            });
          }, onError: (error) {
      });
    } else {
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
        setState(() async {
          _image = await DefaultCacheManager().getSingleFile(cachedImageURL);

        });
      } else {
        try {
          String fileName = currentUserEmail;
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
        }
      }
    } else {
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
      }
    });
  }

  Future<void> uploadImageToFirebaseStorage() async {
    String? currentUserEmail = FirebaseAuth.instance.currentUser?.email;

    if (currentUserEmail != null && _image != null) {
      String fileName = currentUserEmail;
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
  //
  // // Define the updateProfileData function
  // void updateProfileData(Map<String, dynamic> updatedData) {
  //   // Implement the logic to update the profile data here
  //   // For example, you can update the name displayed in the sidebar
  //   setState(() {
  //     _firstName = updatedData['first_name'];
  //     _middleInitial = updatedData['middle_initial'];
  //     _lastName = updatedData['last_name'];
  //     _nameController.text = '$_firstName $_middleInitial. $_lastName';
  //     //
  //   });
  // }

  Future<void> updateProfileImageURL(String imageURL) async {
    String? userId = FirebaseAuth.instance.currentUser!.uid;
    DocumentReference userRef =
    FirebaseFirestore.instance.collection('students').doc(userId);

    await userRef.update({'profile_image_url': imageURL});

  }


  void updateProfileData(Map<String, dynamic> updatedData) {
    setState(() {
      _firstName = updatedData['first_name'];
      _middleInitial = updatedData['middle_initial'];
      _lastName = updatedData['last_name'];
      _nameController.text = '$_firstName $_middleInitial. $_lastName';
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.2, // Specify the opacity value here (0.0 - 1.0)
                child: Image.asset(
                  'assets/overlay/2.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                buildTop(),
                buildContent(),
                buildColumn(context, _totalScore),
                secondColumn(context, _totalScore),
                thirdColumn(context, _totalScore),
              ],
            ),
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
    height: 150,
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.5),
      image: DecorationImage(
        image: AssetImage(
            'assets/banner.png'), // Replace 'your_image_asset.png' with your actual image asset path
        fit: BoxFit.cover,
        alignment: FractionalOffset(0.2, 0.6),
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
        height: 190,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Colors.blue, width: 2),
        ),
        child: CircleAvatar(
          radius: profileHeight * 0.4, // Adjusted size here
          backgroundImage: _image != null ? FileImage(_image!) : null,
          child: _image == null
              ? Icon(Icons.person, size: profileHeight * 0.6, color: Colors.grey) // Display default avatar
              : null,
        ),
      ),
      Positioned(
        top: 70,
        bottom: 0,
        right: 0,
        child: Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 15,
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
              // child: Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: NetworkImage(
              //         'https://cdn.vectorstock.com/i/1000x1000/58/09/cosmic-space-black-sky-background-with-blue-stars-vector-11805809.webp',
              //       ),
              //       fit: BoxFit.cover,
              //     ),
              //     borderRadius: BorderRadius.circular(100),
              //   ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(height: 100),
                    BorderedCircleAvatar(
                      imageasset: 'assets/overlay/beg1.png',
                      gifAsset: 'assets/overlay/shine4.gif',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                  'Initiate Explorer: Curiosity Awakens'),
                              content: Text(
                                  'Unlock this badge by achieving a score of 20 or higher on a beginner quiz. Begin your journey of exploration and discovery by answering fundamental questions across various topics.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      userScore: _score, // Condition for changing color
                      requiredScore:
                      20, // Set the required score for returning to natural color
                    ),
                    Row(
                      children: [
                        BorderedCircleAvatar(
                          imageasset: 'assets/overlay/beg2.png',
                          gifAsset: 'assets/overlay/shine4.gif',
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      'Novice Navigator: Seeker of Knowledge'),
                                  content: Text(
                                      'Earn this badge by scoring 50 or above on a beginner quiz. Demonstrate your commitment to learning and expanding your horizons by delving deeper into fundamental concepts and principles.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Close'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          userScore: _score, // Condition for changing color
                          requiredScore:
                          50, // Set the required score for returning to natural color
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BorderedCircleAvatar(
                          imageasset: 'assets/overlay/beg3.png',
                          gifAsset: 'assets/overlay/shine4.gif',
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      'Apprentice Scholar: Learner`s Ascent'),
                                  content: Text(
                                      'Unlock this badge by achieving a score of 70 or more on a beginner quiz. Show your dedication to knowledge acquisition and understanding as you progress through foundational topics with confidence.' ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Close'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          userScore: _score, // Condition for changing color
                          requiredScore:
                          70, // Set the required score for returning to natural color
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BorderedCircleAvatar(
                          imageasset: 'assets/overlay/beg4.png',
                          gifAsset: 'assets/overlay/shine4.gif',
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      'Emerging Enthusiast: Knowledge Blossoms'),
                                  content: Text(
                                      'Earn this badge by scoring 80 or above on a beginner quiz. Showcase your growing enthusiasm and proficiency in fundamental areas as you tackle more challenging questions with ease.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Close'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          userScore: _score, // Condition for changing color
                          requiredScore:
                          80, // Set the required score for returning to natural color
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BorderedCircleAvatar(
                          imageasset: 'assets/overlay/beg5.png',
                          gifAsset: 'assets/overlay/shine4.gif',
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      'Aspiring Adept: Path to Proficiency'),
                                  content: Text(
                                      'Unlock this prestigious badge by achieving a score of 100 or higher on a beginner quiz. Demonstrate your commitment to mastering fundamental concepts and laying the groundwork for future learning and growth.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Close'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          userScore: _score, // Condition for changing color
                          requiredScore:
                          100, // Set the required score for returning to natural color
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // )
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
                  // child: Container(
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: NetworkImage(
                  //           'https://cdn.vectorstock.com/i/1000x1000/58/09/cosmic-space-black-sky-background-with-blue-stars-vector-11805809.webp'),
                  //       fit: BoxFit.cover,
                  //     ),
                  //     // borderRadius: BorderRadius.circular(30),
                  //   ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(height: 100),
                        Row(
                          children: [
                            BorderedCircleAvatar(
                              imageasset: 'assets/overlay/interm1.png',
                              gifAsset: 'assets/overlay/shine2.gif',
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                          'Versatile Vanguard: Intermediate Explorer'),
                                      content: Text(
                                          'Unlock this badge by achieving a score of 120 or higher on an intermediate quiz that covers a broad range of topics. Demonstrate your versatility by answering questions across different domains and showcasing a solid foundation of knowledge in various subjects.'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Close'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              userScore:
                              _totalScore, // Pass total score to determine unlock status
                              requiredScore:
                              120, // Set the required score for unlocking this image
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            BorderedCircleAvatar(
                              imageasset: 'assets/overlay/interm2.png',
                              gifAsset: 'assets/overlay/shine2.gif',
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                          'Inquisitive Intellect: Intermediate Scholar'),
                                      content: Text(
                                          'Earn this badge by scoring 150 or above on an intermediate quiz that delves deeper into specific subjects. Show your inquisitive nature by answering questions that require a deeper understanding of concepts within your chosen field or fields.'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Close'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              userScore:
                              _totalScore, // Pass total score to determine unlock status
                              requiredScore:
                              150, // Set the required score for unlocking this image
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            BorderedCircleAvatar(
                              imageasset: 'assets/overlay/interm3.png',
                              gifAsset: 'assets/overlay/shine2.gif',
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                          'Adaptive Achiever: Intermediate Specialist'),
                                      content: Text(
                                          'Unlock this badge by achieving a score of 180 or more on an intermediate quiz that focuses on specialized topics. Showcase your expertise in a particular subject area by answering advanced questions with precision and demonstrating a thorough understanding of the subject matter.'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Close'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              userScore:
                              _totalScore, // Pass total score to determine unlock status
                              requiredScore:
                              180, // Set the required score for unlocking this image
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ))
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
                    // child: Container(
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //         image: NetworkImage(
                    //             'https://cdn.vectorstock.com/i/1000x1000/58/09/cosmic-space-black-sky-background-with-blue-stars-vector-11805809.webp'),
                    //         fit: BoxFit.cover,
                    //       ),
                    //       // borderRadius: BorderRadius.circular(30),
                    //     ),
                    child: Center(
                        child: Row(children: [
                          SizedBox(height: 11),
                          Row(children: [
                            BorderedCircleAvatar(
                              imageasset: 'assets/overlay/advanced1.png',
                              gifAsset: 'assets/overlay/shine3.gif',
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                          'Master of Multifaceted Mastery'),
                                      content: Text(
                                          'Unlock this badge by achieving a score of 200 or higher on an advanced quiz that tests proficiency across multiple disciplines. Show your versatility by answering questions from various fields, demonstrating your ability to apply knowledge across diverse subjects.'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Close'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              userScore:
                              _totalScore, // Pass total score to determine unlock status
                              requiredScore:
                              200, // Set the required score for unlocking this image
                            ),
                            Row(
                              children: [
                                BorderedCircleAvatar(
                                  imageasset: 'assets/overlay/advanced2.png',
                                  gifAsset: 'assets/overlay/shine3.gif',
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text(
                                              'Elite Innovator: Pinnacle Proficiency'),
                                          content: Text(
                                              'Earn this badge by excelling on an advanced quiz with a score of 250 or above. Showcase your innovative thinking and problem-solving skills by tackling challenging questions that require creative solutions and demonstrating mastery in your chosen field.'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('Close'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  userScore:
                                  _totalScore, // Pass total score to determine unlock status
                                  requiredScore:
                                  250, // Set the required score for unlocking this image
                                ),
                                Row(
                                  children: [
                                    BorderedCircleAvatar(
                                      imageasset: 'assets/overlay/advanced3.png',
                                      gifAsset: 'assets/overlay/shine3.gif',
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text(
                                                  'Trailblazer Titan: Boundless Expertise'),
                                              content: Text(
                                                  'Unlock this prestigious badge by achieving a score of 300 or more on an advanced quiz that delves deep into your expertise. Display comprehensive knowledge and leadership by answering complex questions with authority and demonstrating your ability to push the boundaries of your field.'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text('Close'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      userScore:
                                      _totalScore, // Condition for changing color
                                      requiredScore:
                                      300, // Set the required score for returning to natural color
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                        ]))))

          ],
        )
      ]);

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}

class BorderedCircleAvatar extends StatelessWidget {
  final String imageasset;
  final String gifAsset; // Add gif asset path
  final double radius;
  final Color borderColor;
  final int userScore;
  final int requiredScore;
  final double borderWidth;
  final VoidCallback onTap;

  const BorderedCircleAvatar({
    required this.imageasset,
    required this.gifAsset, // Initialize gif asset path
    this.radius = 33,
    this.borderColor = Colors.cyan,
    this.borderWidth = 3.0,
    required this.userScore,
    required this.requiredScore,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool returnToNaturalColor = userScore >= requiredScore;

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
                  ? ColorFilter.mode(Colors.transparent, BlendMode.multiply)
                  : ColorFilter.mode(
                Colors.grey,
                BlendMode.saturation,
              ),
              child: Stack(
                children: [
                  Image.asset(
                    imageasset,
                    fit: BoxFit.cover,
                    width: radius * 2,
                    height: radius * 2,
                  ),
                  if (returnToNaturalColor) // Conditionally render .gif overlay
                    Image.asset(
                      gifAsset,
                      fit: BoxFit.cover,
                      width: radius * 2,
                      height: radius * 2,
                    ),
                ],
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
