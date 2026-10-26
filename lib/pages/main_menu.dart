import 'package:first_flutter1/controller/main_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenu extends StatelessWidget {
  MainMenu({super.key});

  final controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          children: controller.listpages,
          index: controller.selectedIndex.value,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changePage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
