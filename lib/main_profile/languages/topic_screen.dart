import 'package:first_project/main_profile/languages/topic_drawer.dart';
import 'package:flutter/material.dart';
import 'package:first_project/main_profile/languages/topic.dart';
import 'package:first_project/enums/enums.dart';
import 'package:first_project/main_profile/languages/constant.dart'; // contains of information and details of the language
import 'package:first_project/main_profile/languages/subtopic.dart'; // contains of heading body and attachments
import 'dart:ui'; // Add this import statement for image filter to blur background
// when sidebar is opened

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
  static const Color darkBlue = Color(0xFF0C356A); // dark blue
  static const Color headerTopicColor = Color(0xFF000000); // black
  static const Color topicInfoColor = Color(0xFF000000); // black
  static const Color yellow = Color(0xFFFFCC70);

  late List<Topic> topics;
  late int selectedTopicIndex;
  bool _isSidebarOpen = false; // sidebar ng topic screen pag open is nakaclose siya kasi naka false.
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: darkBlue,
          title: Text(widget.language.value, style: Theme.of(context).textTheme.headline6!.copyWith(
      color: yellow,
    ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  _isSidebarOpen = !_isSidebarOpen;
                });
              },
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () {
            if (_isSidebarOpen) {
              setState(() {
                _isSidebarOpen = false; // pag kinlick yung screen isinet ko na yung sidebar is mag close by using boolean pag false ibig sabihin close.
              });
            }
          },
          child: Stack(
            children: [
              if (topics.isNotEmpty)
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final subTopic = SubTopic.fromJson(
                                selectedTopics.subTopic[index]);
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Text(
                                      subTopic.heading,
                                      style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: headerTopicColor,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5.0,
                                    horizontal: 0.0,
                                  ),
                                  child: Text(
                                    subTopic.body,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: topicInfoColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                if (subTopic.attachment != null &&
                                    subTopic.attachment!.isNotEmpty)
                                  Center(
                                    child: Image.asset(
                                      subTopic.attachment!,
                                    ),
                                  ),
                              ],
                            );
                          },
                          itemCount: selectedTopics.subTopic.length,
                        ),
                        if (topics.isEmpty)
                          Center(child: Text('No topics prepared.')),
                      ],
                    ),
                  ),
                ),
              if (_isSidebarOpen)
                AnimatedOpacity(
                  duration: Duration(milliseconds: 300),
                  opacity:
                      _isSidebarOpen ? 0.5 : 0.0, // Adjust opacity as needed
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5), // Adjust blur intensity as needed
                    child: Container(
                      color: Colors.black // ito yung kung bakit blurred yung background
                          .withOpacity(1), // Adjust color and opacity as needed
                      // You can add additional widgets or content here if needed
                    ),
                  ),
                ),
              // Sliding sidebar
              AnimatedPositioned(
                duration: Duration(milliseconds: 300), // tagal ng pag sara ng side bar
                top: 0,
                bottom: 0,
                right: _isSidebarOpen ? 0 : -315, // pag sara ng sidebar
                child: Container(
                  width: 315, //315 // lapad ng bukas ng sidebar
                  color: Colors.green,

                  child: TopicDrawer(
                    topics: topics,
                    onUpdateSelectedTopic: onUpdateSelectedTopic,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
