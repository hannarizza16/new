import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.topCenter, // Align the ProfilePicture widget to the top center
        child: ProfilePicture(
          name: 'Aditya Dharmawan Saputra',
          radius: 40,
          fontsize: 21,
          img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
          backgroundColor: Colors.white60, // Specify the background color
          nameColor: Colors.black,
        ),
      ),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  final String name;
  final double radius;
  final double fontsize;
  final String img;
  final Color backgroundColor; // Added backgroundColor property
  final Color nameColor;

  const ProfilePicture({
    required this.name,
    required this.radius,
    required this.fontsize,
    required this.img,
    required this.backgroundColor,
    required this.nameColor, // Updated constructor
// Updated constructor
  });

  @override
  Widget build(BuildContext context) {
    return Container( // Wrap the content with a Container
      width: MediaQuery.of(context).size.width, // adjusting depending on the
      decoration: BoxDecoration(
        color: backgroundColor, // Apply the specified background color
        // Apply border radius to match CircleAvatar
      ),
      // Add padding to the container
      child: Column(
        mainAxisSize: MainAxisSize.min, // Ensure the container only takes the space required by its children
        children: [
          CircleAvatar(
            radius: radius,
            backgroundImage: NetworkImage(img),
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: fontsize, color: nameColor),
          ),
        ],
      ),
    );
  }
}
