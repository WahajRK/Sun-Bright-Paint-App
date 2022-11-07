import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socity/common/BottomNavigationBar/bottomnavigationbar.dart';
import 'package:socity/src/profile_detail/profile_detail.dart';

import '../common/utils/appcolors.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
         

      body: SafeArea
      (
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column
          (crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: size.height*0.01,),
            
                 GestureDetector(
                  onTap: (() {
                            Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  ProfileDetail(
                              isBackNavigate: true,
                            )));
                  }),
                  child: Icon(Icons.arrow_back_ios)),
                SizedBox(height: size.height*0.03,),
                
         const Text(
              "Einstellungen",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(AppColors.titleText),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),SizedBox(height: size.height*0.04,),
                 
         const Text(
              "Kontoeinstellungen",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(AppColors.titleText),
                  fontSize: 22,
                  ),
            ),
            SizedBox(height: size.height*0.02,),
                 
         const Text(
              "Rechtliches",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(AppColors.titleText),
                  fontSize: 22,
                  ),
            ),
            SizedBox(height: size.height*0.02,),
                 
         const Text(
              "Sprache",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(AppColors.titleText),
                  fontSize: 22,
                  ),
            ),SizedBox(height: size.height*0.02,),
                 
         const Text(
              "Livestandort",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(AppColors.titleText),
                  fontSize: 22,
                  ),
            ),
            
          ],),
        ),
      ),
    );
  }
}