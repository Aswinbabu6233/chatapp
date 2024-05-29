import 'dart:async';

import 'package:chatapp/Screens/Splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class splash1 extends StatefulWidget {
  const splash1({super.key});

  @override
  State<splash1> createState() => _splash1State();
}

class _splash1State extends State<splash1> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => splasScreen(),
          ));
    });
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: 450,
        width: double.infinity,
        child: Lottie.asset("assets/animation/splash1.json"),
      ),
      // body: Container(
      //     decoration: const BoxDecoration(
      //         gradient: LinearGradient(
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //             colors: [Colors.white, Colors.purple, Colors.deepPurple])),
      //     child: Column(
      //       children: [Text("")],
      //     )),
    );
  }
}
