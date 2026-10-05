import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String username;
  late String namalengkap;
  late String email;
  late String agama;
  late String jenis_kelamin;
  late String nomor;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    username = arguments["username"];
    namalengkap = arguments["namalengkap"];
    email = arguments["email"];
    agama = arguments["agama"];
    jenis_kelamin = arguments["jenis_kelamin"];
    nomor = arguments["nomor"];
    //dll
  }
}
