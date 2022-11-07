import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socity/Product_Detail/productdetail.dart';
import 'package:socity/common/BottomNavigationBar/bottomnavigationbar.dart';
import 'package:socity/common/utils/appcolors.dart';
import 'package:socity/common/widgets/auth/carousel_pages.dart';
import 'package:socity/src/profile_detail/profile_detail.dart';

import '../../Settings/settings.dart';
import '../../common/utils/images.dart';
import '../../common/widgets/auth/categories.dart';
import '../search/search_screen.dart';

class Favouraite extends StatefulWidget {
  const Favouraite({Key? key}) : super(key: key);

  @override
  State<Favouraite> createState() => _FavouraiteState();
}

class _FavouraiteState extends State<Favouraite> {
  final List<String> images = [
    church,
    church2,
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return Scaffold(
    // bottomNavigationBar: NavigationBarr(),
    // //   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    //   floatingActionButton:  FloatingActionButton(
    //   elevation: 0.0,
    //   backgroundColor: 
    //   const  Color(0xFFE57373),
    //   onPressed: (){},
    //   child:  const  Icon(Icons.check),

    // ),

      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         
               
             SizedBox(height: size.height*0.1,),

               Row(
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
                       
          //  SizedBox(width: size.width*0.33,),

 

                     GestureDetector(
                      onTap: (() {
                           Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  ProfileDetail(
                              isBackNavigate: true,
                            )));   
                      }),
                       child: const   CircleAvatar(
                                       radius: 16,
                                       backgroundColor: Colors.transparent,
                                       backgroundImage: AssetImage('assets/images/profile.png',),
                                      
                                     
                        ),
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
                            size: 30,
                            color: Color(AppColors.primary),
                          )),
                    ],
                  ),
                
               SizedBox(height: size.height*0.03,),
                 Row(
                    children:  [
                    Categories(text: 'Bewertungen',
                    color: (Colors.white),
                    textColor: const Color(AppColors.primary),
                   

                    ),
                    SizedBox(width: size.width*0.03,),
                    Categories(text: 'Favoriten',
                    color: const Color(AppColors.primary),
                    textColor: Colors.white,
                   

                    ),     SizedBox(height: size.height*0.03,),

                     Categories(text: 'Über dich',
                    color: (Colors.white),
                    textColor: const Color(AppColors.primary),
                    ),
                    SizedBox(width: size.width*0.03,),
                    ],
                  ),
                     SizedBox(height: size.height*0.03,),

            
                   const     Text(
                        'Deine Favoriten',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(AppColors.primary),
                        ),
                       ),
              const SizedBox(
                height: 12,
              ),

              ///CAROUSEL
             const  SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: Carousel(
                    imagee:  'assets/images/church.png',
                    textbig: 'Freiburg im Breisgau',
                    textsmall: 'Baden-Württemberg',
                  )),      
             
              SizedBox(
                height: size.height * 0.1,
              ),
            
          ]))
          // )
          );
        
      
    
  }
}
