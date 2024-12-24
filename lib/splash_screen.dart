import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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