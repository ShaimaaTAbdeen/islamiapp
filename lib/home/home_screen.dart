import 'package:flutter/material.dart';
import 'package:islamiapp/hadith/hadith_screen.dart';
import 'package:islamiapp/quran/quran_screen.dart';
import 'package:islamiapp/radio/radio_screen.dart';
import 'package:islamiapp/sebha/sebha_screen.dart';

class HomeScreen extends StatefulWidget
{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget>screens=[
    QuranScreen(),
    HadithScreen(),
    SebhaScreen(),
    RadioScreen()
    

  ];

  int current_index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[current_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFE2BE7F),
        fixedColor: Color(0xFFE2BE7F),
        currentIndex: current_index,
        onTap:(value) {
          current_index=value;
          setState(() {
            
          });
        },
        items: 
      [
        BottomNavigationBarItem(icon: Image.asset('assets/icons/quran_icon.png'),label:''),
        BottomNavigationBarItem(icon: Image.asset('assets/icons/hadeeth_icon.png'),label:''),
        BottomNavigationBarItem(icon: Image.asset('assets/icons/tasbeeh_icon.png'),label: ''),
        BottomNavigationBarItem(icon: Image.asset('assets/icons/radio_icon.png'),label: ''),


      ],
      ),

    );
  }
}