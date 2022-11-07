import 'package:flutter/material.dart';
import 'package:socity/common/BottomNavigationBar/bottomnavigationbar.dart';
import 'package:socity/common/utils/appcolors.dart';
import 'package:socity/common/utils/images.dart';
import 'package:socity/common/widgets/auth/carousel_pages.dart';
import 'package:socity/src/Home/home.dart';
import '../../common/utils/appcolors.dart';
import '../Filter/filter.dart';

class SearchScreen extends StatefulWidget {
  final bool isBackNavigatee;
  SearchScreen({required this.isBackNavigatee});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        // bottomNavigationBar: NavigationBarr(),

        //   body: SafeArea(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 8, top: 50),
                  child: widget.isBackNavigatee
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 20,
                            color: Color(AppColors.primary),
                          ),
                        )
                      : const SizedBox.shrink()),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Material(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Color(AppColors.primary)),
                        prefixIcon: Icon(Icons.search_outlined),
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        hintText: "Stadt suchen",
                        fillColor: Color(AppColors.secondary)),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(AppColors.secondary),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/search_filter.png'),
                    const Text('Bundesland'),
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
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: const [
                    Text(
                      'Baden-Württemberg',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Color(AppColors.primary),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Alle ansehen',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(AppColors.primary),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              ///editing
              Carousel(
                imagee: 'assets/images/church.png',
                textsmall: 'Baden-Württemberg',
                textbig: 'Freiburg im Breisgau',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: const [
                    Text(
                      'Nordrhein Westfalen',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Color(AppColors.primary),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Alle ansehen',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(AppColors.primary),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.5121,
                width: double.infinity,
                child: Carousel(
                  imagee: 'assets/images/tower.png',
                  textsmall: 'Nordrhein Westfalen',
                  textbig: 'Düsseldorf',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: const [
                    Text(
                      'Nordrhein Westfalen',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Color(AppColors.primary),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Alle ansehen',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(AppColors.primary),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.5121,
                width: double.infinity,
                child: Carousel(
                  imagee: 'assets/images/tower.png',
                  textsmall: 'Nordrhein Westfalen',
                  textbig: 'Düsseldorf',
                ),
              )
            ]),
      ),
      //   ),
      // ),
    ));
  }
}
