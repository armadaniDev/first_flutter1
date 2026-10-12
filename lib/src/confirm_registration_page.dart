import 'package:first_flutter1/components/custom_button.dart';
import 'package:first_flutter1/components/custom_info_row.dart';
import 'package:first_flutter1/components/custom_text.dart';
import 'package:first_flutter1/controller/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Registration")),
      body: Padding(
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
                    value: controller.username.toString(),
                  ),
                  CustomInfoRow(
                    icon: Icons.badge_outlined,
                    label: "Nama Lengkap",
                    value: controller.namalengkap.toString(),
                  ),
                  CustomInfoRow(
                    icon: Icons.email_outlined,
                    label: "Email",
                    value: controller.email.toString(),
                  ),
                  CustomInfoRow(
                    icon: Icons.favorite_border,
                    label: "Agama",
                    value: controller.agama.toString(),
                  ),
                  CustomInfoRow(
                    icon: Icons.wc_outlined,
                    label: "Jenis Kelamin",
                    value: controller.jenis_kelamin.toString(),
                  ),
                  CustomInfoRow(
                    icon: Icons.phone_outlined,
                    label: "Nomor",
                    value: controller.nomor.toString(),
                    isLast: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: CustomButton(label: "Oke", onPressed: () => Get.back()),
            ),
          ],
        ),
      ),
    );
  }
}