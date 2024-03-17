import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/gradient_background.dart';

class StatisticsWidget extends StatefulWidget {
  @override
  _StatisticsWidgetState createState() => _StatisticsWidgetState();
}

class _StatisticsWidgetState extends State<StatisticsWidget> {
  List<Map<String, dynamic>> userScores = [];
  String selectedLanguage = "All"; // Initially set to "All"
  String selectedExpertise = "All"; // Initially set to "All"
  late String currentUserEmail;

  @override
  void initState() {
    super.initState();
    fetchCurrentUser();
    fetchUserScores();
  }

  Future<void> fetchCurrentUser() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user = auth.currentUser;
    if (user != null) {
      setState(() {
        currentUserEmail = user.email!;
      });
    }
  }

  Future<void> fetchUserScores() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore
        .instance
        .collection('scores')
        .where('userEmail', isEqualTo: currentUserEmail)
        .get();
    List<Map<String, dynamic>> scoresList = [];
    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in querySnapshot.docs) {
      Map<String, dynamic> data = doc.data();
      data['scoreDocumentId'] = doc.id; // Add scoreDocumentId
      // Fetch selected_teacher from students collection
      DocumentSnapshot<Map<String, dynamic>> studentSnapshot =
      await FirebaseFirestore.instance
          .collection('students')
          .doc(data['email']) // Use userEmail to fetch student document
          .get();
      if (studentSnapshot.exists) {
        // Add selected_teacher to the data
        data['selected_teacher'] = studentSnapshot.data()?['selected_teacher'];
      }
      scoresList.add(data);
    }
    setState(() {
      userScores = scoresList;
      userScores.sort((a, b) => b['timestamp'].compareTo(a['timestamp']));
    });
  }



  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredScores = userScores.where((score) {
      print(
          " Language: $selectedLanguage, Selected Expertise: $selectedExpertise");
      return (selectedLanguage == "All" ||
          score['category'] == selectedLanguage) &&
          (selectedExpertise == "All" ||
              score['expertise'] == selectedExpertise);
    }).toList();

    return GradientContainer(
      child: Stack(
        children: [
          // Layer 1: Gradient Container
          GradientContainer(
            child: SizedBox.expand(), // Expand to fill the whole screen
          ),
          Positioned(
            left: 0, // Align left
            top: 0, // Align top
            right: 0, // Align right
            bottom: 0, // Align bottom
            child: Opacity(
              opacity: 0.2, // Specify the opacity value here (0.0 - 1.0)
              child: Image.asset(
                'assets/overlay/2.jpg', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 50.0, top: 10.0, bottom: 10.0),
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
                      items: <String>[
                        'All',
                        'C',
                        'C++',
                        'Java',
                        'Dart',
                        'C#',
                        'PHP'
                      ].map<DropdownMenuItem<String>>((String value) {
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
                      items: <String>[
                        'All',
                        'Level 1',
                        'Level 2',
                        'Level 3',
                        'Level 4',
                        'Level 5'
                      ].map<DropdownMenuItem<String>>((String value) {
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
                    String category = filteredScores[index]['category'];
                    String expertiseLevel =
                    filteredScores[index]['expertise'];
                    int score = filteredScores[index]['score'] ?? 0;
                    Timestamp timestamp =
                    filteredScores[index]['timestamp'];
                    DateTime dateTime = timestamp.toDate();
                    String formattedDateTime =
                    DateFormat('dd/MM/yyyy hh:mm a').format(dateTime);
                    int totalQuestions = 10;
                    int perfectScore = totalQuestions * 1;

                    Color cardColor = Colors.transparent;
                    if (score == 0) {
                      cardColor = Colors.red;
                    } else if (score == perfectScore) {
                      cardColor = Colors.green;
                    } else if (score <= 5 && score >= 1) {
                      cardColor = Color(0xFF0C356A);
                    } else {
                      cardColor = Color(0xFF0B60B0);
                    }


                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: cardColor,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '$category Language',
                                      style: TextStyle(
                                        fontSize: 24.0,
                                        color: const Color(0xFFFFCC70),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Expertise: $expertiseLevel',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Score: $score / 10',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Date: $formattedDateTime',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
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
