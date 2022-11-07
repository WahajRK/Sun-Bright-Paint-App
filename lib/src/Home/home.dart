import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socity/Product_Detail/productdetail.dart';
import 'package:socity/common/BottomNavigationBar/bottomnavigationbar.dart';
import 'package:socity/common/utils/appcolors.dart';
import 'package:socity/common/widgets/auth/carousel_pages.dart';

import '../../common/utils/images.dart';
import '../search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    church,
    church2,
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return Scaffold(
    // bottomNavigationBar: NavigationBarr(),
      // body:
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                '📍 Freiburg im Breisgau',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Color(AppColors.primary),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Guten Morgen, Marcel! 👋🏼',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  color: Color(AppColors.primary),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 8, 8),
                child: Center(
                  child: Row(
                    children:  [
                     const  Text(
                        'Deine Städte',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(AppColors.primary),
                        ),
                      ),
                    const   Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchScreen(isBackNavigatee: true,)));
                        },
                        child: const Text(

                          'Alle ansehen',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(AppColors.primary),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),

              ///CAROUSEL
             GestureDetector(
              onTap: () {
                ProductDetail();
                
              },
               child: const  SizedBox(
                    height: 400,
                    width: double.infinity,
                    child:  Carousel(
                      imagee: 'assets/images/church.png',
                      textbig: 'Freiburg im Breisgau',
                      textsmall: 'Baden-Württemberg',
                    )),
             ),

              const Text(
                'Neueste Bewertungen',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: Color(AppColors.primary)),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  height: size.height * 0.4,
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
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(church),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Freiburg im Breisgau',
                                style: TextStyle(
                                    fontSize: 15,
                                    height: 1.5,
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Text(
                          '25-34, Student, Zugezogen, Männlich, \nKeine Kinder',
                          style: TextStyle(fontSize: 15),
                        ),
                        Row(
                          children: [
                            Container(
                              height: size.height * 0.04,
                              width: size.width * 0.3,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/progress_bar.png'))),
                            ),
                            SizedBox(
                              width: size.width * 0.04,
                            ),
                            const Text(
                              "4.50",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  // color: Color(AppColors.titleText),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1.2,
                          color: Color(0xffe5e5e5),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        const Text(
                          "💬 “Ich liebe Freiburg, aber der Verkehr ist ohne den Stadttunnel eine Katastrophe!”",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              height: 1.3,
                              color: Color(AppColors.titleText),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Details zeigne",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  height: 1.3,
                                  color: Color(AppColors.titleText),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
            ],
          ),
        ),
      // ),
    );
  }
}
