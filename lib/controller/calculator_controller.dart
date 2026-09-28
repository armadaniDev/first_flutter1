import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var hasilHitung = 0.0.obs;
  var errorAngka1 = RxnString();
  var errorAngka2 = RxnString();

  bool isInputValid(String angka1, String angka2) {
    errorAngka1.value = angka1.isEmpty ? "Angka1 tidak boleh kosong" : null;
    errorAngka2.value = angka2.isEmpty ? "Angka2 tidak boleh kosong" : null;
    return errorAngka1.value == null && errorAngka2.value == null;
  }

  void tambah(double angka1, double angka2) {
    hasilHitung.value = angka1 + angka2;
  }

  void kurang(double angka1, double angka2) {
    hasilHitung.value = angka1 - angka2;
  }

  void kali(double angka1, double angka2) {
    hasilHitung.value = angka1 * angka2;
  }

  void bagi(double angka1, double angka2) {
    if (angka2 == 0) {
      errorAngka2.value = "Angka2 tidak boleh 0";
      return;
    }
    errorAngka2.value = null;
    hasilHitung.value = angka1 / angka2;
  }
}
