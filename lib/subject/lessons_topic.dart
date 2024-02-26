class Topic {
  String topic;
  List<Map<String, dynamic>> subTopic;

  Topic({
    required this.topic,
    this.subTopic = const [], // Initialize subtopics as an empty list
  });

  factory Topic.fromJson(Map<String, dynamic> json) => Topic(
    topic: json["topic"],
    subTopic: json["subTopic"] ?? List.empty(growable: true),
  );

  Map<String, dynamic> toJson() => {
    "topic": topic,
    "subTopic": subTopic,
  };
}