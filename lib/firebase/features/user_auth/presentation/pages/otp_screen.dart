// import 'package:first_project/bottom_navigations/home_bottom.dart';
// import 'package:first_project/firebase/features/user_auth/presentation/pages/home_page.dart';
// import 'package:flutter/material.dart';
//
// class OTPScreen extends StatelessWidget {
//   OTPScreen({Key? key}) : super(key: key);
//
//   // Define your text constants
//   static const String tOtpTitle = "Enter OTP";
//   static const String tOtpSubTitle = "Please enter the verification code";
//   static const String tOtpMessage =
//       "For support, email us at support@codingwitht.com";
//   static const String tNext = "NEXT";
//
//   // Define a value for tDefaultSize (replace with your desired padding)
//   static const double tDefaultSize = 20.0;
//
//   TextEditingController otpController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(tDefaultSize),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               tOtpTitle,
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0),
//             ),
//             Text(tOtpSubTitle.toUpperCase(),
//                 style: Theme.of(context).textTheme.headline6),
//             const SizedBox(height: 40.0),
//             const Text(tOtpMessage, textAlign: TextAlign.center),
//             const SizedBox(height: 20.0),
//             TextField(
//               controller: otpController, // Controller for OTP input
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 hintText: 'Enter OTP',
//               ),
//               onSubmitted: (code) {
//                 print("OTP is => $code");
//                 // Handle OTP submission here
//                 // You can use code for further processing
//               },
//             ),
//
//             //  ENTER OTP FIELD
//             const SizedBox(height: 20.0),
//
//
//             // OTP BUTTON
//         SizedBox(
//                 width: 350,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => MainHomePage()));
//
//                     // Handle the "Next" button click
//                     String otp = otpController.text;
//                     print("OTP is => $otp");
//
//                     // Add code to process the OTP as needed
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Color(0xFF30CBF8),
//                   ),
//                   child: Text(tNext,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         letterSpacing: 2.0,
//                       )),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
