// import 'package:first_project/subject/application_dev.dart';
// import 'package:first_project/subject/game_dev.dart';
// import 'package:first_project/subject/machine_dev.dart';
// import 'package:first_project/subject/web_dev.dart';
// import 'package:flutter/material.dart';
// import 'package:first_project/bottom_navigations/home_bottom.dart';
// import 'package:first_project/enums/enums.dart';
//
// class MainSubject extends StatefulWidget {
//   const MainSubject({super.key});
//
//   @override
//   State<MainSubject> createState() => _MainSubjectState();
// }
//
// class _MainSubjectState extends State<MainSubject> {
//   static final _viewSubjectScreen = [
//     const AppDevPage(),
//     const GameDevPage(),
//     const MachineDevPage(),
//     const WebDevPage(),
//   ];
//
//   int? selectedSubjectIndex;
//
//   void _viewSubjectScreen (int index){
//     setState(() {
//       selectedSubjectIndex = selectedSubjectIndex != index? index : null;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//        ? child: Container(
//       color: Colors.lightBlue[50],
//       // color of button
//       child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 16,
//               crossAxisSpacing: 16,
//               // Number of columns in the grid
//             ),
//             itemBuilder: (context, index) => ElevatedButton(
//               // has a callback function ito yung ginagamit para ibuild o mag generate
//               // ulit ng sinelect mo na index
//               style: ElevatedButton.styleFrom(
//                 //selectedScreen == null
//                 // if index is not equal to selected screen ang kulay niya is deep purple  but if == ang color niya is deepPurple[300]
//                 backgroundColor: index != selectedSubjectIndex
//                     ? Colors.lightBlue[400]
//                     : Colors.lightBlue[700],
//               ),
//
//               onPressed: () => _viewSubjectScreen(index),
//               child: Image.asset(SubjectSection.values[index].value),
//
//             ),
//             itemCount: SubjectSection.values
//                 .length, // ilalabas lahat ng values or list ni Languages na nakaindicate sa enums
//           )),
//     )
//     : _viewSubjectScreen[
//     selectedSubject!],
//     );
//   }
// }
