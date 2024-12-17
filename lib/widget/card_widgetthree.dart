import 'package:dividend_project/view/screens/Forcasting_screen/graph_widget.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardWidgetthree extends StatelessWidget {
  const CardWidgetthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Portfolio Yield %',
              fontsize: 18,
              fontweight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: '\$34,02%',
              fontsize: 25,
              fontweight: FontWeight.bold,
            ),
            Row(
              children: [
                SvgPicture.asset(AppAssets.downleft),
                SizedBox(
                  width: 5,
                ),
                CustomText(
                  text: '2.7% ',
                  color: Colors.red,
                  fontweight: FontWeight.bold,
                ),
                SizedBox(
                  width: 5,
                ),
                CustomText(
                  text: 'from last month',
                  color: AppColors.greycolor,
                ),
                SizedBox(
                  width: 50,
                ),
                CustomSalesGraph(
                  salesData: [100, 200, 150, 300, 250, 350],
                  barColor: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
