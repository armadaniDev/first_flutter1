import 'package:first_flutter1/components/custom_button.dart';
import 'package:first_flutter1/components/custom_textfield.dart';
import 'package:first_flutter1/components/custom_dropdown.dart';
import 'package:first_flutter1/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtNamaLengkap = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController agama = TextEditingController();
    TextEditingController jenis_kelamin = TextEditingController();
    TextEditingController nomorWa = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextfield(myHint: "Username", txtController: txtUsername),
            CustomTextfield(myHint: "Nama Lengkap", txtController: txtNamaLengkap,),
            CustomTextfield(myHint: "Email", txtController: txtEmail),
            CustomDropdown(
              myHint: "Agama",
              items: const [
                "Islam",
                "Kristen",
                "Katolik",
                "Hindu",
                "Budha",
                "Konghucu",
              ],
              onChanged: (value) => agama.text = value ?? '',
            ),
            CustomDropdown(
              myHint: "Jenis Kelamin",
              items: const ["Laki-laki", "Perempuan"],
              onChanged: (value) => jenis_kelamin.text = value ?? '',
            ),
            CustomTextfield(myHint: "Nomor", txtController: nomorWa, numericOnly: true),
            CustomButton(
              label: "Send",
              onPressed: () {
                Get.toNamed(
                  Routes.confirm_registration,
                  arguments: {
                    'username': txtUsername.text,
                    'namalengkap': txtNamaLengkap.text,
                    'email': txtEmail.text,
                    'agama': agama.text,
                    'jenis_kelamin': jenis_kelamin.text,
                    'nomor': nomorWa.text,
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
