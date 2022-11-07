import 'package:flutter/material.dart';
import 'package:socity/Settings/settings.dart';
import 'package:socity/common/BottomNavigationBar/bottomnavigationbar.dart';
import 'package:socity/common/utils/appcolors.dart';
import 'package:socity/common/widgets/auth/categories.dart';
import 'package:socity/common/widgets/input_text_field.dart';
import 'package:socity/src/favouraite/favouraite.dart';

import '../../common/utils/appcolors.dart';
import '../../common/widgets/auth/custom_elevated_button.dart';

class ProfileDetail extends StatefulWidget {
   final bool isBackNavigate;
   ProfileDetail({required this.isBackNavigate}) ;
  

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: 
  
         SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                

               
                SizedBox(height: size.height*0.07,),
               
                  widget.isBackNavigate ? GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 20,
                      color: Color(AppColors.primary),
                    ),
                  ) : const SizedBox.shrink(),
               SizedBox(height: size.height*0.02,),
            
                
                   Padding(
                    padding: EdgeInsets.only(left: 10),
                     child: Row(
                      children:  [
                                   const Text(
                          'Dein Profil',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                            color: Color(AppColors.primary),
                          ),
                         ),
                         Spacer(),
                      //  SizedBox(width: size.width*0.36,),
                               
                                
                               
                       const   CircleAvatar(
                                     radius: 18,
                                     backgroundColor: Colors.transparent,
                                     backgroundImage: AssetImage('assets/images/profile.png',),
                                    
                                   
                        ),
                        SizedBox(width: size.width*0.01,),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()));
                            },
                            icon: const Icon(
                              Icons.settings_outlined,
                              size: 29,
                              color: Color(AppColors.primary),
                            )),
                      ],
                                     ),
                   ),

                  //
                  SizedBox(height: size.height*0.03,),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      children:  [
                      GestureDetector(
                        onTap: ((){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Favouraite()));
                        }),
                        child: Categories(text: 'Favoriten',
                        color: (Colors.white),
                        textColor: Color(AppColors.primary),
                                         
                      
                        ),
                      ),
                      SizedBox(width: size.width*0.03,),
                      Categories(text: 'Personengruppe',
                      color: Color(AppColors.primary),
                      textColor: Colors.white,
                     
                             
                      )
                      ],
                    ),
                                 
                                 const SizedBox(
                    height: 28,
                                 ),
                                 const Text(
                    'Meine Heimatstadt',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                                 ),
                                 const SizedBox(
                    height: 16,
                                 ),
                                 Material(
                                  shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(10),

                    elevation: 6,
                    child: TextFormField(
                      obscureText: false,
                      //autofocus: false,
                             
                      decoration: InputDecoration(
                             
                          //icon: new Icon(Icons.lock, color: Color(0xff224597)),
                          hintText: 'Freiburg im Breisgau  (Baden-Württemberg)',
                          hintStyle: const TextStyle(
                            fontSize: 14,
                          ),
                          fillColor: Colors.white,
                          suffixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 20.0),
                            child: Image.asset(
                              'assets/images/pencil.png',
                              height: 28,
                              width: 28,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: Colors.white)),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                          enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15.0),
                              
                              
                            )),
                    ),
                                 ),
                                 const SizedBox(
                    height: 28,
                                 ),
                                 Material(
                                   shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(10),

                    elevation: 6,
                    child: TextFormField(
                      obscureText: false,
                      //autofocus: false,
                             
                      decoration: InputDecoration(
                             
                          //icon: new Icon(Icons.lock, color: Color(0xff224597)),
                          hintText: 'Mein Bezirk',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: const Padding(
                            padding: EdgeInsetsDirectional.only(end: 20.0),
                            child: Icon(
                              Icons.arrow_drop_down_rounded,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: Colors.white)),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3.0))),
                    ),
                                 ),
                                 const Padding(
                    padding: EdgeInsets.fromLTRB(0, 38, 0, 7),
                    child: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                                 ),
                                 Material(
                                   shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(10),

                    elevation: 6,
                    child: TextFormField(
                      obscureText: false,
                      //autofocus: false,
                             
                      decoration: InputDecoration(
                             
                          //icon: new Icon(Icons.lock, color: Color(0xff224597)),
                          hintText: 'Marcel',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 20.0),
                            child: Image.asset(
                              'assets/images/pencil.png',
                              height: 28,
                              width: 28,
                            ),
                          ),
                               focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: Colors.white)),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3.0))),
                    ),
                                 ),
                                 const Padding(
                    padding: EdgeInsets.fromLTRB(0, 38, 0, 7),
                    child: Text(
                      'E-Mail Adresse',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                                 ),
                                 Material(
                                   shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(10),

                    elevation: 6,
                    child: TextFormField(
                      obscureText: false,
                      //autofocus: false,
                             
                      decoration: InputDecoration(
                             
                          //icon: new Icon(Icons.lock, color: Color(0xff224597)),
                          hintText: 'marcel@socity.io',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 20.0),
                            child: Image.asset(
                              'assets/images/pencil.png',
                              height: 28,
                              width: 28,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: Colors.white)),
                          
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3.0))),
                    ),
                                 ),
                                 const Padding(
                    padding: EdgeInsets.fromLTRB(0, 38, 0, 7),
                    child: Text(
                      'Altersgruppe',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                                 ),
                                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: const Color(AppColors.primary),
                            text: '18-24',
                            textColor: const Color(AppColors.secondary),
                            elevationn: 10,
                            height: 61,
                            width: size.width*0.25),
                      ),
                       Padding(
                        padding: const  EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: const Color(AppColors.secondary),
                            text: '25-35',
                            textColor: const  Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                           width: size.width*0.25),
                      ),
                       Padding(
                        padding: const EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: const Color(AppColors.secondary),
                            text: '36-45',
                            textColor: const Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                              width: size.width*0.25
                            ),
                      ),
                    ],
                                 ),
                                 Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: Color(AppColors.secondary),
                            text: '46-55',
                            textColor: Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                            width: 110),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: Color(AppColors.secondary),
                            text: '56+',
                            textColor: Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                            width: 110),
                      ),
                    ],
                                 ),
                                 const Padding(
                    padding: EdgeInsets.fromLTRB(0, 38, 0, 7),
                    child: Text(
                      'Geschlecht',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                                 ),
                                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: const Color(AppColors.primary),
                            text: 'Weiblich',
                            textColor: const Color(AppColors.secondary),
                            elevationn: 10,
                            height: 61,
                             width: size.width*0.25
                           ),
                      ),
                     const Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: Color(AppColors.secondary),
                            text: 'Männlich',
                            textColor: Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                            width: 100),
                      ),
                     const  Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: Color(AppColors.secondary),
                            text: 'Divers',
                            textColor: Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                            width: 110),
                      ),
                    ],
                                 ),
                                 const Padding(
                    padding: EdgeInsets.fromLTRB(0, 38, 0, 7),
                    child: Text(
                      'Beruffstand',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                                 ),
                                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: const Color(AppColors.primary),
                            text: 'Arbeitnehmer:in',
                            textColor: const Color(AppColors.secondary),
                            elevationn: 10,
                            height: 61,
                             width: size.width*0.25),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: Color(AppColors.secondary),
                            text: 'Arbeitgeber:in',
                            textColor: Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                            width: 110),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: const Color(AppColors.secondary),
                            text: 'Student:in',
                            textColor: const Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                             width: size.width*0.24,
                            ),
                      ),
                    ],
                                 ),
                                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: const Color(AppColors.primary),
                            text: 'Schüler:in',
                            textColor: const Color(AppColors.secondary),
                            elevationn: 10,
                            height: 61,
                            width: size.width*0.24,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: Color(AppColors.secondary),
                            text: 'Rentner:in',
                            textColor: Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                            width: 110),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color:const  Color(AppColors.secondary),
                            text: 'Sonstiges',
                            textColor: const Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                             width: size.width*0.24,
                             ),
                      ),
                    ],
                                 ),
                                 const Padding(
                    padding: EdgeInsets.fromLTRB(0, 38, 0, 7),
                    child: Text(
                      'Kinder',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                                 ),
                                 Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 14, 11),
                        child: CustomElevatedButton(
                            color: Color(AppColors.secondary),
                            text: 'Ja',
                            textColor: Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                            width: 110),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 14, 11),
                        child: CustomElevatedButton(
                            color: Color(AppColors.secondary),
                            text: 'Nein',
                            textColor: Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                            width: 110),
                      ),
                    ],
                                 ),
                                 const Padding(
                    padding: EdgeInsets.fromLTRB(0, 38, 0, 7),
                    child: Text(
                      'Eingeschränkte Mobilität',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                                 ),
                                 Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 14, 11),
                        child: CustomElevatedButton(
                            color: Color(AppColors.secondary),
                            text: 'Ja',
                            textColor: Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                            width: 110),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 8, 11),
                        child: CustomElevatedButton(
                            color: Color(AppColors.secondary),
                            text: 'Nein',
                            textColor: Color(AppColors.primary),
                            elevationn: 10,
                            height: 61,
                            width: 110),
                      ),
                    ],
                                 ),
                                 Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
                    child: Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Color(AppColors.fillColor),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text.rich(
                TextSpan(
                  
                  children: [
                    
                
                    TextSpan(
                        text: '🚨 Eine Stadt besteht aus Menschen in\n unterschiedlichen Lebenssituationen. Um\n Bewertungen zielgruppengerecht anzeigen zu\n können fragen wir zusätzlich aber ',
                        style: TextStyle(
                          height: 1.3,
                          fontSize: 14,
                        )),
                 
                         TextSpan(
                        text:
                            'anonym ',
                        style: TextStyle(
                              decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                        )),
                           TextSpan(
                        text:
                            'nach\n deiner Person.',

                        style: TextStyle(
                          fontSize: 14
                        )),
                  ],
                ),
              ),
                          // child: Text(
                        //     "🚨 Eine Stadt besteht aus Menschen in\n unterschiedlichen Lebenssituationen. Um\n Bewertungen zielgruppengerecht anzeigen zu\n können fragen wir zusätzlich aber anonym nach\n deiner Person. ")),
                      ),)
                                 ),
                   ],),
                 )
              ],
            ),
          )
         ));
        // ),
      // ),
     
  }
}
