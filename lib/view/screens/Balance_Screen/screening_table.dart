import 'package:flutter/material.dart';

class ScreeningTable extends StatelessWidget {
  const ScreeningTable({super.key});

  @override
  Widget build(BuildContext context) {
    final subjects = [
      "Day Gainers",
      "Stocks",
      "50+",
      "Day Losers",
      "Stocks",
      "50+",
      "High Yield",
      "Stocks",
      "50+",
      "Most Actives",
      "Stocks",
      "50",
    ];

    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Table(
        defaultColumnWidth: const FlexColumnWidth(),
        children: [
          TableRow(
            children: [
              for (var header in ["Name", "Type", "Matches"])
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Center(
                    child: Text(
                      header,
                      style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          ...List.generate(4, (rowIndex) {
            return TableRow(
              children: List.generate(3, (colIndex) {
                final subjectIndex = rowIndex * 3 + colIndex;

                if (subjectIndex < subjects.length) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Center(
                      child: Text(
                        subjects[subjectIndex],
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              }),
            );
          }),
        ],
      ),
    );
  }
}
