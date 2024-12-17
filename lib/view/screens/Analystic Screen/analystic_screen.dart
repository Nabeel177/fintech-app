import 'package:dividend_project/view/screens/Analystic%20Screen/analystic_table.dart';
import 'package:dividend_project/view/screens/dashboard_screen/bar_chart.dart';
import 'package:dividend_project/view/screens/portfolio/custom_table.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/card_widget.dart';
import 'package:dividend_project/widget/card_widget_second.dart';
import 'package:dividend_project/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnalysticScreen extends StatefulWidget {
  const AnalysticScreen({super.key});

  @override
  State<AnalysticScreen> createState() => _AnalysticScreenState();
}

class _AnalysticScreenState extends State<AnalysticScreen> {
  bool isSwitched = false;
  int selectedCardIndex = -1;
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
                children: [
                  CustomText(
                    text: 'Analytics',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  ),
                  Spacer(),
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCardIndex = 0;
                  });
                },
                child: CustomCardWidget(
                  title: 'Portfolio',
                  subtitle:
                      'Create an invoice requesting payment on\nspecific date',
                  isSelected: selectedCardIndex == 0,
                  onChanged: (value) {
                    setState(() {
                      selectedCardIndex = 0;
                    });
                  },
                  borderColor: selectedCardIndex == 0
                      ? AppColors.appColor
                      : Colors.grey[300],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCardIndex = 1;
                  });
                },
                child: CustomCardWidget(
                  title: 'Watchlist',
                  subtitle: 'Automatically charge a payment method on file',
                  isSelected: selectedCardIndex == 1,
                  onChanged: (value) {
                    setState(() {
                      selectedCardIndex = 1;
                    });
                  },
                  borderColor: selectedCardIndex == 1
                      ? AppColors.appColor
                      : Colors.grey[300],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCardIndex = 2;
                  });
                },
                child: CustomCardWidget(
                  title: 'Screening',
                  subtitle: 'Automatically charge a payment method on file',
                  isSelected: selectedCardIndex == 2,
                  onChanged: (value) {
                    setState(() {
                      selectedCardIndex = 2;
                    });
                  },
                  borderColor: selectedCardIndex == 2
                      ? AppColors.appColor
                      : Colors.grey[300],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CardWidgetSecond(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              CardWidgetSecond(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              CardWidgetSecond(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Stock Payout Calendar',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              AnalysticTable(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: 'Watch List',
                        fontsize: 20,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      SvgPicture.asset(AppAssets.plus),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.left),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(AppAssets.rght),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomTableWidget(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Expected / Received Dividend Income ',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              BarChartSample2(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Average Dividend Payment',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              Row(
                children: [
                  CustomText(
                    text: '\$422.34',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Highest Dividend Payment',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              Row(
                children: [
                  CustomText(
                    text: '\$422.34',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Lowest Dividend Payment',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              Row(
                children: [
                  CustomText(
                    text: '\$422.34',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Variance',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              Row(
                children: [
                  CustomText(
                    text: '5.2%',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
