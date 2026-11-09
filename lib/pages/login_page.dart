import 'package:first_flutter1/components/custom_textfield.dart';
import 'package:first_flutter1/components/custom_text.dart';
import 'package:first_flutter1/controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginPageController controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    const red = Color(0xFFD50F14);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Icon(Icons.shield, size: 90, color: red),
              const Text(
                "Garudaku",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              const CustomText("Selamat Datang Gamers Indonesia!"),
              const Text(
                "Platform Esports karya anak bangsa dengan fitur terlengkap.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 32),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: red, width: 2)),
                ),
                child: const Text(
                  "Masuk",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              const SizedBox(height: 24),

              CustomTextfield(
                myHint: "Username",
                txtController: controller.txtUsername,
              ),
              CustomTextfield(
                myHint: "Password",
                txtController: controller.txtPassword,
              ),

              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Lupa kata sandi ?",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 24),

              Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : OutlinedButton(
                        onPressed: () {
                          controller.Login();
                        },
                        child: Text("login"),
                      ),
              ),
              const Spacer(),

              // Banner bawah
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: red,
                child: const Text(
                  "Topup Game Praktis, Sekarang Juga!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
