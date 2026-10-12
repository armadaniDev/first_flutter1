import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final bool numericOnly;
  final String? errorText;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    this.numericOnly = false,
    this.errorText,
  });

  OutlineInputBorder _border(Color color, [double width = 1]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    final error = Theme.of(context).colorScheme.error;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        controller: txtController,
        keyboardType: numericOnly ? TextInputType.number : TextInputType.text,
        inputFormatters: numericOnly
            ? [FilteringTextInputFormatter.digitsOnly]
            : null,
        decoration: InputDecoration(
          hintText: myHint,
          errorText: errorText,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 14,
          ),
          border: _border(Colors.grey.shade400),
          enabledBorder: _border(Colors.grey.shade400),
          focusedBorder: _border(primary, 1.5),
          errorBorder: _border(error),
          focusedErrorBorder: _border(error, 1.5),
        ),
      ),
    );
  }
}
