import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdminBottomScoreDatabase extends StatefulWidget {
  @override
  _AdminBottomScoreDatabaseState createState() =>
      _AdminBottomScoreDatabaseState();
}

class _AdminBottomScoreDatabaseState extends State<AdminBottomScoreDatabase> {
  String? _selectedSection;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Section:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DropdownButton<String>(
                value: _selectedSection,
                onChanged: (newValue) {
                  setState(() {
                    _selectedSection = newValue;
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text("All"),
                    value: null, // Null indicates all sections
                  ),
                  DropdownMenuItem(
                    child: Text("101P"),
                    value: "101P",
                  ),
                  DropdownMenuItem(
                    child: Text("102P"),
                    value: "102P",
                  ),
                  DropdownMenuItem(
                    child: Text("401P"),
                    value: "401P",
                  ),
                  DropdownMenuItem(
                    child: Text("501P"),
                    value: "501P",
                  ),
                  DropdownMenuItem(
                    child: Text("801P"),
                    value: "801P",
                  ),
                  // Add more sections as needed
                ],
                hint: Text('Select Section'),
              ),
            ],
          ),
        ),
        Expanded(
          child: StreamBuilder(
            stream: _selectedSection != null
                ? FirebaseFirestore.instance
                .collection('scores')
                .where('section', isEqualTo: _selectedSection)
                .orderBy('lastName')
                .snapshots()
                : FirebaseFirestore.instance
                .collection('scores')
                .orderBy('lastName')
                .snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              }
              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return Center(
                  child: Text('No data available for selected section.'),
                );
              }
              return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data = document.data() as Map<String, dynamic>;

                  // Convert timestamp to DateTime
                  DateTime timestamp = (data['timestamp'] as Timestamp).toDate();

                  // Format the date
                  String formattedDate = DateFormat.yMMMd().add_jm().format(timestamp);

                  // Check if middle initial is null
                  String middleInitial = data['middleInitial'] != null ? data['middleInitial'] : '';

                  return ListTile(
                    title: Text(
                        '${data['lastName']}, ${data['firstName']} ${middleInitial.isNotEmpty ? middleInitial : ""}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('User Email: ${data['userEmail']}'),
                        Text('Year Level: ${data['yearLevel']}'),
                        Text('Section: ${data['section']}'),
                        Text('Category: ${data['category']}'),
                        Text('Expertise: ${data['expertise']}'),
                        Text('Score: ${data['score']}'),
                        Text('Date & Time: $formattedDate'),
                        Text('Total Questions: ${data['totalQuestions']}'),
                        Text('Selected Teacher: ${data['selected_teacher']}'),
                      ],
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ),
      ],
    );
  }
}
//ditooooo