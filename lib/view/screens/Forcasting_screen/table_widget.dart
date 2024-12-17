import 'package:dividend_project/widget/app_colors.dart';
import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final headers = ['Year', 'Priciple', 'Annual', 'Yield', 'Total'];
    final rowData = [
      ['1', '\$10000', '\$509.45', '5%', '\$10000'],
      ['2', '\$10000', '\$509.45', '5%', '\$20000'],
      ['3', '\$10000', '\$509.45', '5%', '\$40000'],
      ['4', '\$10000', '\$509.45', '5%', '\$70000'],
      ['6', '\$10000', '\$509.45', '5%', '\$90000'],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(1.5),
          2: FlexColumnWidth(1.5),
          3: FlexColumnWidth(1),
          4: FlexColumnWidth(1.5),
        },
        border: TableBorder.all(color: Colors.transparent),
        children: [
          TableRow(
            children: headers
                .map(
                  (header) => Container(
                    color: AppColors.lightgreen,
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Text(
                      header,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          ...rowData.map(
            (row) => TableRow(
              children: row
                  .map(
                    (cell) => Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Text(
                        cell,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
