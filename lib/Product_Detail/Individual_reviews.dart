import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:socity/Valuation/valuation.dart';
import 'package:socity/common/utils/appcolors.dart';

class IndividualReviews extends StatelessWidget {
  const IndividualReviews({super.key});

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

  return Column(children: [
    Container(
    height: size.height*0.32,
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
      )
    ],
    ),
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Column(children:  [
     Row(children: [
       Padding(
         padding: const  EdgeInsets.only(bottom:4.0,right: 10),
         child: Container(height:size.height*0.04,
                         width: size.width*0.11,
                        
                       decoration: const  BoxDecoration(
                         shape: BoxShape.circle,
                     
                       ),
                       child:  const CircleAvatar(
                      radius: 50,
                backgroundImage: AssetImage('assets/images/profile.png'),
             ),
                      
                ),
       ),
      Padding(
       padding:  const EdgeInsets.only(top: 9, ),
        child:  Container(height: size.height*0.07,
        // color: Colors.blue,
         width: size.width*0.7,
         child: const  Text('25-34, Student, Zugezogen, Männlich, Keine Kinder',style: TextStyle(fontSize: 15, height: 1.5),),
    
         ),
      ),   
     ],),
                Padding
                (
                  padding: EdgeInsets.only(left: 14),
                  child: Row(children: [
                     Container(
                        height: size.height*0.04,
                        width: size.width*0.3,
                        decoration: const  BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bar.png'))),),
                        SizedBox(width: size.width*0.04,),
                      const   Text(
               "4.50",
               textAlign: TextAlign.start,
               style: TextStyle(
                   // color: Color(AppColors.titleText),
                   fontSize: 16,
                   fontWeight: FontWeight.bold),
                      ),
                  ],),
                ),
                  const Divider(thickness: 1.2,
                color: Color(0xffe5e5e5),
          
                ),
                   const Text(
              "“Ich liebe Freiburg, aber der Verkehr ist ohne einen Stadttunnel eine Katastrophe!”",
              textAlign: TextAlign.start,
              style:   TextStyle(
                height: 1.3,
                  color: Color(AppColors.titleText),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
                            SizedBox(height: size.height*0.02,),
                          Row(children:   [
                            GestureDetector(
                              onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => ScrollValuation())));
      },
                              child: const     Text(
                                          "Details zeigne",
                                          textAlign: TextAlign.start,
                                          style:   TextStyle(
                                            height: 1.3,
                                              color: Color(AppColors.titleText),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                            ),
             SizedBox(width: size.width*0.02,),
           const  Icon(Icons.arrow_forward_ios,size: 14,),
                          ],)
    
    
    ]),
    ),
    
    ),

  
  SizedBox(height: size.height*0.02,),





  Container(
  height: size.height*0.2,
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
  )
    ],
  ),
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Column(children:  [
     Row(children: [
   Padding(
     padding: const  EdgeInsets.only(bottom:4.0,right: 10),
     child: Container(height:size.height*0.04,
                     width: size.width*0.11,
                    
                   decoration: const  BoxDecoration(
                     shape: BoxShape.circle,
                 
                   ),
                   child:  const CircleAvatar(
                  radius: 50,
            backgroundImage: AssetImage('assets/images/profile.png'),
         ),
                  
            ),
   ),
  Padding(
   padding:  const EdgeInsets.only(top: 9, ),
    child:   Container(height: size.height*0.07,
    // color: Colors.blue,
     width: size.width*0.7,
     child: const  Text('25-34, Student, Zugezogen, Männlich, Keine Kinder',style: TextStyle(fontSize: 15, height: 1.5),),
  
     ),
  ),   
     ],),
            Padding
            (
              padding: EdgeInsets.only(left: 14),
              child: Row(children: [
                 Container(
                    height: size.height*0.04,
                    width: size.width*0.3,
                    decoration: const  BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bar.png'))),),
                    SizedBox(width: size.width*0.04,),
                  const   Text(
           "4.50",
           textAlign: TextAlign.start,
           style: TextStyle(
               // color: Color(AppColors.titleText),
               fontSize: 16,
               fontWeight: FontWeight.bold),
                  ),
              ],),
            ),
              const Divider(thickness: 1.2,
            color: Color(0xffe5e5e5),
      
            ),
             
                      Row(children:   [
                        GestureDetector(
                          onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => ScrollValuation())));
      },
                          child: const     Text(
                                  "Details zeigne",
                                  textAlign: TextAlign.start,
                                  style:   TextStyle(
                                    height: 1.3,
                                      color: Color(AppColors.titleText),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                        ),
         SizedBox(width: size.width*0.02,),
       const  Icon(Icons.arrow_forward_ios,size: 14,),
                      ],)
  
  
    ]),
  ),
  
  ),
  ],);
  }
}