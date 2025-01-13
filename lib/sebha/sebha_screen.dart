import 'package:flutter/material.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset('assets/images/sebha_screen_background.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى',style: 
            TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color:Colors.white
            ),),
          ],
        )
      ],
    );
  }
}