import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:idea_usher/app/modules/home/controllers/home_controller.dart';

class StepCard extends StatelessWidget {
  StepCard({super.key});
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.all(20),
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
                Obx(
                  () => Text(
                    "Steps: ${controller.stepCount.value}",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 6),
                  child: SizedBox(
                    height: 16,
                    child: Obx(
                      () => LinearProgressIndicator(
                        value: (controller.stepCount.value / 1000).toDouble(),
                        borderRadius: BorderRadius.circular(8),
                        valueColor: AlwaysStoppedAnimation(
                            Theme.of(context).indicatorColor),
                      ),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "0",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Goal: 1000",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
          SvgPicture.asset(
            "assets/svg/ion_footsteps-sharp.svg",
            colorFilter: ColorFilter.mode(
                Theme.of(context).indicatorColor, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }
}
