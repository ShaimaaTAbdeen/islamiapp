import 'package:flutter/material.dart';

class HadithScreenDetails extends StatelessWidget {
  HadithScreenDetails({super.key,required this.hadithNumber,required this.hadiths});
  String hadithNumber;
  List<String>hadiths;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xff202020),
        //leading: Icon(Icons.arrow_back,color: Color(0xffE2Be7F),),
        title:Text('Hadith $hadithNumber',style: TextStyle(
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
          Padding(
            padding: const EdgeInsets.only(top: 70,left:15,right: 15),
            child: SingleChildScrollView(
              
              child: Text(
                textAlign: TextAlign.center,
                '${hadiths[int.parse(hadithNumber)-1]}',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffE2Be7F),
                ),
              ),
            ),
          ),


        ]
      ),

    );
  }
}