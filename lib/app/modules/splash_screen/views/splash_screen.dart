import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:idea_usher/app/modules/home/views/home_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    print("init state called");
    getoHome();
    super.initState();
  }

  void getoHome() async {
    await Future.delayed(Duration(seconds: 2), () {
      print("hiiii");
      Get.to(HomeView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Animate(
                  effects: const [
                    VisibilityEffect(duration: Duration(milliseconds: 400))
                  ],
                  child: SvgPicture.asset(
                    context.isDarkMode
                        ? "assets/svg/boozin_splash2.svg"
                        : "assets/svg/boozin_splash_light2.svg",
                    height: 78.41,
                  ),
                ),
                Animate(
                  effects: const [
                    SlideEffect(
                        begin: Offset(0, 0),
                        end: Offset(0.3, 0),
                        duration: Duration(milliseconds: 500)),
                  ],
                  child: SvgPicture.asset(
                    "assets/svg/boozin_splash1.svg",
                    height: 78.41,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Animate(
                effects: const [
                  VisibilityEffect(duration: Duration(milliseconds: 700))
                ],
                child: const Text(
                  "Fitness",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
