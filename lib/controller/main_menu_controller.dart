import 'package:first_flutter1/menu/home_page.dart';
import 'package:first_flutter1/menu/hystory_page.dart';
import 'package:first_flutter1/menu/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listpages = [
    HomePage(),
    HystoryPage(),
    ProfilePage()
  ];
}
