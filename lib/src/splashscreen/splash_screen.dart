import 'dart:async';
import 'package:flutter/material.dart';
import 'package:socity/common/utils/appcolors.dart';
import 'package:video_player/video_player.dart';

import '../auth/auth_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String route = "/";

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late VideoPlayerController controller;

  startTime() async {
    Duration _duration = const Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    // SharedPreferences.getInstance().then((value) {
    //   if (value.containsKey('userId')) {
    //     Navigator.pushReplacement(context,
    //         MaterialPageRoute(builder: (context) => const HomeScreen()));
    //   } else {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const AuthScreens()));
    //   }
    // });
  }

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => setState(() {}));
    animationController.forward();
    startTime();
  }

  loadVideoPlayer() {
    controller =
        VideoPlayerController.asset('assets/animation/socity_animation.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {
        controller.play();
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            ),
          ),
        ],
      ),
      // Stack(
      //   fit: StackFit.expand,
      //   children: <Widget>[
      //     // Container(
      //     //   decoration: const BoxDecoration(
      //     //     color: Color(AppColors.primary),
      //     //     image: DecorationImage(
      //     //       image: AssetImage("assets/images/backgroundSplash.jpeg"),
      //     //     ),
      //     //   ),
      //     // ),
      //     // Container(
      //     //   color: Color(AppColors.primary),
      //     // ),
      //     // child: Image.asset()),
      //     Padding(
      //       padding: EdgeInsets.only(bottom: size.height * 0.15),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         mainAxisSize: MainAxisSize.min,
      //         children: <Widget>[
      //           AspectRatio(
      //             aspectRatio: controller.value.aspectRatio,
      //             child: VideoPlayer(controller),
      //           ),
      //           const SizedBox(
      //             height: 30,
      //             width: 30,
      //             child: CircularProgressIndicator(
      //               color: Colors.white,
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Container(

      //             // child: Image.asset(
      //             //   'assets/animation/socity_animation.mp4',
      //             //   width: animation.value * 450,
      //             //   height: animation.value * 500,
      //             // ),
      //             ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
