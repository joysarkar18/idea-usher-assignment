import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Hi!",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Container(
                height: 122,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 155,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Steps: 13,112",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 6),
                            child: SizedBox(
                                height: 16,
                                child: LinearProgressIndicator(
                                  value: 0.4,
                                  borderRadius: BorderRadius.circular(8),
                                  valueColor: AlwaysStoppedAnimation(
                                      Theme.of(context).indicatorColor),
                                )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Goal: 15000",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/svg/ion_footsteps-sharp.svg",
                      color: Theme.of(context).indicatorColor,
                    ),
                  ],
                ),
              ),
              Container(
                height: 122,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 155,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Steps: 13,112",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 6),
                            child: SizedBox(
                                height: 16,
                                child: LinearProgressIndicator(
                                  value: 0.4,
                                  borderRadius: BorderRadius.circular(8),
                                  valueColor: AlwaysStoppedAnimation(
                                      Theme.of(context).indicatorColor),
                                )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Goal: 15000",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/svg/kcal.svg",
                      color: Theme.of(context).indicatorColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
