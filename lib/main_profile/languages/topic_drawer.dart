import 'package:first_project/main_profile/languages/topic.dart'; // Correct the path to the Topic class
import 'package:flutter/material.dart';

class TopicDrawer extends StatefulWidget {
  const TopicDrawer({
    required this.topics,
    required this.onUpdateSelectedTopic,
    Key? key,
  }) : super(key: key);

  final List<Topic> topics;
  final ValueChanged<int> onUpdateSelectedTopic;

  @override
  _TopicDrawerState createState() => _TopicDrawerState();
}

class _TopicDrawerState extends State<TopicDrawer> {
  late int _selectedIndex; // Track the selected index

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0; // Initialize with the first topic selected
  }

  @override
  Widget build(BuildContext context) {
    final Color selectedTextTopic =  Color(0xFFFFCC70);
    final Color unselectedTextTopic =  Color(0xFFFFFFFF);
    final Color sideBarColor =  Color(0xFF0C356A);



    return Drawer(
      child: Container(
        color: sideBarColor,
      child: widget.topics.isNotEmpty
          ? ListView.builder(
        itemBuilder: (context, index) {
          final topic = widget.topics[index];
          bool isSelected = _selectedIndex == index;

          return GestureDetector(
            onTap: () {
              Scaffold.of(context).closeDrawer();
              setState(() {
                _selectedIndex = index; // Update the selected index
              });
              widget.onUpdateSelectedTopic(index);
            },
            child: ListTile(
              title: Text(
                topic.topic,
                style: TextStyle(
                  color: isSelected ? selectedTextTopic : unselectedTextTopic,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        },
        itemCount: widget.topics.length,
      )
          : const Center(child: Text('No topics available.')),
    ));
  }
}
