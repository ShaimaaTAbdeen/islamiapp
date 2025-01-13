import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/radio_screen_background.png',width: double.infinity,height: double.infinity,
        fit: BoxFit.fill,),

      ]
      
      
    );
  }
}