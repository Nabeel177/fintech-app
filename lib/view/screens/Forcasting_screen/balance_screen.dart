import 'package:dividend_project/view/screens/portfolio/custom_table.dart';
import 'package:dividend_project/view/screens/started_screen/monthly_year_widget.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/card_widget.dart';
import 'package:dividend_project/widget/card_widget_second.dart';
import 'package:dividend_project/widget/card_widgetthree.dart';
import 'package:dividend_project/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
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
                const SizedBox(height: 20),
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
                CardWidgetthree(),
                SizedBox(
                  height: 20,
                ),
                CardWidgetSecond(),
                SizedBox(
                  height: 20,
                ),
                CardWidgetthree(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MonthlyYearWidget(
                      initialValue: 'filters',
                      dropdownItems: [
                        'filters',
                        'This year',
                        'This Month',
                        'This Week'
                      ],
                    ),
                    MonthlyYearWidget(
                      initialValue: 'Freqency',
                      dropdownItems: [
                        'Frequency',
                        'This year',
                        'This Month',
                        'This Week'
                      ],
                    ),
                    MonthlyYearWidget(
                      initialValue: 'Price',
                      dropdownItems: [
                        'Price',
                        'This year',
                        'This Month',
                        'This Week'
                      ],
                    ),
                    MonthlyYearWidget(
                      initialValue: 'Analyze',
                      dropdownItems: [
                        'Analyze',
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
                CustomTableWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
