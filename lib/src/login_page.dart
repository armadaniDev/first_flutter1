import 'package:first_flutter1/components/custom_textfield.dart';
import 'package:first_flutter1/components/custom_button.dart';
import 'package:first_flutter1/components/custom_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  void dispose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  void _login() {
    setState(() {
      // fungsinya untuk reload / refresh satu page full
      final username = txtUsername.text.trim();
      final password = txtPassword.text.trim();

      if (username == "admin" && password == "admin") {
        statusLogin = "admin";
        print("sukses login");
      } else {
        statusLogin = "failed";
        print("gagal login");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("login page")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomText(
              "Welcome to application $statusLogin",
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input username",
              txtController: txtUsername,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input password",
              txtController: txtPassword,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomButton(
              label: "Login",
              onPressed: _login,
            ),
          ),
        ],
      ),
    );
  }
}