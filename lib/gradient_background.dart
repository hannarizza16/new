// import 'package:flutter/material.dart';
//
// class GradientContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Color(0xFFE0F4FF), Color(0xFF87C4FF)], //background color
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child; // Add a child parameter // need to para ma allow yung child

  const GradientContainer({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE0F4FF), Color(0xFF87C4FF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child, // Use the passed child widget
    );
  }
}
