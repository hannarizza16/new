import 'package:first_project/main_profile/languages/topic_drawer.dart';
import 'package:flutter/material.dart';
import 'package:first_project/main_profile/languages/topic.dart';
import 'package:first_project/enums/enums.dart';
import 'package:first_project/main_profile/languages/constant.dart';
import 'package:first_project/main_profile/languages/subtopic.dart';

// Enums and other required classes/constants

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
  late List<Topic> topics;
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
    return [];
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
              icon: const Icon(Icons.menu),
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
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   topics[selectedTopicIndex].topic,
                    //   style: TextStyle(
                    //     fontSize: 30,
                    //     color: Colors.red,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final subTopic =
                            SubTopic.fromJson(selectedTopics.subTopic[index]);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  subTopic.heading,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 0.0,
                              ),
                              child: Text(
                                subTopic.body,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height:30),
                          ],
                        );
                      },
                      itemCount: selectedTopics.subTopic.length,
                    ),
                  ],
                ),
              ),
            )
          : const Center(child: Text('No topics prepared.')),
    );
  }
}
