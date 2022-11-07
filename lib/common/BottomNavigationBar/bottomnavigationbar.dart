import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socity/Rating_Process/rating_process.dart';
import 'package:socity/common/utils/appcolors.dart';
import 'package:socity/src/Home/home.dart';
import 'package:socity/src/favouraite/favouraite.dart';
import 'package:socity/src/profile_detail/profile_detail.dart';
import 'package:socity/src/search/search_screen.dart';

class NavigationBarr extends StatefulWidget {
  const NavigationBarr({super.key});

  @override
  State<NavigationBarr> createState() => _NavigationBarrState();
}

class _NavigationBarrState extends State<NavigationBarr> {

  int currentPage = 0;

  List<Widget> pages = [
    HomeScreen(),
    Favouraite(),
    SearchScreen(isBackNavigatee: false,),
    RatingProcess(),
   ProfileDetail(
    isBackNavigate: false,
   ),

  ];
  // var page = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentPage],
      bottomNavigationBar: CurvedNavigationBar(
        // key: _bottomNavigationKey,
        // index: 0,
        height: 50.0,
        items: <Widget>   [
            Icon(Icons.home, size: 30, color: Color(0xffd9d9e2),),
            Icon(
                Icons.favorite_rounded,
                size: 30,
                color: Color(0xffd9d9e2),
           ),
    
              CircleAvatar(
            foregroundColor: Colors.tealAccent,
            radius: currentPage == 2 ? 40 : 25,
            //  backgroundColor: Colors.red,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(
              'assets/images/search.png',
            ),
          ),
          // Icon(Icons.search, size: 30,color: Color(0xffd9d9e2)),
           Icon(Icons.notifications, size: 30, color: Color(0xffd9d9e2)),
         
                   Icon(Icons.person, size: 30, color: Color(0xffd9d9e2)),
        ],
        onTap: ((index) {
              print(index);
              setState(() {
                currentPage =index;
    
              });
        }),
        color: Colors.white,
        buttonBackgroundColor:  Color(AppColors.bodyText),
    
        backgroundColor: Colors.transparent,
        // animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
      ),
    );
  }
}
