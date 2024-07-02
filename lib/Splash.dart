// import 'dart:async';
// import 'package:chat_byte/view/Home.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   String _welcomeMessage = 'Welcome to Chat Byte';
//   List<String> _words = [];
//   int _currentWordIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _words = _welcomeMessage.split(' ');

//     _startSplashScreenTimer();
//   }

//   void _startSplashScreenTimer() {
//     Timer(Duration(seconds: 3), _navigateToNextScreen);
//   }

//   void _navigateToNextScreen() {
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(builder: (context) => HomeScreen()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/images/CHATBYTE.ai (1).png', // Replace with your asset image
//               width: 300,
//               height: 300,
//             ),
//             SizedBox(height: 20),
//             Wrap(
//               alignment: WrapAlignment.center,
//               children: _words.map((word) {
//                 return Text(
//                   ' $word',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
