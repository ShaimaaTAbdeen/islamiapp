import 'package:flutter/material.dart';
import 'package:islamiapp/splash_screen.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Islami App",
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
      
   
      
    );
  }
}

