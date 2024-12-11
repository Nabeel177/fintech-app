import 'package:flutter/material.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

class SparklineChart extends StatelessWidget {
  final List<double> data;
  final Color color;

  const SparklineChart({
    Key? key,
    required this.data,
    this.color = Colors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 50.0,
      child: Sparkline(
        data: data,
        lineColor: color,
        fillMode: FillMode.below,
        fillGradient: LinearGradient(
          colors: [
            color.withOpacity(0.3),
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}
