import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: ((context) => MyHomePage(
                    title: 'Trial and Error',
                  )),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('/assest/download.png'),
      ),
    );
  }
}
