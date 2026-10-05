import 'package:first_flutter1/components/custom_button.dart';
import 'package:first_flutter1/components/custom_info_row.dart';
import 'package:first_flutter1/components/custom_text.dart';
import 'package:first_flutter1/controller/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final conteoller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Registration")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 8),
            const CustomText(
              "Periksa data kamu",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Column(
                children: [
                  CustomInfoRow(
                    icon: Icons.person_outline,
                    label: "Username",
                    value: conteoller.username.toString(),
                  ),
                  CustomInfoRow(
                    icon: Icons.badge_outlined,
                    label: "Nama Lengkap",
                    value: conteoller.namalengkap.toString(),
                  ),
                  CustomInfoRow(
                    icon: Icons.email_outlined,
                    label: "Email",
                    value: conteoller.email.toString(),
                  ),
                  CustomInfoRow(
                    icon: Icons.favorite_border,
                    label: "Agama",
                    value: conteoller.agama.toString(),
                  ),
                  CustomInfoRow(
                    icon: Icons.wc_outlined,
                    label: "Jenis Kelamin",
                    value: conteoller.jenis_kelamin.toString(),
                  ),
                  CustomInfoRow(
                    icon: Icons.phone_outlined,
                    label: "Nomor",
                    value: conteoller.nomor.toString(),
                    isLast: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                label: "Oke",
                onPressed: () => Get.back(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}