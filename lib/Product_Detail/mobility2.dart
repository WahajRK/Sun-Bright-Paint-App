import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:socity/Valuation/chat.dart';
import 'package:socity/Valuation/emotion_rating.dart';
import 'package:socity/Valuation/show_more.dart';
import 'package:socity/common/utils/appcolors.dart';

class Mobility2 extends StatelessWidget {
  const Mobility2({super.key});

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;

    return Container(
  height: size.height*0.36,
  width: double.infinity,
  decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    boxShadow: [
      BoxShadow(
        color: Color(0xffDDDDDD),
        blurRadius: 6.0,
        spreadRadius: 2.0,
        offset: Offset(0.0, 0.0),
      ),
    ],
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 13),
    child: Column(children: [
      Row(children: [
         Container(
          //  color: Colors.grey,
           height:size.height*0.04,
                 width: size.width*0.59,
           child: const Text(
           "Mobilität",
           textAlign: TextAlign.start,
           style: TextStyle(
               // color: Color(AppColors.titleText),
               fontSize: 22,
               fontWeight: FontWeight.bold),
                  ),
         ),
                  // SizedBox( width: size.width*0.1,),
                
                  Container(height:size.height*0.07,
                width: size.width*0.07,
               decoration:  const  BoxDecoration(
                 shape: BoxShape.circle,
                  // color: Color(AppColors.titleText),
                  image: DecorationImage(image: AssetImage('assets/images/sad.png'))
               ),
             
                   ),
         SizedBox( width: size.width*0.06,),
         const Text(
         "3.99",
         textAlign: TextAlign.center,
         style: TextStyle(
             // color: Color(AppColors.titleText),
             fontSize: 16,
             fontWeight: FontWeight.bold),
                  ),
  
      ],
      
      ),
      const Divider(thickness: 1.2,
            height: 1,
              color: Color(0xffe5e5e5),),
               
             EmotionRating(texxt: 'Öffentliche Verkehrsmittel',rating: '5.00',imagess: 'assets/images/love.png',) ,
            
              EmotionRating(texxt: 'Fahrrradfreundlichkeit',rating: '1.23',imagess: 'assets/images/angry.png',), 
              EmotionRating(texxt: 'Verkehr & Stau',rating: '3.99',imagess: 'assets/images/normal.png',), 
             
             EmotionRating(texxt: 'Barrierefreiheit',rating: '4.50',imagess: 'assets/images/happy.png',),
             
              SizedBox(height: size.height*0.02,),
           

    ]),
  ),
  );
  }
}