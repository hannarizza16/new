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
            builder: (scaffoldContext) =>
                IconButton(
                  onPressed: () => Scaffold.of(scaffoldContext).openDrawer(),
                  icon: const Icon(Icons.menu_book),
                ),
          )
        ],
        title: Text(widget.language.value),
      ),
      drawer: Builder(




        builder: (scaffoldContext) =>
            TopicDrawer(
              topics: topics,
              onUpdateSelectedTopic: onUpdateSelectedTopic,
            ),
      ),
      body: topics.isNotEmpty



          ? SingleChildScrollView( //scrolling feature
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            // Padding(
            //   padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 10), // Adjusting the left margin to 20
            //   child: Text(
            //     topics[selectedTopicIndex].topic,
            //     style: TextStyle(
            //       fontSize: 20,
            //       color: Colors.blue,
            //       fontStyle: FontStyle.italic,
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),






            Padding(
              padding: EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centering the content within the Row
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 0, right: 0, top: 50, bottom: 0),
                      child: Text(
                        topics[selectedTopicIndex].heading,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center, // Align text in the center
                      ),
                    ),
                  ),
                ],
              ),
            ),






            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                topics[selectedTopicIndex].body,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  height: 1.8, // Adjust the height to your preferred line spacing (1.0 represents normal line height)
                ),
              ),
            ),

            SizedBox(height: 50),
          ],
        ),
      )
          : const Center(child: Text('No topics prepared.')),
    );
  }
}