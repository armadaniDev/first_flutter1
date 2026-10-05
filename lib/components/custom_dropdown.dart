import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String myHint;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String? errorText;

  const CustomDropdown({
    super.key,
    required this.myHint,
    required this.items,
    required this.onChanged,
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
      child: DropdownButtonFormField<String>(
        hint: Text(myHint),
        items: items
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        onChanged: onChanged,
        decoration: InputDecoration(
          errorText: errorText,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
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
