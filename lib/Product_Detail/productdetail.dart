// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socity/Product_Detail/Individual_reviews.dart';
import 'package:socity/Product_Detail/entertainment2.dart';
import 'package:socity/Product_Detail/infrastructure1.dart';
import 'package:socity/Product_Detail/mobility2.dart';
import 'package:socity/Product_Detail/word&education2.dart';
import 'package:socity/common/BottomNavigationBar/bottomnavigationbar.dart';
import 'package:socity/common/utils/appcolors.dart';
import 'package:socity/src/search/search_screen.dart';

import '../common/widgets/auth/mobility.dart';
import '../src/Filter/filter.dart';
import 'life&people1.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: NavigationBarr(),
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.transparent,
      //   items: <Widget>[
      //     Icon(Icons.home, size: 30),
      //     Image(
      //       image: AssetImage('assets/images/love.png'),
      //     ),
      //     Icon(Icons.compare_arrows, size: 30),
      //   ],
      //   onTap: (index) {
      //     //Handle button tap
      //   },
      // ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: size.height * 0.4,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/church3.png"))),
            child: Stack(children: [
              Positioned(
                left: 20,
                top: 20,
                child: Row(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  SearchScreen(isBackNavigatee: true,)));
                      }),
                      child: Container(
                        height: size.height * 0.09,
                        width: size.width * 0.09,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 16,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    Container(
                      height: size.height * 0.09,
                      width: size.width * 0.09,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.upload,
                            color: Colors.black,
                            size: 16,
                          )),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Container(
                      height: size.height * 0.09,
                      width: size.width * 0.09,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 16,
                          )),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 210,
                  left: 20,
                  child: Row(
                    children: const [
                      Text(
                        "Baden-Württemberg",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  top: 235,
                  left: 20,
                  child: Row(
                    children: const [
                      Text(
                        "Freiburg im Breisgau",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              Positioned(
                  top: 255,
                  left: 25,
                  child: Row(
                    children: [
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.53,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/bar.png'))),
                      ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      const Text(
                        "3.74",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      const Text(
                        "(80)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      const Text(
                        "68%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ]),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  height: size.height * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                        colors: [Color(0xffFFC107), Color(0xffFD8843)]),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Text(
                      "Jetzt bewerten",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FilterScreen()));
                      },
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(AppColors.titleText),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 25,
                                width: 20,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/filter.png"))),
                              ),
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                              const Text(
                                "Filter",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    // color: Color(AppColors.titleText),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.12,
                    ),
                    const Text(
                      "Sortieren:",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        // color: Color(AppColors.titleText),
                        fontSize: 14,
                      ),
                    ),
                    const Text(
                      "Beste Bewertung",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(AppColors.titleText),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: size.width * 0.03),
                    Container(
                      height: size.height * 0.03,
                      width: size.width * 0.03,
                      decoration: const BoxDecoration(

                          // color: Color(AppColors.titleText),
                          image: DecorationImage(
                              image: AssetImage('assets/images/arrowdown.png'),
                              fit: BoxFit.contain)),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const liftpeople1(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const infrastructure1(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const WorkEducation2(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Mobility2(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Entertainment2(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Text(
                  "Individuelle Bewertungen",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      // color: Color(AppColors.titleText),
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                const IndividualReviews(),
                 SizedBox(
                  height: size.height * 0.03,
                ),
                
              ],
                    ),
          )
        ],
        ),
      )
    );
  }
}
