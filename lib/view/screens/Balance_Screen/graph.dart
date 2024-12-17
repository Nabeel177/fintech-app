import 'package:flutter/material.dart';
import 'package:flutter_sales_graph/flutter_sales_graph.dart';

class Graph extends StatelessWidget {
  final List<double> salesData;
  final Color barColor;

  const Graph({
    Key? key,
    required this.salesData,
    required this.barColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: 300.0,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final scaledMaxBarHeight = constraints.maxHeight * 0.8;
          final scaledBarWidth = constraints.maxWidth / salesData.length * 0.6;

          return FlutterSalesGraph(
            salesData: salesData,
            labels: List.filled(salesData.length, ''),
            maxBarHeight: scaledMaxBarHeight,
            barWidth: scaledBarWidth,
            colors: [barColor],
            dateLineHeight: 0.0,
          );
        },
      ),
    );
  }
}
