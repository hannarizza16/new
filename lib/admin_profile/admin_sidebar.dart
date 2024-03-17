import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/extension/sidebar_section_ext.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:first_project/bottom_navigations/profile_bottom.dart';
// import 'package:first_project/firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:first_project/professors_profile/prof_update_profile.dart';
import 'package:first_project/side_bar/about.dart';
import 'package:first_project/side_bar/help.dart';

import '../../../../../enums/enums.dart';
import 'package:first_project/firebase/features/user_auth/presentation/pages/login_page.dart';

class AdminSideBar extends StatefulWidget {
  const AdminSideBar({Key? key}) : super(key: key);

  @override
  _AdminSideBarState createState() => _AdminSideBarState();
}

class _AdminSideBarState extends State<AdminSideBar> {
  late TextEditingController _nameController;
  late String _firstName;
  late String _middleInitial;
  late String _lastName;
  File? _image;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _firstName = '';
    _middleInitial = '';
    _lastName = '';
    _fetchNameFromFirestore();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
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

  void loadProfileImage() async {
    String? currentUserEmail = FirebaseAuth.instance.currentUser?.email;

    if (currentUserEmail != null) {
      String cacheKey = 'profile_image_url_$currentUserEmail';
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? cachedImageURL = prefs.getString(cacheKey);

      if (cachedImageURL != null) {
        setState(() {
          _image = File(cachedImageURL);
        });
      } else {
        try {
          String fileName = currentUserEmail;
          firebase_storage.Reference storageReference = firebase_storage
              .FirebaseStorage.instance
              .ref()
              .child('profile_images/$fileName');
          String downloadURL = await storageReference.getDownloadURL();
          await prefs.setString(cacheKey, downloadURL); // Make sure to await here
          setState(() {
            _image = File.fromUri(Uri.parse(downloadURL));
          });
        } catch (e) {
          print('Error loading profile image: $e');
        }
      }
    } else {
      print('No current user or user email found.');
    }
  }

  Future<void> getImage() async {
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

  Future<String?> _getUserEmail() async {
    // Get the current user
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // If user is not null, return the email
      return user.email;
    } else {
      // If user is null, return null
      return null;
    }
  }

  // Define the updateProfileData function
  void updateProfileData(Map<String, dynamic> updatedData) {
    // Implement the logic to update the profile data here
    // For example, you can update the name displayed in the sidebar
    setState(() {
      _firstName = updatedData['first_name'];
      _middleInitial = updatedData['middle_initial'];
      _lastName = updatedData['last_name'];
      _nameController.text = '$_firstName $_middleInitial. $_lastName';
      //
    });
  }

  void _onItemTapped(BuildContext context, SideBarSection section) {
    switch (section) {
      case SideBarSection.updateProfile:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfUpdateProfile(updateProfileData: updateProfileData,)),
        );
        break;
    // case SideBarSection.about:
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => AboutProfile()),
    //   );
    // case SideBarSection.help:
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => HelpProfile()),
    //   );
      case SideBarSection.logout:
        FirebaseAuth.instance.signOut(); // Sign out the user
        Fluttertoast.showToast(
          msg: "Logged out",
          // Toast message when the user logs out
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0,
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
        break;
      default:
        return; // Handle default case, or add more cases if needed
    }
  }

  TextStyle profileTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    final TextStyle profileTextStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    return Drawer(
      child: FutureBuilder<String?>(
        future: _getUserEmail(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            String userEmail = snapshot.data ?? "No email";
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      UserAccountsDrawerHeader(
                        accountName: Text(
                          _nameController.text,
                          style: profileTextStyle,
                        ),
                        accountEmail: Text(
                          userEmail,
                          style: profileTextStyle,
                        ),
                        currentAccountPicture: CircleAvatar(
                          radius: 50, // Adjust the size here
                          backgroundImage: _image != null ? NetworkImage(_image!.path) : null,
                          child: _image == null
                              ? Icon(Icons.person, size: 50, color: Colors.white) // Display default avatar
                              : null,
                        ),

                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage('assets/overlay/city.gif'),
                            fit: BoxFit.cover,
                            // colorFilter: ColorFilter.mode(
                            //   Colors.white.withOpacity(0.3),
                            //   BlendMode.dstATop,
                            // ),
                          ),
                        ),
                      ),
                      ...SideBarSection.values // this section hides the about, logout, help in the list and left the update profile only
                          .where((section) =>
                      section != SideBarSection.updateProfile &&
                      section != SideBarSection.about &&
                          section != SideBarSection.help &&
                          section != SideBarSection.logout)
                          .map(
                            (section) => ListTile(
                          leading: Icon(section.icon),
                          title: Text(section.text),
                          onTap: () => _onItemTapped(context, section),
                        ),
                      )
                          .toList(),
                    ],
                  ),
                ),
                Container(
                  color: Colors.red, // Set background color to red
                  child: ListTile(
                    leading: Icon(
                      SideBarSection.logout.icon,
                      color: Colors.white, // Set icon color to white
                    ),
                    title: Text(
                      SideBarSection.logout.text,
                      style: TextStyle(
                          color: Colors.white), // Set text color to white
                    ),
                    onTap: () => _onItemTapped(context, SideBarSection.logout),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
