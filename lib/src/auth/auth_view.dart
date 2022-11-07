import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:socity/common/utils/appcolors.dart';
import 'package:socity/common/widgets/auth/age_group_auth.dart';
import 'package:socity/common/widgets/auth/children.dart';
import 'package:socity/common/widgets/auth/gender_auth.dart';

import '../../common/BottomNavigationBar/bottomnavigationbar.dart';
import '../../common/widgets/auth/auth_widgets.dart';
import '../../common/widgets/auth/info_done.dart';
import '../../common/widgets/auth/mobility.dart';
import '../../common/widgets/auth/more_info_auth.dart';
import '../../common/widgets/auth/profession.dart';
import '../Home/home.dart';

class AuthScreens extends StatefulWidget {
  const AuthScreens({Key? key}) : super(key: key);

  @override
  State<AuthScreens> createState() => _AuthScreensState();
}

class _AuthScreensState extends State<AuthScreens> {
  final int _numPages = 12;
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: isActive ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color:
            isActive ? const Color(AppColors.primary) : const Color(0xffD9D9E2),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFEFCFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("assets/images/logo2.png"),
              SizedBox(
                // color: Colors.red,
                height: size.height / 1.5,
                child: PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                  children: const [
                    AuthWidget(
                      text: "Wie dürfen wir dich nennen? 🙂",
                      hintText: "Vornamen eingeben",
                      isAlignCenter: true,
                      isButton: false,
                    ),
                    AuthWidget(
                      text: "Wie lautet deine E-Mail Adresse?",
                      hintText: "E-Mail Adresse eingeben",
                      isAlignCenter: true,
                      isButton: false,
                    ),
                    AuthWidget(
                      text: "In welcher Stadt lebst du aktuell?",
                      hintText: "Stadt suchen...",
                      isAlignCenter: false,
                      prefix: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      suffix: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.black,
                      ),
                      isButton: false,
                    ),
                    AuthWidget(
                      text: "In welchem Bezirk?",
                      hintText: "Bezirk suchen...",
                      isAlignCenter: false,
                      prefix: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      suffix: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.black,
                      ),
                      isButton: false,
                    ),
                    AuthWidget(
                      text: "In welchen Städten hast\n du bereits gelebt?",
                      hintText: "Stadt suchen...",
                      isAlignCenter: false,
                      prefix: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      suffix: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.black,
                      ),
                      isButton: true,
                    ),
                    MoreInfo(),
                    AgeGroup(),
                    Gender(),
                    Profession(),
                    Children(),
                    Mobility(),
                    InfoDone()
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          if (currentPage != 0) {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          }
                        },
                        child: const Text("Zurück")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: buildPageIndicator(),
                    ),
                    GestureDetector(
                        onTap: () {
                          
                          if (currentPage != 11) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          } else {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) =>  const NavigationBarr()),
                                ));
                          }
                        },
                        child: const Text("Weiter")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
