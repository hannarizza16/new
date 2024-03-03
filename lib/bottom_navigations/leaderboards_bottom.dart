import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../gradient_background.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: LeaderboardScreen(),
  ));
}

class LeaderboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Leaderboard(),
      ),
    );
  }
}

class Leaderboard extends StatefulWidget {
  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  String selectedCategory = "All";
  String selectedExpertise = "All";

  @override
  Widget build(BuildContext context) {

    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('scores').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final List<DocumentSnapshot> documents = snapshot.data!.docs;
        final List<Map<String, dynamic>> leaderboardData =
        documents.map((doc) => doc.data() as Map<String, dynamic>).toList();

        // Group scores by userEmail and expertise, and get the highest score for each combination
        final Map<String, Map<String, dynamic>> userScores = {};
        leaderboardData.forEach((player) {
          final userEmail = player['userEmail'];
          final expertise = player['expertise'];
          final category = player['category'];
          final key = '$expertise-$category';
          if (userEmail != null) {
            if (!userScores.containsKey(key) ||
                player['score'] > userScores[key]!['score']) {
              userScores[key] = player;
            }
          }
        });


        // Apply filters
        List<Map<String, dynamic>> filteredLeaderboard =
        userScores.values.where((score) {
          print(" Language: $selectedCategory, Selected Expertise: $selectedExpertise");
          return (selectedCategory == "All" || score['category'] == selectedCategory) &&
              (selectedExpertise == "All" || score['expertise'] == selectedExpertise);
        })
            .toList();

        final sortedLeaderboard = filteredLeaderboard.toList()
          ..sort((a, b) =>
              b['score'].compareTo(a['score'])); // Sort by score descending

        final topPlayers = sortedLeaderboard.length >= 3
            ? sortedLeaderboard.sublist(0, 3)
            : sortedLeaderboard;
        final otherPlayers =
        sortedLeaderboard.length >= 3 ? sortedLeaderboard.sublist(3) : [];

        return Stack(
          children: [
            // Layer 1: Gradient Container
            const GradientContainer(
              child: SizedBox.expand(), // Expand to fill the whole screen
            ),
            // Layer 2: Image

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
            // Layer 2: Image
            // Layer 3: Other Widgets
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 50.0, top: 10.0, bottom: 10.0),
                    child: Row(
                      children: [
                        const Text("Language: "),
                        DropdownButton<String>(
                          value: selectedCategory,
                          onChanged: (value) {
                            setState(() {
                              selectedCategory = value!;
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
                        const SizedBox(width: 30),
                        const Text("Expertise: "),
                        DropdownButton<String>(
                          value: selectedExpertise,
                          onChanged: (value) {
                            setState(() {
                              selectedExpertise = value!;
                            });
                          },
                          items: <String>[
                            'All',
                            'Beginner',
                            'Intermediate',
                            'Advanced'
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
                ),
                filteredLeaderboard.isEmpty
                    ? const Expanded(
                  child: Center(
                    child: Text(
                      'No data detected',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
                    : SizedBox(
                  height: 200,
                  child: _buildBarChart(topPlayers),
                ),
                const SizedBox(height: 20),
                filteredLeaderboard.isNotEmpty
                    ? Expanded(
                  child: ListView.builder(
                    itemCount: otherPlayers.length,
                    itemBuilder: (context, index) {
                      final player = otherPlayers[index];
                      final scoreTextStyle = TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: index < 3
                            ? 16
                            : 14, // Decrease font size for other players
                      );
                      return ListTile(
                        leading: Text(
                          '${index + 4}.',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        title: Text(
                            '${player['lastName']}, ${player['firstName']}'),
                        trailing: Text(
                          '${player['score']}',
                          style: scoreTextStyle,
                        ),
                      );
                    },
                  ),
                )
                    : const SizedBox(),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildBarChart(List<Map<String, dynamic>> topPlayers) {
    List<charts.Series<dynamic, String>> series = [
      charts.Series(
        id: "scores",
        data: topPlayers,
        domainFn: (dynamic data, _) =>
        '${data['lastName']}, ${data['firstName']}',
        measureFn: (dynamic data, _) => data['score'],
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(const Color(0xFF0C356A)),
      )
    ];

    return charts.BarChart(
      series,
      animate: true,
      vertical: false,
      barRendererDecorator: charts.BarLabelDecorator<String>(
        labelPosition: charts.BarLabelPosition.inside,
        labelAnchor: charts.BarLabelAnchor.end,
        labelPadding: 10,
        insideLabelStyleSpec: const charts.TextStyleSpec(
          color: charts.MaterialPalette.white,
          fontSize: 15,
        ),
      ),
      domainAxis: const charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()),
    );
  }
}