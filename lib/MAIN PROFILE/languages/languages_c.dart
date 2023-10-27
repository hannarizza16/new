import 'package:first_project/MAIN%20PROFILE/SIDE%20NAVIGATION%20BAR/sidebar.dart';
import 'package:first_project/MAIN%20PROFILE/SIDE%20NAVIGATION%20BAR/sidebar_topicC.dart';
import 'package:flutter/material.dart';
import 'package:first_project/bottom_navigations//bottomnavbar.dart';
import 'package:first_project/MAIN%20PROFILE/LANGUAGES/languages_all.dart';

List<String> getCTopics() {
  return ['Beginner', 'Advanced', 'Intermediate'];
}

class languageC extends StatelessWidget {
  languageC({super.key});
  int selectedIndex=0;


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(

          drawer: sideBar(),

          appBar: AppBar(
            title: const Text('C Languauge'),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Color(0xFFEEEEEE),
          // body: languagesAll(),


        ));
  }
}
class CategoryScreen extends StatelessWidget {
  final String language;
  final List<String> topics;

  CategoryScreen({required this.language, required this.topics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sidebar_topicC(),

      appBar: AppBar(
        title: Text('$language'),
        backgroundColor: Colors.transparent,

      ),
      body: ListView(
        children: topics.map((category) {
          return ListTile(
            title: Text(category),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TopicsScreen(language: language, category: category),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class TopicsScreen extends StatelessWidget {
  final String language;
  final String category;

  TopicsScreen({required this.language, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<String> topics = generateTopics(language, category);

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Level on $language'),
      ),
      body: ListView(
        children: topics.map((topic) {
          return ListTile(
            title: Text(topic),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicDetailScreen(
                    language: language,
                    category: category,
                    topic: topic,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  List<String> generateTopics(String language, String category) {
    // Here you can generate the topics for each language and category.
    if (language == 'C' && category == 'Beginner') {
      return [

        '1.   Introduction to C Programming',
        '2.   Get Started With C',
        '3.   Syntax',
        '4.   Output (Print Text)',
        '       4.1     Output (New Lines)',
        '5.   Comments',
        '6.   Variables',
        '7.   Data Types',
        '       7.1     Data Types (Type Conversion)',
        '8.   Constants',
        '9.   Operators',
        '10.  Booleans',
        '11.  If...Else Statement',
        '       11.1     Short Hand If',
        '12.  Switch Statement',
        '13.  While Loop',
        '14.  For Loop',
        '15.  Break/Continue',
        '16.  Arrays',
        '       16.1     Multidimensional Arrays',
        '17.  Strings',
        '       17.1     Special Characters',
        '       17.2     String Functions',
        '18.  User Input',
        '19.  Memory Address',
        '20.  Pointers',
        '       20.1     Pointers & Arrays',
        '21.  Functions',
        ''
      ];
    } else if (language == 'C' && category == 'Advanced') {
      return [''];
    } else if (language == 'Java' && category == 'Beginner') {
      return ['Introduction to Java', 'Java Syntax', 'Output'];
    } else if (language == 'Arduino' && category == 'Beginner') {
      return ['Introduction to Arduino', 'Arduino Syntax', 'Output'];
    }
    // Add more conditions for other languages and categories as needed.
    return [];
  }
}

class TopicContent {
  final String heading;
  final String body;

  TopicContent(this.heading, this.body);
}

class TopicDetailScreen extends StatelessWidget {
  final String language;
  final String category;
  final String topic;

  TopicDetailScreen({
    required this.language,
    required this.category,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    // Fetch the topic content based on language, category, and topic
    TopicContent topicContent = fetchTopicContent(language, category, topic);

    return Scaffold(
      appBar: AppBar(
        title: Text(topicContent.heading), // Display the heading in the AppBar
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  topicContent.heading, // Display the centered heading
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black, // Black color for the heading
                  ),
                ),
              ),
              Text(
                topicContent.body, // Display the body text
                style: TextStyle(
                  fontSize: 50,
                  color:
                  Colors.black, // You can change the body text color here
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TopicContent fetchTopicContent(
      String language, String category, String topic) {
    // Implement your content fetching logic based on language, category, and topic
    // Return a TopicContent object with the heading and body text
    // Example implementation:
    if (language == 'C' &&
        category == 'Beginner' &&
        topic == 'Introduction to C++') {
      return TopicContent(
        'What is C++?',
        'C++ is a cross-platform language that can be used to create high-performance applications. '
            'C++ was developed by Bjarne Stroustrup, as an extension to the C language. '
            'C++ gives programmers a high level of control over system resources and memory. '
            'The language was updated 4 major times in 2011, 2014, 2017, and 2020 to C++11, C++14, C++17, C++20.',
      );
    } else if (language == 'Java' &&
        category == 'Beginner' &&
        topic == 'Introduction to Java') {
      return TopicContent(
        'What is Java',
        'Sample text here in Java.',
      );
    } else if (language == 'Arduino' &&
        category == 'Advanced' &&
        topic == 'Introduction to Arduino') {
      return TopicContent(
        'What is Arduino',
        'Put the sample text here in Arduino.',
      );
    }
    return TopicContent('No content available for this topic.', '');
  }
}