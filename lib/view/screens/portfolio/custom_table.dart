import 'package:dividend_project/view/screens/portfolio/sparkline_chart.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              text: 'Company',
              fontsize: 17,
              fontweight: FontWeight.bold,
            ),
            SizedBox(
              width: 10,
            ),
            CustomText(
              text: 'Last Price',
              fontsize: 17,
              fontweight: FontWeight.bold,
            ),
            SizedBox(
              width: 10,
            ),
            CustomText(
              text: 'Change',
              fontsize: 17,
              fontweight: FontWeight.bold,
            ),
            SizedBox(
              width: 15,
            ),
            CustomText(
              text: '7 Day Chart',
              fontsize: 17,
              fontweight: FontWeight.bold,
            ),
          ],
        ),
        Divider(
          height: 2,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
              text: 'DIS',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: AppColors.bluelight,
            ),
            CustomText(
              text: '\$250.43',
              fontsize: 17,
              fontweight: FontWeight.bold,
            ),
            CustomText(
              text: '+\$6.30',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: Colors.green,
            ),
            SparklineChart(
              data: [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0],
              color: Colors.green,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          height: 2,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
              text: 'BST',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: AppColors.bluelight,
            ),
            CustomText(
              text: '\$250.43',
              fontsize: 17,
              fontweight: FontWeight.bold,
            ),
            CustomText(
              text: '-\$5.30',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: Colors.red,
            ),
            SparklineChart(
              data: [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0],
              color: Colors.red,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          height: 2,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
              text: 'PILD',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: AppColors.bluelight,
            ),
            CustomText(
              text: '\$250.43',
              fontsize: 17,
              fontweight: FontWeight.bold,
            ),
            CustomText(
              text: '+\$6.30',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: Colors.green,
            ),
            SparklineChart(
              data: [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0],
              color: Colors.green,
            ),
          ],
        ),
        Divider(
          height: 2,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
              text: 'ADBE',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: AppColors.bluelight,
            ),
            CustomText(
              text: '\$250.43',
              fontsize: 17,
              fontweight: FontWeight.bold,
            ),
            CustomText(
              text: '-\$5.30',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: Colors.red,
            ),
            SparklineChart(
              data: [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0],
              color: Colors.red,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
              text: 'TSTE',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: AppColors.bluelight,
            ),
            CustomText(
              text: '\$250.43',
              fontsize: 17,
              fontweight: FontWeight.bold,
            ),
            CustomText(
              text: '+\$6.30',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: Colors.green,
            ),
            SparklineChart(
              data: [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0],
              color: Colors.green,
            ),
          ],
        ),
        Divider(
          height: 2,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
              text: 'FB',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: AppColors.bluelight,
            ),
            CustomText(
              text: '\$250.43',
              fontsize: 17,
              fontweight: FontWeight.bold,
            ),
            CustomText(
              text: '+\$6.30',
              fontsize: 17,
              fontweight: FontWeight.bold,
              color: Colors.green,
            ),
            SparklineChart(
              data: [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0],
              color: Colors.green,
            ),
          ],
        ),
        Divider(
          height: 2,
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
