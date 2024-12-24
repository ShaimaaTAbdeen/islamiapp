import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamiapp/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()
  {

    Timer(Duration(seconds: 3),()
    {
      Navigator.of(context).push(
        MaterialPageRoute(builder:(context)
        {
          return HomeScreen();
        }


        )
      );

    });
    super.initState();
  

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Image.asset('assets/images/splash_screen.png',
      width:double.infinity,
      height: double.infinity,
      fit:BoxFit.cover),

    );
  }
}