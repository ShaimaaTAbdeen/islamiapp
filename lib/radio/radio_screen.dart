import 'package:flutter/material.dart';
import'package:flutter_radio_player/flutter_radio_player.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
   


    return Stack(
      children: [
        Image.asset('assets/images/radio_screen_background.png',width: double.infinity,height: double.infinity,
        fit: BoxFit.fill,),
        Container(
          color:Colors.amber,
          child: MaterialButton(
            color:Colors.black,
            height: 150,
            onPressed:() {
               final _flutterRadioPlayerPlugin = FlutterRadioPlayer(); // Create an instance of the player
_flutterRadioPlayerPlugin.initialize(
  [
    {"url": "https://radio.garden/listen/quran-fm-98-2-idhaet-alqran-alkrym/GQxvGBNK"},
    {"url": "http://stream.riverradio.com:8000/wcvofm.aac"}
  ],
  true, // Auto play on load
);
              _flutterRadioPlayerPlugin.play();
            },
          
          ),
        )

      ]
      
      
    );
  }
  
}