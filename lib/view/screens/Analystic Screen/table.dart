import 'package:dividend_project/widget/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTableWidget extends StatefulWidget {
  final List<String> headers;
  final List<List<String>> data;

  const CustomTableWidget({
    required this.headers,
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  _CustomTableWidgetState createState() => _CustomTableWidgetState();
}

class _CustomTableWidgetState extends State<CustomTableWidget> {
  late List<bool> selectedRows;

  @override
  void initState() {
    super.initState();
    selectedRows = List.generate(widget.data.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FixedColumnWidth(100),
      },
      children: [
        TableRow(
          children: widget.headers.map((header) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                header,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          }).toList(),
        ),
        ...List.generate(widget.data.length, (rowIndex) {
          return TableRow(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: selectedRows[rowIndex],
                    onChanged: (bool? value) {
                      setState(() {
                        selectedRows[rowIndex] = value ?? false;
                      });
                    },
                    activeColor: AppColors.appColor,
                  ),
                  Text(
                    "Inv ${rowIndex + 1}",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              ...List.generate(widget.data[rowIndex].length, (colIndex) {
                return colIndex == widget.data[rowIndex].length - 1
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.data[rowIndex][colIndex],
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.data[rowIndex][colIndex]),
                      );
              }),
            ],
          );
        }),
      ],
    );
  }
}
