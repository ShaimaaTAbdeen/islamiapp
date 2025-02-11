import 'package:flutter/material.dart';
import 'package:islamiapp/quran/quran_screen_details.dart';

class Suranamewidget extends StatelessWidget {
  Suranamewidget({super.key,required this.sura_number,required this.sura_name_arabic/*,required this.sura_name,required this.sura_verses*/});
  String sura_number;
  //String sura_name;
  //String sura_verses;
  String sura_name_arabic;
  

  @override
  Widget build(BuildContext context) {
    return Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 15,),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(child: Image.asset('assets/icons/sura_number.png')),
                        Text(this.sura_number,style:TextStyle(
                          fontSize: 20,
                          fontWeight:FontWeight.bold,
                          color:Colors.white,
                          
                          
                        ))
          
                      ]
                      
                    ),
                    SizedBox(width: 15,),
                    /*Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(this.sura_name,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                        Text(this.sura_verses+' verses',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                       
                      ],
                    ),*/
                    SizedBox(width: 230,),
                     Text(this.sura_name_arabic,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    
                  ],
                );
                
  }
}