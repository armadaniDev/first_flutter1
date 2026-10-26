import 'package:first_flutter1/pages/confirm_registration_page.dart';
import 'package:first_flutter1/pages/detail_makanan_page.dart';
import 'package:first_flutter1/pages/list_makanan_page.dart';
import 'package:first_flutter1/pages/main_menu.dart';
import 'package:first_flutter1/pages/registration_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String main_menu = "/main_menu";
  //dll

  //kita masukka ke myPages array
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
    GetPage(name: main_menu, page:()=> MainMenu())
  ];
}
