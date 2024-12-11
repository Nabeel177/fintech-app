import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    this.fontsize,
    this.text,
    this.fontweight,
    this.color,
    textAlign,
  });
  String? text;
  double? fontsize;
  var fontweight, color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
          fontFamily: "Urbanist",
          fontSize: fontsize,
          fontWeight: fontweight,
          color: color),
    );
  }
}
