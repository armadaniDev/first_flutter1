import 'package:first_flutter1/routes.dart';
import 'package:first_flutter1/pages/login_page1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/login_page.dart';
import 'pages/calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Belajar Flutter GetX",
      initialRoute: Routes.main_menu,
      getPages: Routes.myPages,
    );
  }
}
