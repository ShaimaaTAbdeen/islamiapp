import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double counter =0;
  int countTasbeeh=1;
  String tasbeeha="سبحان الله";
  @override
  Widget build(BuildContext context) {
    setTasbeeh();
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset('assets/images/sebha_screen_background.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 90,),
            Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى',style: 
            TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color:Colors.white
            ),),
            SizedBox(height: 70,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  right: 100,
                  bottom: 290,
                  child: Image.asset('assets/icons/mask_group.png',height: 80,width: 80,)),
                InkWell(
                  onTap: () {
                    counter++;
                    setState(() {
                      
                    });
                  },
                  child: Transform.rotate(
                    angle: counter,
                    child: Image.asset('assets/icons/sebhabody.png',height: 300,width: 300,)),
                ),
                Container(
                  padding: EdgeInsets.only(left: 75,right: 75,top: 100),
                  child: Text(tasbeeha,style: TextStyle(
                    color: Colors.white,
                    fontSize: 36
                  ),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 120,right: 120,top: 170),
                  child: Text(counter.toString().replaceAll('.0', ''),style: TextStyle(
                    color: Colors.white,
                    fontSize: 36
                  ),),
                ),


              ],
            )
            
          ],
        )
      ],
    );

  }
  void setTasbeeh()
  {
    if(counter>30)
    {
      countTasbeeh++;
      counter=0;
      setState(() {
        
      });
    }
    if(countTasbeeh==2)
    {
      tasbeeha='الحمد لله';
      setState(() {
      
    });
      
    }
    else if(countTasbeeh ==3)
    {
      tasbeeha = 'لا إله إلا الله';
      setState(() {
      
    });
    }
    else if(countTasbeeh==4)
    {
      tasbeeha = 'الله أكبر';
      setState(() {
      
    });
    }
    else
    {
   tasbeeha="سبحان الله";
   countTasbeeh=1;
    setState(() {
      
    });
    }
    
  }
}