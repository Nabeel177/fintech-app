import 'package:dividend_project/view/screens/Analystic%20Screen/table.dart';
import 'package:dividend_project/view/screens/started_screen/monthly_year_widget.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: SvgPicture.asset(AppAssets.vector),
                    );
                  }),
                  const SizedBox(width: 50),
                  SvgPicture.asset(AppAssets.logo),
                  const SizedBox(width: 5),
                  CustomText(
                    text: 'Hey Dividend',
                    fontsize: 25,
                    fontweight: FontWeight.bold,
                  ),
                  const Spacer(),
                  SvgPicture.asset(AppAssets.button),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(AppAssets.questionCircle),
                  SizedBox(width: 5),
                  SvgPicture.asset(AppAssets.group),
                  SizedBox(width: 5),
                  SvgPicture.asset(AppAssets.vector1),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: 'Free Mode',
                    color: AppColors.appColor,
                    fontweight: FontWeight.bold,
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (bool value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeColor: AppColors.appColor,
                    inactiveThumbColor: AppColors.greycolor,
                    inactiveTrackColor: AppColors.greycolor.withOpacity(0.5),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 90,
                    width: 230,
                    decoration: BoxDecoration(
                      color: AppColors.appColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: CustomText(
                            text: 'Total Dividend Income',
                            fontsize: 17,
                            color: AppColors.whiteColor,
                            fontweight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "\$8,636.80",
                              fontsize: 25,
                              color: AppColors.whiteColor,
                              fontweight: FontWeight.bold,
                            ),
                            const SizedBox(width: 20),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.whiteColor,
                              size: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Transaction History',
                    fontweight: FontWeight.bold,
                    fontsize: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Update 20/07/24 at 04:30 PM',
                    fontsize: 18,
                    color: AppColors.greycolor,
                  ),
                  Spacer(),
                  MonthlyYearWidget(
                    initialValue: 'Month',
                    dropdownItems: [
                      'Month',
                      'This year',
                      'This Month',
                      'This Week'
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomTableWidget(
                headers: ["Invoice", "Amount", "Date", "Manage"],
                data: [
                  ["\$14,000", "28 Jun", "Downlaod"],
                  ["\$14,000", "28 Jun", "Downlaod"],
                  ["\$14,000", "28 Jun", "Downlaod"],
                  ["\$14,000", "28 Jun", "Downlaod"],
                  ["\$14,000", "28 Jun", "hhfhfhfh"],
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
