import 'package:first_flutter1/src/login_page1.dart';
import 'package:flutter/material.dart';
import 'src/login_page.dart';
import 'src/calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}