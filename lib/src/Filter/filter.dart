import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socity/Rating_Process/rating_process.dart';
import 'package:socity/common/utils/appcolors.dart';

import 'checkboxx.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        highlightColor: const Color(AppColors.titleText),
      ),
      child: const Scrollbar(
          thickness: 4,
          radius: Radius.circular(20),
          child: FilterScreenScroll()),
    );
  }
}

class FilterScreenScroll extends StatefulWidget {
  
  const FilterScreenScroll({super.key});

  @override
  State<FilterScreenScroll> createState() => _FilterScreenScrollState();
}

class _FilterScreenScrollState extends State<FilterScreenScroll> {
  bool status = false;

  RangeValues values = RangeValues(252, 15000);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.round().toString(),
      values.start.round().toString(),
    );
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  const Text(
                    "FilterScreen schließen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(AppColors.titleText),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RatingProcess()));
                    },
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.08,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(AppColors.titleText),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 1.2,
                color: Color(0xffe5e5e5),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Berufsstand",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(AppColors.titleText),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: size.height * 0.04,
                    width: size.width * 0.04,
                    decoration: const BoxDecoration(

                        // color: Color(AppColors.titleText),
                        image: DecorationImage(
                            image: AssetImage('assets/images/arrowup.png'),
                            fit: BoxFit.contain)),
                  ),
                ],
              ),
              Checkboxx(
                texxt: 'Arbeitgeber*in',
              ),
              Checkboxx(
                texxt: 'Arbeitnehmer*in',
              ),
              Checkboxx(
                texxt: 'Student*in',
              ),
              Checkboxx(
                texxt: 'Rentner*in',
              ),
              const Divider(
                thickness: 1.2,
                color: Color(0xffe5e5e5),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Stadtbezug",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(AppColors.titleText),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: size.height * 0.04,
                    width: size.width * 0.04,
                    decoration: const BoxDecoration(

                        // color: Color(AppColors.titleText),
                        image: DecorationImage(
                            image: AssetImage('assets/images/arrowup.png'),
                            fit: BoxFit.contain)),
                  ),
                ],
              ),
              Checkboxx(
                texxt: 'Einheimisch',
              ),
              Checkboxx(
                texxt: 'Zugezogen',
              ),
              Checkboxx(
                texxt: 'Weggezogen',
              ),
              const Divider(
                thickness: 1.2,
                color: Color(0xffe5e5e5),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Altersgruppe",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(AppColors.titleText),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: size.height * 0.04,
                    width: size.width * 0.04,
                    decoration: const BoxDecoration(

                        // color: Color(AppColors.titleText),
                        image: DecorationImage(
                            image: AssetImage('assets/images/arrowup.png'),
                            fit: BoxFit.contain)),
                  ),
                ],
              ),
              RangeSlider(
                  activeColor: Color(AppColors.titleText),
                  inactiveColor: const Color(0xffe5e5e5),
                  max: 25000,
                  values: values,
                  onChanged: (newValues) {
                    setState(() {
                      values = newValues;
                      labels = labels;
                    });
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Geschlecht",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(AppColors.titleText),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: size.height * 0.04,
                    width: size.width * 0.04,
                    decoration: const BoxDecoration(

                        // color: Color(AppColors.titleText),
                        image: DecorationImage(
                            image: AssetImage('assets/images/arrowup.png'),
                            fit: BoxFit.contain)),
                  ),
                ],
              ),
              Checkboxx(
                texxt: 'Weiblich',
              ),
              Checkboxx(
                texxt: 'Männlich',
              ),
              Checkboxx(
                texxt: 'Divers',
              ),
              const Divider(
                thickness: 1.2,
                color: Color(0xffe5e5e5),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Kinder",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(AppColors.titleText),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: size.height * 0.04,
                    width: size.width * 0.04,
                    decoration: const BoxDecoration(

                        // color: Color(AppColors.titleText),
                        image: DecorationImage(
                            image: AssetImage('assets/images/arrowup.png'),
                            fit: BoxFit.contain)),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: [
                  //  CustomSwitch(
                  //   activeColor: const  Color(AppColors.titleText),
                  //   value: status,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       status = value;
                  //     });
                  //   },
                  // ),
                  SizedBox(
                    width: size.width * 0.06,
                  ),

                  const Text(
                    'Ja',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(AppColors.titleText),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Divider(
                thickness: 1.2,
                color: Color(0xffe5e5e5),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Bezirk",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(AppColors.titleText),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: size.height * 0.04,
                    width: size.width * 0.04,
                    decoration: const BoxDecoration(

                        // color: Color(AppColors.titleText),
                        image: DecorationImage(
                            image: AssetImage('assets/images/arrowup.png'),
                            fit: BoxFit.contain)),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              SizedBox(
                height: size.height * 0.06,
                width: size.width * 0.8,
                child: TextField(
                    style: const TextStyle(
                      color: Color(AppColors.titleText),
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Hier suchen',
                      hintStyle: const TextStyle(
                        color: Color(AppColors.titleText),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(AppColors.titleText),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(AppColors.titleText), width: 1),
                      ),
                    )),
              ),
              Checkboxx(
                texxt: 'Altstadt',
              ),
              Checkboxx(
                texxt: 'Wiehre',
              ),
              Checkboxx(
                texxt: 'Kappel',
              ),
              Checkboxx(
                texxt: 'Ebnet',
              ),
              const Divider(
                thickness: 1.2,
                color: Color(0xffe5e5e5),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: [
                  const Text(
                    "Mehr zeigen ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(AppColors.titleText),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: size.width * 0.04),
                  Container(
                    height: size.height * 0.04,
                    width: size.width * 0.04,
                    decoration: const BoxDecoration(

                        // color: Color(AppColors.titleText),
                        image: DecorationImage(
                            image: AssetImage('assets/images/arrowdown.png'),
                            fit: BoxFit.contain)),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
