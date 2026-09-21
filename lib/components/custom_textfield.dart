import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  //variabel yang diperlukan
  final String myHint;
  final TextEditingController txtController;
  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(
        hint: Text(myHint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
