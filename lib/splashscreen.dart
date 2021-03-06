import 'dart:async';

import 'package:flutter/cupertino.dart';
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
      Timer(Duration(seconds: 5), () => {check()});
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(57, 62, 70, 10),
        body: Center(
            child: ClipOval(
              child: Image.asset(
                "assets/logo.png",
                height: 400,
                width: 400,
                fit: BoxFit.cover,
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
