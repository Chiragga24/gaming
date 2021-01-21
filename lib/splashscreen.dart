import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gaming/start.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    setState(() {
      Timer(Duration(seconds: 3), () => {check()});
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 150.0,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/logo.png'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void navigateUser() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Startpage(),
      ),
    );
  }

  check() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Startpage(),
      ),
    );
  }
}
