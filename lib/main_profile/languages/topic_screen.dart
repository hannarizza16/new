import 'package:first_project/main_profile/languages/topic_drawer.dart';
import 'package:flutter/material.dart';
import 'package:first_project/main_profile/languages/topic.dart';
import 'package:first_project/enums/enums.dart';
import 'package:first_project/main_profile/languages/constant.dart';

class TopicScreen extends StatefulWidget {
  const TopicScreen({
    required this.language,
    required this.category,
    Key? key,
  }) : super(key: key);

  final Languages language;
  final Categories category;

  @override
  State<TopicScreen> createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  late final List<Topic> topics;
  late int selectedTopicIndex;

  @override
  void initState() {
    super.initState();
    topics = [...getTopics];
    selectedTopicIndex = 0;
  }

  List<Topic> get getTopics {
    if (codex.containsKey(widget.language) &&
        codex[widget.language]!.containsKey(widget.category)) {
      final topics = [...codex[widget.language]![widget.category]!.values];

      return topics.map((topic) => Topic.fromJson(topic)).toList();
    }
    return List.empty();
  }

  Topic get selectedTopics => topics[selectedTopicIndex];

  void onUpdateSelectedTopic(int index) {
    setState(() {
      selectedTopicIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left),
        ),
        actions: [
          Builder(
            builder: (scaffoldContext) => IconButton(
              onPressed: () => Scaffold.of(scaffoldContext).openDrawer(),
              icon: const Icon(Icons.menu_book),
            ),
          )
        ],
        title: Text(widget.language.value),
      ),
      drawer: Builder(
        builder: (scaffoldContext) => TopicDrawer(
          topics: topics,
          onUpdateSelectedTopic: onUpdateSelectedTopic,
        ),
      ),
      body: topics.isNotEmpty
          ? SingleChildScrollView(
        child: Column(
          children: [
            Text(
              topics[selectedTopicIndex].topic,
              style: TextStyle(
                fontSize: 20, // Set the font size for the topic text
                color: Colors.blue, // Change the color of the topic text
                fontStyle: FontStyle.italic, // Apply italic style

              ),
            ),
            Text(
              topics[selectedTopicIndex].heading,
              style: TextStyle(
                fontSize: 18, // Set the font size for the heading text
                color: Colors.red, // Change the color of the heading text
                fontWeight: FontWeight.bold, // Apply bold style
              ),
            ),
            Text(
              topics[selectedTopicIndex].body,
              style: TextStyle(
                fontSize: 16, // Set the font size for the body text
                color: Colors.black, // Change the color of the body text
                // Other text styling properties can be added here
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      )
          : const Center(child: Text('No topics prepared.')),
    );
  }
}
