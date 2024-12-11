import 'package:flutter/material.dart';

class ColorfulDivider extends StatelessWidget {
  final double height;
  final double width;
  final List<Color> colors;

  const ColorfulDivider({
    Key? key,
    this.height = 10,
    this.width = 4,
    this.colors = const [Colors.green, Colors.blue],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
    );
  }
}
