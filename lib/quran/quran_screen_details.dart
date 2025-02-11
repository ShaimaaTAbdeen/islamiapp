import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranScreenDetails extends StatefulWidget {
  QuranScreenDetails({super.key,required this.number,required this.title,required this.titleEng});
  int number;
  String title;
  String titleEng;

  @override
  State<QuranScreenDetails> createState() => _QuranScreenDetailsState();
}

class _QuranScreenDetailsState extends State<QuranScreenDetails> {
  List<String>verses=[];
  @override
  void initState() {
    
    super.initState();
    loadFile();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xff202020),
        //leading: Icon(Icons.arrow_back,color: Color(0xffE2Be7F),),
        title:Text(widget.titleEng,style: TextStyle(
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
            padding: const EdgeInsets.only(left: 20,right: 20,top:70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(widget.title,style: TextStyle(
                  color: Color(0xffE2BE7F),
                  fontSize: 24
                ),),
                SizedBox(height: 30,),
                Expanded(
                  child: ListView.separated(itemBuilder:(context, index) => Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border:Border.all(color: Color(0xffE2BE7F)) ,
                    ),
                    child: Text("${[index+1]} ${verses[index]}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xffE2BE7F),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
                    ), 
                  separatorBuilder:(context, index) => SizedBox(height: 10,), 
                  itemCount: 
                  verses.length),
                ),
              ],
            ),
          )


        ]
      ),

    );
  }

   void loadFile()async
  {
    String content = await rootBundle.loadString('assets/files/files/${this.widget.number}.txt');
    List<String> data=content.split('\n');
    verses=data;
    setState(() {
      
    });
    //print(content);
  }
}