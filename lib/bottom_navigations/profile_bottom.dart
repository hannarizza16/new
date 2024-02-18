import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser!;
    var firstname = FirebaseAuth.instance.currentUser!;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Signed In as',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10,),
          Text(
            user.email!,
            
            style:TextStyle(fontSize: 12, )
          ),

        ],
      ),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  final String name;
  final double radius;
  final double fontsize;
  final String img;

  const ProfilePicture({
    required this.name,
    required this.radius,
    required this.fontsize,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundImage: NetworkImage(img),
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(fontSize: fontsize),
        ),
      ],
    );
  }
}
