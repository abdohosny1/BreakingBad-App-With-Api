import 'dart:async';

import 'package:breaking_bad/screen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Timer(
      Duration(
        seconds: 4,),
            ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen()))
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash.jpg'),
          fit: BoxFit.fill
        )
      ),
    );
  }
}
