import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/hadith/hadith_screen_details.dart';
import 'package:islamiapp/widget/hadithnamewidget.dart';
import 'package:islamiapp/widget/suranamewidget.dart';

class HadithScreen extends StatefulWidget {
  HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  List<String>hadiths=[];
  @override
  void initState() {
    // TODO: implement initState
     loadHadith();
    super.initState();
  }

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
                  itemCount: hadiths.length-1,
                  itemBuilder: (context,index)=>
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(context)
                      {
                        return HadithScreenDetails(hadithNumber:(index+1).toString(),hadiths: hadiths,);
                        }
                        )
                        );
                  },
                child: Hadithnamewidget(hadithNumber: (index+1).toString(),),
                ),
                
                  ),
              ),
              
      ]
        )
      ]
      
    );
  }

  void loadHadith() async
  {
    String content = await rootBundle.loadString('assets/ahadeth.txt');
    hadiths=content.split('#');
    setState(() {
      
    });
    print(hadiths.length);
   
    
   
  }
}