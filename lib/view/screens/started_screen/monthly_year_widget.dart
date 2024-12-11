import 'package:flutter/material.dart';
import 'package:dividend_project/widget/app_colors.dart';

class MonthlyYearWidget extends StatefulWidget {
  final String initialValue;
  final List<String> dropdownItems;

  const MonthlyYearWidget({
    Key? key,
    required this.initialValue,
    required this.dropdownItems,
  }) : super(key: key);

  @override
  State<MonthlyYearWidget> createState() => _MonthlyYearWidgetState();
}

class _MonthlyYearWidgetState extends State<MonthlyYearWidget> {
  late String selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 90,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greycolor),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.greycolor.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: DropdownButton<String>(
        value: selectedItem,
        items: widget.dropdownItems.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(fontSize: 12),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedItem = newValue ?? selectedItem;
          });
        },
        underline: const SizedBox(),
        icon: const Icon(Icons.arrow_drop_down,
            color: AppColors.greycolor, size: 18),
        dropdownColor: Colors.white,
        isExpanded: true,
      ),
    );
  }
}
