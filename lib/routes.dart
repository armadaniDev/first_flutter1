import 'package:first_flutter1/src/confirm_registration_page.dart';
import 'package:first_flutter1/src/list_makanan_page.dart';
import 'package:first_flutter1/src/registration_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  //dll

  //kita masukka ke myPages array
  static final myPages = [
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirm_registration, page: ()=> ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: ()=> ListMakananPage()),
  ];
}
