import 'package:flutter/material.dart';
import 'package:dividend_project/widget/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final int? maxLine;
  final IconData? suffixIcon;
  final IconData? prefixIcon;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.icon,
    this.maxLine,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greycolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        maxLines: maxLine,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon:
              prefixIcon != null ? Icon(prefixIcon, color: Colors.grey) : null,
          suffixIcon:
              suffixIcon != null ? Icon(suffixIcon, color: Colors.grey) : null,
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
        ),
      ),
    );
  }
}
