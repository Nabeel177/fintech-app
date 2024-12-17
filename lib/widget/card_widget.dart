import 'package:dividend_project/widget/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:dividend_project/widget/custom_text.dart';

class CustomCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isSelected;
  final ValueChanged<bool?>? onChanged;
  final Color? borderColor;

  const CustomCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    this.onChanged,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppColors.whiteColor,
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: borderColor ?? Colors.grey[300]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Radio<bool>(
              value: true,
              groupValue: isSelected,
              onChanged: onChanged,
              activeColor: AppColors.appColor,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: title,
                    fontsize: 16,
                    fontweight: FontWeight.bold,
                  ),
                  const SizedBox(height: 4),
                  CustomText(
                    text: subtitle,
                    fontsize: 14,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
