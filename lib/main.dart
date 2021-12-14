import 'package:breaking_bad/screen/home_screen.dart';
import 'package:breaking_bad/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breaking Bad',
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),
    );
  }
}

