import 'dart:async';

import 'package:flutter/material.dart';
import 'package:we_tassks/task_8_may/start_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds, then navigate to Home
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => StartScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Image.asset('assets/images/six.jpg')]),
    );
  }
}
