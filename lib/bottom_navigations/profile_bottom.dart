import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  final double coverHeight = 100;
  final double profileHeight = 100;

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
        ));
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
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildContent() => Column(
    children: [
      const SizedBox(height: 2),
      Text(
        'Jaesy Evardome',
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    ],
  );

  Widget buildCoverImage() => Container(
    width: double.infinity,
    height: coverHeight,
    decoration: BoxDecoration(
      color: Colors.grey
          .withOpacity(0.5), // Adjust the opacity of the container
      image: DecorationImage(
        image: NetworkImage('https://picsum.photos/seed/496/600'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.white
              .withOpacity(0.3), // Adjust the opacity of the image itself
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
    child: CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: NetworkImage('https://picsum.photos/seed/532/600'),
    ),
  );

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
}

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