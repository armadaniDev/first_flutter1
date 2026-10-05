import 'package:first_flutter1/components/custom_text.dart';
import 'package:flutter/material.dart';

class CustomInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? value;
  final bool isLast;

  const CustomInfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : 16),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey.shade600),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(label, fontSize: 12, color: Colors.grey.shade600),
                CustomText(
                  (value == null || value!.isEmpty) ? "-" : value!,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
