// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset('assets/splash_video.mp4')
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized
//         setState(() {});
//         // Play the video
//         _controller.play();
//         // Set a timer to navigate to next screen after 6 seconds
//         Timer(Duration(seconds: 6), () {
//           // Navigate to next screen
//           // Example: Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NextScreen()));
//         });
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           _controller.value.isInitialized
//               ? AspectRatio(
//             aspectRatio: _controller.value.aspectRatio,
//             child: VideoPlayer(_controller),
//           )
//               : Container(),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
