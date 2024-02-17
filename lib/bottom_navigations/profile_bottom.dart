import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ProfilePicture(
            name: 'Aditya Dharmawan Saputra',
            radius: 31,
            fontsize: 21,
            img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
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
