import 'dart:async';
import 'package:chat_byte/view/Home.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  String _welcomeMessage = 'Welcome to Chat Byte';
  List<String> _words = [];
  int _currentWordIndex = 0;
  bool _internetAvailable = false;

  @override
  void initState() {
    super.initState();
    _words = _welcomeMessage.split(' ');
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();

    _checkInternetConnectivity();
  }

  Future<void> _checkInternetConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setState(() {
        _internetAvailable = true;
      });
      _showNextWord();
    } else {
      setState(() {
        _internetAvailable = false;
      });
    }
  }

  void _showNextWord() {
    if (_currentWordIndex < _words.length) {
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          _currentWordIndex++;
          _controller.reset();
          _controller.forward();
        });
        _showNextWord();
      });
    } else {
      _navigateToNextScreen();
    }
  }

  void _navigateToNextScreen() {
    if (_internetAvailable) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('No Internet'),
          content: Text('Please turn on your internet connection.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _checkInternetConnectivity();
              },
              child: Text('Retry'),
            ),
          ],
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _animation,
              child: Image.asset(
                'assets/images/CHATBYTE.ai (1).png', // Replace with your asset image
                width: 300,
                height: 300,
              ),
            ),
            SizedBox(height: 20),
            Wrap(
              alignment: WrapAlignment.center,
              children: _words.asMap().entries.map((entry) {
                int idx = entry.key;
                String word = entry.value;
                return AnimatedOpacity(
                  opacity: _currentWordIndex > idx ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Text(
                    ' $word',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
