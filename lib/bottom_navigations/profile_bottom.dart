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
        secondColumn(),
        thirdColumn(),
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
                minWidth: MediaQuery.of(context).size.width, // Set minimum width to screen width
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://as1.ftcdn.net/v2/jpg/02/76/75/90/1000_F_276759092_EyErFXfz1qwnnyJFqkKUnggQwoDKMYSR.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                child: Row(
                  children: [
                    SizedBox(height: 100),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 9.0, bottom: 9.0, left: 30),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(''), // Replace with your image URL
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 9.0, bottom: 9.0, left: 30),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(''), // Replace with your image URL
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 9.0, bottom: 9.0, left: 30),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(''), // Replace with your image URL
                          ),
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





  Widget secondColumn() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 8.0),
        child: Text(
          'Intermediate',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),

      Align(alignment: Alignment.center,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://as1.ftcdn.net/v2/jpg/02/76/75/90/1000_F_276759092_EyErFXfz1qwnnyJFqkKUnggQwoDKMYSR.jpg'),
                fit: BoxFit.cover,
              )
          ),
          child: Row(
            children: [
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(top: 9.0, bottom: 9.0, left: 30),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                      NetworkImage(''), // Replace with your image URL
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(top: 9.0, bottom: 9.0, left: 30),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                      NetworkImage(''), // Replace with your image URL
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(top: 9.0, bottom: 9.0, left: 30, ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                      NetworkImage(''), // Replace with your image URL
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        )
      )
    ],
  );


  Widget thirdColumn() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 8.0),
        child: Text(
          'Advance',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),

      Align(alignment: Alignment.center,

      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    ''),
                fit: BoxFit.cover,
              )
          ),
          child: Row(
            children: [
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(top: 9.0, bottom: 9.0, left: 30),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                      NetworkImage(''), // Replace with your image URL
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(top: 9.0, bottom: 9.0, left: 30),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                      NetworkImage(''), // Replace with your image URL
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(top: 9.0, bottom: 9.0, left: 30),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                      NetworkImage(''), // Replace with your image URL
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
      )
    ],
  );


}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}
