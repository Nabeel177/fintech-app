import 'package:flutter/material.dart';
import 'package:flutter_sales_graph/flutter_sales_graph.dart';

class CustomSalesGraph extends StatelessWidget {
  final List<double> salesData;
  final Color barColor;

  const CustomSalesGraph({
    Key? key,
    required this.salesData,
    required this.barColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final scaledMaxBarHeight = constraints.maxHeight *
              0.8; // Scale bars to fit within 80% of height
          final scaledBarWidth = constraints.maxWidth /
              salesData.length *
              0.6; // Scale bar width to fit within width

          return FlutterSalesGraph(
            salesData: salesData,
            labels: List.filled(salesData.length, ''), // Remove labels
            maxBarHeight: scaledMaxBarHeight, // Scaled bar height
            barWidth: scaledBarWidth, // Scaled bar width
            colors: [barColor], // Set bar color
            dateLineHeight: 0.0, // Remove date line height
          );
        },
      ),
    );
  }
}
