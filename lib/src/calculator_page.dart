import 'package:first_flutter1/controller/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter1/components/custom_button.dart';
import 'package:first_flutter1/components/custom_textfield.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    final TextEditingController angka1 = TextEditingController();
    final TextEditingController angka2 = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        title: const Text("My Calculator"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Obx(
              () => CustomTextfield(
                myHint: "Angka1",
                txtController: angka1,
                numericOnly: true,
                errorText: controller.errorAngka1.value,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: Obx(
              () => CustomTextfield(
                myHint: "Angka2",
                txtController: angka2,
                numericOnly: true,
                errorText: controller.errorAngka2.value,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                label: "+",
                onPressed: () {
                  if (!controller.isInputValid(angka1.text, angka2.text))
                    return;
                  controller.tambah(
                    double.parse(angka1.text),
                    double.parse(angka2.text),
                  );
                },
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
              ),
              CustomButton(
                label: "-",
                onPressed: () {
                  if (!controller.isInputValid(angka1.text, angka2.text))
                    return;
                  controller.kurang(
                    double.parse(angka1.text),
                    double.parse(angka2.text),
                  );
                },
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
              ),
              CustomButton(
                label: "x",
                onPressed: () {
                  if (!controller.isInputValid(angka1.text, angka2.text))
                    return;
                  controller.kali(
                    double.parse(angka1.text),
                    double.parse(angka2.text),
                  );
                },
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
              ),
              CustomButton(
                label: "/",
                onPressed: () {
                  if (!controller.isInputValid(angka1.text, angka2.text))
                    return;
                  controller.bagi(
                    double.parse(angka1.text),
                    double.parse(angka2.text),
                  );
                },
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Obx(
            () => Text(
              "Hasil ${controller.hasilHitung.value}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
