import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LeaderboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Leaderboard(),
    );
  }
}

class Leaderboard extends StatelessWidget {
  final List<Map<String, dynamic>> _leaderboardData = [
    {'name': 'John', 'score': 100},
    {'name': 'Alice', 'score': 90},
    {'name': 'Bob', 'score': 85},
    {'name': 'Emma', 'score': 80},
    {'name': 'James', 'score': 75},
    {'name': 'Sophia', 'score': 70},
    {'name': 'Michael', 'score': 65},
    {'name': 'Olivia', 'score': 60},
    {'name': 'William', 'score': 55},
    {'name': 'Emily', 'score': 50},
  ];

  @override
  Widget build(BuildContext context) {
    final sortedLeaderboard = _leaderboardData.toList()
      ..sort((a, b) => b['score'].compareTo(a['score'])); // Sort by score descending

    final topPlayers = sortedLeaderboard.sublist(0, 3); // Select top 3 players
    final otherPlayers = sortedLeaderboard.sublist(3); // Players other than top 3

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Center(
            child: Text(
              'Leaderboard',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: _buildBarChart(topPlayers),
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: otherPlayers.length,
            itemBuilder: (context, index) {
              final player = otherPlayers[index];
              final scoreTextStyle = TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: index < 3 ? 16 : 14, // Decrease font size for other players
              );
              return ListTile(
                leading: Text(
                  '${index + 4}.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text(player['name']),
                trailing: Text(
                  '${player['score']}',
                  style: scoreTextStyle,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildBarChart(List<Map<String, dynamic>> topPlayers) {
    List<charts.Series<dynamic, String>> series = [
      charts.Series(
        id: "Scores",
        data: topPlayers,
        domainFn: (dynamic data, _) => data['name'],
        measureFn: (dynamic data, _) => data['score'],
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
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
        insideLabelStyleSpec: charts.TextStyleSpec(
          color: charts.MaterialPalette.white,
          fontSize: 14,
        ),
      ),
      domainAxis: charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LeaderboardScreen(),
  ));
}