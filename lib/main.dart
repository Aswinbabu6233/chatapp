import 'package:chatapp/Screens/Splash.dart';
import 'package:chatapp/Screens/mainpage.dart';
import 'package:chatapp/Screens/splash1.dart';
import 'package:flutter/material.dart';

const SAVE_KEY_VALUE = 'User_Login';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: splasScreen(),
    );
  }
}
