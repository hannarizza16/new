import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatisticsWidget extends StatefulWidget {
  @override
  _StatisticsWidgetState createState() => _StatisticsWidgetState();
}

class _StatisticsWidgetState extends State<StatisticsWidget> {
  List<Map<String, dynamic>> userScores = [
  ];

  @override
  void initState() {
    super.initState();
    // Fetch user scores from Firebase Firestore
    fetchUserScores();
  }

  Future<void> fetchUserScores() async {
    // Query Firebase Firestore to fetch user scores
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await FirebaseFirestore.instance.collection('scores').get();
    // Extract user scores from query
    setState(() {
      userScores = querySnapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Filter out entries where category or expertise is missing
    List<Map<String, dynamic>> filteredScores = userScores
        .where((score) => // send past
    score['category'] != null && score['expertise'] != null)
        .toList();

    return Scaffold(
      body: filteredScores.isNotEmpty
          ? ListView.builder(
        itemCount: filteredScores.length,
        itemBuilder: (context, index) {
          // Extract category, expertise level, score, and timestamp from user score data
          String category = filteredScores[index]['category'];
          String expertiseLevel = filteredScores[index]['expertise'];
          int score = filteredScores[index]['score'] ?? 0;
          Timestamp timestamp = filteredScores[index]['timestamp'];

          // Convert timestamp to DateTime
          DateTime dateTime = timestamp.toDate();
          String formattedDateTime =
              '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime
              .hour}:${dateTime.minute}';

          return Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(
                      0xFF0C356A), // Use the same dark blue or violet color
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: _buildStamp(), // White stamp with "RECORDED" text
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$category Language',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white, // Set text color to white
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Expertise: $expertiseLevel',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white, // Set text color to white
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Score: $score',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white, // Set text color to white
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Date: $formattedDateTime',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white, // Set text color to white
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned( // yellow bottom
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 0,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFCC70), // Yellow color
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildStamp({double? opacity}) {
    return Positioned(
      top: 0.0,
      right: 0.0,
      child: Opacity(
        opacity: opacity ?? 1.0,
        // Reduced opacity (change to desired value)
        child: Transform.rotate(
          angle: -0.5 , // Convert degrees to radians
          child: Container(
            width: 50.0,
            height: 50.0,
            child: Image.asset(
              'assets/stamp/stamp.png',
              // Replace 'stamp_image.png' with your image asset path
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
        ),
      ),
    );
  }

}