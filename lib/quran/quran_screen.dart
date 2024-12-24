import 'package:flutter/material.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/home_screen_2.png',
        width:double.maxFinite ,
        height: double.maxFinite,
        fit:BoxFit.cover
        
        ),

      ],
  
    );
  }
}