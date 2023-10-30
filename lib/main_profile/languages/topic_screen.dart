import 'package:first_project/main_profile/languages/topic_drawer.dart';
import 'package:flutter/material.dart';
import 'package:first_project/main_profile/languages/topic.dart';
import 'package:first_project/enums/enums.dart';
import 'package:first_project/main_profile/languages/constant.dart';
import 'package:first_project/main_profile/languages/subtopic.dart';

class TopicScreen extends StatefulWidget {
  const TopicScreen({
    required this.language,
    required this.category,
    super.key,
  });
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
    print({"selectedTopics": selectedTopics.subTopic});

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

        //SIDE PADDING
              child: Padding(
                padding: EdgeInsets.all(
                    20.0), // Add vertical padding

                //TOPIC CUSTOM TEXT STYLE
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Adjust alignment as needed
                  children: [
                    Text(
                      topics[selectedTopicIndex].topic,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20),

                    //SUBTOPIC CUSTOM TEXT STYLE
                    ListView.builder(
                      shrinkWrap: true,
                      physics:
                          NeverScrollableScrollPhysics(), // Ensure it doesn't scroll
                      itemBuilder: (context, index) {
                        final subTopic =
                            SubTopic.fromJson(selectedTopics.subTopic[index]);

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Adjust alignment as needed
                          children: [
                            Text(
                              subTopic.heading,
                              style: TextStyle(
                                fontSize: 30, // Adjust the font size as needed
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              subTopic.body,
                              style: TextStyle(
                                fontSize: 16, // Adjust the font size as needed
                                color: Colors.black, // Adjust the text color
                              ),
                            ),


                            SizedBox( // SPACE BETWEEN PREVIOUS SUBTOPIC TO CURRENT SUBTOPIC
                                height:
                                    50), // Add some spacing between subtopics
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
