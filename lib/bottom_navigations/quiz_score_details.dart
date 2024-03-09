import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecordDetailsPage extends StatelessWidget {
  final Map<String, dynamic> recordData;

  const RecordDetailsPage({super.key, required this.recordData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Record Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Timestamp: ${recordData['timestamp'].toDate()}'),
            Text('Category: ${recordData['category']}'),
            Text('Expertise: ${recordData['expertise']}'),
            Text('Score: ${recordData['score']} / ${recordData['totalQuestions']}'),
            SizedBox(height: 20),
            Text(
              'Questions:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              future: FirebaseFirestore.instance.collection('stats_record').doc(recordData['scoreDocumentId']).get(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator(); // Show a loading indicator while fetching data
                }
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                if (snapshot.data!.exists && snapshot.data!.data()!.containsKey('questions')) {
                  List<dynamic> questions = snapshot.data!.data()!['questions'];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: questions.map((question) => Text(question)).toList(),
                  );
                } else {
                  return Text('Questions not available');
                }
              },
            ),

          ],
        ),
      ),
    );
  }
}
