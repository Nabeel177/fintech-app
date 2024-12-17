import 'package:flutter/material.dart';

class AnalysticTable extends StatelessWidget {
  const AnalysticTable({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      ["bito", "Jul-24", "Aug-24", "Sep-24", "Oct-24"],
      ["CONY", "\$9,320", "\$9,320", "\$9,320", "\$9,320"],
      ["msty", "\$9,320", "\$9,320", "\$9,320", "\$9,320"],
      ["NVDY", "\$9,320", "\$9,320", "\$9,320", "\$9,320"],
      ["Total", "\$9,320", "\$9,320", "\$9,320", "\$9,320"]
    ];

    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Table(
        children: List.generate(5, (rowIndex) {
          return TableRow(
            children: List.generate(5, (colIndex) {
              Color textColor = Colors.black;

              if (rowIndex == 0) {
                textColor = Colors.black;
              } else if (colIndex == 0) {
                textColor = Colors.blue;
              }

              return Container(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    data[rowIndex][colIndex],
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight:
                          (rowIndex == 0) ? FontWeight.bold : FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}
