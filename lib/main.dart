import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idea_usher/app/modules/splash_screen/views/splash_screen.dart';
import 'package:idea_usher/app/themes/dark_theme.dart';
import 'package:idea_usher/app/themes/light_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      title: "Application",
      home: const SplashScreen(),
    ),
  );
}
