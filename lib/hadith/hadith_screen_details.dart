import 'package:flutter/material.dart';

class HadithScreenDetails extends StatelessWidget {
  const HadithScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xff202020),
        //leading: Icon(Icons.arrow_back,color: Color(0xffE2Be7F),),
        title:Text('Hadith 1',style: TextStyle(
         color:  Color(0xffE2Be7F),
         fontSize: 20,
         fontWeight: FontWeight.bold,
        
        ),),
        centerTitle: true,
        iconTheme: IconThemeData(
          color:Color(0xffE2Be7F)
        ),

      ),
      body: Stack(
        children: [
          Image.asset('assets/images/soura_details_screen_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,),


        ]
      ),

    );
  }
}