import 'package:first_flutter1/components/custom_textfield.dart';
import 'package:first_flutter1/components/custom_button.dart';
import 'package:first_flutter1/components/custom_text.dart';
import 'package:first_flutter1/controller/login_page_controller.dart'; // sesuaikan path
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginPageController controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("login page")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CustomText("Welcome to application"),
            const SizedBox(height: 16),
            CustomTextfield(
              myHint: "input username",
              txtController: controller.txtUsername,
            ),
            CustomTextfield(
              myHint: "input password",
              txtController: controller.txtPassword,
            ),
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
          ],
        ),
      ),
    );
  }
}
