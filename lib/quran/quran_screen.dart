import 'package:flutter/material.dart';
import 'package:islamiapp/quran/quran_screen_details.dart';
import 'package:islamiapp/widget/suranamewidget.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

          Image.asset('assets/images/home_screen_2.png',
          height: double.infinity,
          width: double.infinity,
          fit:BoxFit.fill,
          //scale:0.2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              SizedBox(height: 150,),
              Padding(
                //padding: EdgeInsets.only(left: 140,top: 0),
               padding: const EdgeInsets.symmetric(horizontal: 140),
               
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:Color(0xFFE2BE7F),
                  ),
                  //padding: EdgeInsets.only(top: 5) ,
                  width: 150,
                  height: 150,
                  
                  child: Image.asset('assets/icons/quran_back.png')
                  ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context,index)=>const Divider(),
                  itemCount: 20,
                  itemBuilder: (context,index)=>
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(context)
                      {
                        return QuranScreenDetails();
                        }
                        )
                        );
                  },
                  //child: Suranamewidget(sura_number:'1',sura_name: 'Al-Fatiha',sura_verses:'7' ,sura_name_arabic: 'الفاتحة',)),
                  child: Suranamewidget(sura_number:'1',sura_name_arabic: 'الفاتحة',)),

                  ),
              ),
              
              
              //SizedBox(height: 15,),
              //Center(child: Image.asset('assets/icons/line.png')),  

            ]
          )
        

      ],
  
    );
  }
}