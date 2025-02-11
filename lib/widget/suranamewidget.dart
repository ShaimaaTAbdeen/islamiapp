import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/quran/quran_screen_details.dart';

class Suranamewidget extends StatefulWidget {
  Suranamewidget({super.key,required this.index, required this.sura_number,required this.sura_name_arabic,required this.sura_name,/*required this.sura_verses*/});
  String sura_number;
  String sura_name;
  String sura_name_arabic;
  int index;

  @override
  State<Suranamewidget> createState() => _SuranamewidgetState();
}

class _SuranamewidgetState extends State<Suranamewidget> {
  String sura_verses='';
  @override
  void initState() {
    // TODO: implement initState
    loadVerses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(context)
                      {
                        return QuranScreenDetails(number: widget.index,title: widget.sura_name_arabic,titleEng: widget.sura_name,);
                        }
                        )
                        );
                  },
      child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 15,),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Container(child: Image.asset('assets/icons/sura_number.png')),
                          Text(this.widget.sura_number,style:TextStyle(
                            fontSize: 20,
                            fontWeight:FontWeight.bold,
                            color:Colors.white,
                            
                            
                          ))
            
                        ]
                        
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(this.widget.sura_name,style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                          
                          Text('${sura_verses} verses',style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                         
                        ],
                      ),
                      const Spacer(),
                       Text(this.widget.sura_name_arabic,
                       textAlign: TextAlign.end,
                       style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            
                          )),
                      
                    ],
                  ),
    );
                
  }

  void loadVerses()async
  {
    String content = await rootBundle.loadString('assets/files/files/${widget.sura_number}.txt');
    List<String> data=content.split('\n');
  
    sura_verses= data.length.toString();
    setState(() {
      
    });
  }
}