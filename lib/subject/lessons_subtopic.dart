// class SubTopic {
//   final String heading;
//   final String body;
//   final String? attachment; // Make attachment nullable
//
//   SubTopic({
//     required this.heading,
//     required this.body,
//     this.attachment, // Make attachment nullable
//   });
//
//   factory SubTopic.fromJson(Map<String, dynamic> json) => SubTopic(
//     heading: json["heading"] ?? "",
//     body: json["body"] ?? "",
//     attachment: json["attachment"], // No need for the null check here
//   );
//
//   Map<String, dynamic> toJson() => {
//     "heading": heading,
//     "body": body,
//     "attachment": attachment,
//   };
// }
