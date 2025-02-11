import 'package:flutter/material.dart';
import 'package:islamiapp/hadith/hadith_screen_details.dart';
import 'package:islamiapp/widget/suranamewidget.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/home_screen_background.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,),
        Column(
          children: [
          SizedBox(height: 150,),
          Padding(
                //padding: EdgeInsets.only(left: 140,top: 0),
               padding: const EdgeInsets.symmetric(horizontal: 140),
               
                child: Image.asset('assets/icons/bearish.png'),
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
                        return HadithScreenDetails();
                        }
                        )
                        );
                  },
                //  child: Suranamewidget(sura_number:'1',sura_name_arabic: 'Hadith 1',)
                ),
                
                  ),
              ),
              
      ]
        )
      ]
      
    );
  }
}