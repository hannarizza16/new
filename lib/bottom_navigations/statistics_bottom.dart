import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class StatisticsWidget extends StatefulWidget {
  @override
  _StatisticsWidgetState createState() => _StatisticsWidgetState();
}

class _StatisticsWidgetState extends State<StatisticsWidget> {
  List<Map<String, dynamic>> userScores = [];
  String selectedLanguage = "All"; // Initially set to "All"
  String selectedExpertise = "All"; // Initially set to "All"

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
      // Sort user scores by timestamp from recent to oldest
      userScores.sort((a, b) => b['timestamp'].compareTo(a['timestamp']));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Filter out entries where category or expertise is missing
    List<Map<String, dynamic>> filteredScores = userScores
        .where(
            (score) => (selectedLanguage == "All" || score['category'] == selectedLanguage) &&
            (selectedExpertise == "All" || score['expertise'] == selectedExpertise))
        .toList();

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 10.0, bottom: 10.0),
            child: Row(
              children: [
                Text("Language: "),
                DropdownButton<String>(
                  value: selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = value!;
                    });
                  },
                  items: <String>['All', 'C', 'C++', 'Java', 'German']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(width: 30),
                Text("Expertise: "),
                DropdownButton<String>(
                  value: selectedExpertise,
                  onChanged: (value) {
                    setState(() {
                      selectedExpertise = value!;
                    });
                  },
                  items: <String>['All', 'Beginner', 'Intermediate', 'Advanced']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: filteredScores.isNotEmpty
                ? ListView.builder(
              itemCount: filteredScores.length,
              itemBuilder: (context, index) {
                // Extract category, expertise level, score, and timestamp from user score data
                String category = filteredScores[index]['category'];
                String expertiseLevel = filteredScores[index]['expertise'];
                int score = filteredScores[index]['score'] ?? 0;
                Timestamp timestamp = filteredScores[index]['timestamp'];

                // Convert timestamp to DateTime in 12 hour
                DateTime dateTime = timestamp.toDate();
                String formattedDateTime =
                DateFormat('dd/MM/yyyy hh:mm a').format(dateTime);

                // Calculate perfect score based on the total number of questions
                int totalQuestions =
                4; // Change this to the actual total number of questions
                int perfectScore = totalQuestions * 1;

                // Determine border color based on score
                Color borderColor = score == 0
                    ? Colors.red
                    : score == perfectScore
                    ? Colors.yellow
                    : Colors.transparent;

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
                        color: score == 0
                            ? Colors.red
                            : score == perfectScore
                            ? Colors.green
                            : Color(
                            0xFF0C356A), // Adjust the color based on score
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10.0,
                            right: 10.0,
                            child: _buildStamp(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '$category Language',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    color: Color(
                                        0xFFFFCC70), // Yellow color // Set text color to white
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Expertise: $expertiseLevel',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors
                                        .white, // Set text color to white
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Score: $score',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors
                                        .white, // Set text color to white
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Date: $formattedDateTime',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors
                                        .white, // Set text color to white
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            // yellow bottom
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 0,
                              decoration: BoxDecoration(
                                color: Color(
                                    0xFFFFCC70), // Yellow color
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
              child: Text("No records detected"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStamp({double? opacity}) {
    return Positioned(
      top: 10.0,
      right: 10.0,
      child: Opacity(
        opacity: opacity ?? 1.0,
        child: Transform.rotate(
          angle: -0.5,
          child: Container(
            width: 50.0,
            height: 50.0,
            child: Image.asset(
              'assets/stamp/stamp.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
