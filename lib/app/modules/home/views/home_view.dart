import 'package:flutter/material.dart';
import 'package:idea_usher/app/modules/home/views/widgets/Step_card.dart';
import 'package:idea_usher/app/modules/home/views/widgets/kcal_card.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

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
              StepCard(),
              KcalCard(),
            ],
          ),
        ),
      ),
    );
  }
}
