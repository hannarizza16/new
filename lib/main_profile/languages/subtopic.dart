class SubTopic {
  final String heading;
  final String body;
  final String? attachment;


  SubTopic({
    required this.heading,
    required this.body,
    this.attachment,
  });

  factory SubTopic.fromJson(Map<String, dynamic> json) => SubTopic(
        heading: json["heading"],
        body: json["body"],
    attachment: json["attachment"],
      );

  Map<String, dynamic> toJson() => {
        "heading": heading,
        "body": body,
    "attachment": attachment,
      };
}
