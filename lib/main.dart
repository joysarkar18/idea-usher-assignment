import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idea_usher/app/themes/dark_theme.dart';
import 'package:idea_usher/app/themes/light_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
