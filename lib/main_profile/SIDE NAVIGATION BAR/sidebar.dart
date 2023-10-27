// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// import '../../firebase/global/common/toast.dart';
//
// class sideBar extends StatelessWidget {
//   const sideBar({super.key}); // NOTE
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//         child: ListView(
//       padding: EdgeInsets.zero, // FOR TOP PADDING IN SIDE BAR
//       children: [
//         UserAccountsDrawerHeader(
//           accountName: const Text("Hanna Rizza Malana"),
//           accountEmail: const Text("hmalana@rtu.edu.ph"),
//           currentAccountPicture: CircleAvatar(
//             radius: 100,
//             backgroundColor: Color(0xffFDCF09),
//             backgroundImage: AssetImage('assets/jrizal.jpg')
//             ,
//           ),
//           decoration: BoxDecoration(
//             color: Colors.grey,
//             //image: DecorationImage(image: AssetImage("assets/EafbSjcXgAEv71t_edge.png"), fit: BoxFit.cover) //BACKGROUND IMAGE IN SIDEBAR
//           ),
//         ),
//
//         //LASSSSSSSSSSSSSSSSSSST
//         InkWell(
//             onTap: () {},
//             child: ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text("Profile"),
//             )),
//
//         InkWell(
//             onTap: () {},
//             child: ListTile(
//               leading: Icon(Icons.leaderboard),
//               title: Text("Leaderboards"),
//             )),
//
//         InkWell(
//             onTap: () {},
//             child: ListTile(
//               leading: Icon(Icons.settings),
//               title: Text("Settings"),
//             )),
//
//         GestureDetector(
//           onTap: () {
//             FirebaseAuth.instance.signOut();
//             Navigator.pushNamed(context, "/login");
//             showToast(message: "Successfully signed out");
//           },
//           child: Container(
//             height: 45,
//             width: 100,
//             decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(10)),
//             child: Center(
//               child: Text(
//                 "Sign out",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18),
//               ),
//             ),
//           ),
//         )
//       ],
//     ));
//   }
// }
//
// enum SideBarSection {
//   Profile,
//   Leaderboards,
//   Settings,
//   Logout,
// }
