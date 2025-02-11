import 'package:flutter/material.dart';

class Hadithnamewidget extends StatelessWidget {
  Hadithnamewidget({super.key,required this.hadithNumber,});

  String hadithNumber;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'حديث رقم $hadithNumber',
      style: TextStyle(
        fontSize: 36,
        color:Colors.white
      ),

    );
  }
}