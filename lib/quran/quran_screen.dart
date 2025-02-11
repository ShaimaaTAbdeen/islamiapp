
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/quran/quran_screen_details.dart';
import 'package:islamiapp/widget/suranamewidget.dart';

class QuranScreen extends StatelessWidget {
   QuranScreen({super.key});
  List<String>suraNames = ['الفاتحة'
  ,'البقرة'
  , 'آل عمران'
  ,'النساء'
  ,'المائدة'
  ,'الأنعام'
  ,'الأعراف'
  , 'الأنفال'
  ,'التوبة'
  ,'يونس'
  ,'هود'
  ,'يوسف'
  ,'الرعد'
  ,'إبراهيم'
  ,'الحج'
  ,'النحل'
  ,'الإسراء'
  , 'الكهف'
  ,'مريم'
  ,'طه'
  ,'الأنبياء'
  ,'الحج'
  ,'المؤمنون'
  ,'النور'
  ,'الفرقان'
  ,'الشعراء'
  ,'النمل'
  ,'القصص'
  ,'العنكبوت'
  ,'الروم'
  ,'لقمان'
  ,'السجدة'
  ,'الأحزاب'
  ,'سبأ'
  ,'فاطر'
  ,'يس'
  ,'الصافات'
  ,'ص'
  ,'الزمر'
  ,'غافر'
  ,'فصلت'
  ,'الشورى'
  ,'الزخرف'
  ,'الدخان'
  ,'الجاثية'
  ,'الأحقاف'
  ,'محمد'
  ,'الفتح'
  ,'الحجرات'
  ,'ق'
  ,'الذاريات'
  ,'الطور'
  ,'النجم'
  ,'القمر'
  ,'الرحمن'
  ,'الواقعة'
  ,'الحديد'
  ,'المجادلة'
  ,'الحشر'
  ,'الممتحنة'
  ,'الصف'
  ,'الجمعة'
  ,'المنافقون'
  ,'التغابن'
  ,'الطلاق'
  ,'التحريم'
  ,'الملك'
  ,'القلم'
  ,'الحاقة'
  ,'المعارج'
  ,'نوح'
  ,'الجن'
  ,'المزمل'
  ,'المدثر'
  ,'القيامة'
  ,'الإنسان'
  ,'المرسلات'
  ,'النبأ'
  ,'النازعات'
  ,'عبس'
  ,'التكوير'
  ,'الانفطار'
  ,'المطففين'
  ,'الانشقاق'
  ,'البروج'
  ,'الطارق'
  ,'الأعلى'
  ,'الغاشية'
  ,'الفجر'
  ,'البلد'
  ,'الشمس'
  ,'الليل'
  ,'الضحى'
  ,'الشرح'
  ,'التين'
  ,'العلق'
  ,'القدر'
  ,'البينة'
  ,'الزلزلة'
  ,'العاديات'
  ,'القارعة'
  ,'التكاثر'
  ,'العصر'
  ,'الهمزة'
  ,'الفيل'
  ,'قريش'
  ,'الماعون'
  ,'الكوثر'
  ,'الكافرون'
  ,'النصر'
  ,'المسد'
  ,'الإخلاص'
  ,'الفلق'
  ,'الناس'];

  List<String>suraNamesEnglish=[
'al-Fātihah',
'al-Baqarah',
'Āl-i-Imrān',
'an-Nisā',
'al-Māidah',
'al-Anām',
'al-Arāf',
'al-Anfāl',
'at-Tawbah',
'Yūnus',
'Hūd',
'Yūsuf',
'ar-Rad',
'Ibrāhīm',
'al-Hijr',
'an-Nahl',
'al-Isrā',
'al-Kahf',
'Maryam',
'Tāhā',
'al-Ambiyā',
'al-Hajj',
'al-Muminūn',
'an-Nūr',
'al-Furqān',
'ash-Shuarā',
'an-Naml',
'al-Qasas',
'al-Ankabūt',
'ar-Rūm',
'Luqmān',
'as-Sajdah',
'al-Ahzāb',
'Saba',
'Fātir',
'Yāsīn',
'as-Sāffāt',
'Sād',
'az-Zumar',
'Ghāfir',
'Fussilat',
'ash-Shūrā',
'az-Zukhruf',
'ad-Dukhān',
'al-Jāthiyah',
'al-Ahqāf',
'Muhammad',
'al-Fath',
'al-Hujurāt',
'Qāf',
'adh-Dhāriyāt',
'at-Tūr',
'an-Najm',
'al-Qamar'
'ar-Rahmān',
'al-Wāqiah',
'al-Hadīd',
'al-Mujādalah',
'al-Hashr',
'al-Mumtahinah',
'as-Saff',
'al-Jumuah'
'al-Munāfiqūn',
'at-Taghābun',
'at-Talāq',
'at-Tahrīm',
'al-Mulk',
'al-Qalam',
'al-Hāqqah',
'al-Maārij',
'Nūh',
'al-Jinn',
'al-Muzzammil',
'al-Muddaththir',
'al-Qiyāmah'
'al-Insān',
'al-Mursalāt',
'an-Naba',
'an-Nāziāt'
'Abasa',
'at-Takwīr',
'al-Infitār',
'al-Mutaffifīn',
'al-Inshiqāq',
'al-Burūj',
'at-Tāriq',
'al-Alā',
'al-Ghāshiyah',
'al-Fajr',
'al-Balad',
'ash-Shams',
'al-Layl',
'ad-Duhā',
'ash-Sharh',
'at-Tīn',
'al-Alaq',
'al-Qadr',
'al-Bayyinah',
'az-Zalzalah',
'al-Ādiyāt',
'al-Qāriah',
'at-Takāthur',
'al-Asr',
'al-Humazah',
'al-Fīl',
'al-Quraysh'
'al-Māūn',
'al-Kawthar',
'al-Kāfirūn',
'an-Nasr',
'al-masad',
'al-Ikhlās',
'al-Falaq',
'al-Nās'
  ];


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
                  itemCount: suraNames.length,
                  itemBuilder: (context,index)=>
                Suranamewidget(index: index+1,sura_number:(index+1).toString(),sura_name_arabic: suraNames[index],sura_name: suraNamesEnglish[index],),
 
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