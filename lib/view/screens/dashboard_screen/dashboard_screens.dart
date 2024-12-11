import 'package:dividend_project/view/screens/dashboard_screen/bar_chart.dart';
import 'package:dividend_project/view/screens/dashboard_screen/bar_chart_two.dart';
import 'package:dividend_project/widget/custom_textfield.dart';
import 'package:dividend_project/widget/divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dividend_project/view/screens/dashboard_screen/custom_drawer.dart';
import 'package:dividend_project/view/screens/dashboard_screen/graph_widget.dart';
import 'package:dividend_project/view/screens/started_screen/monthly_year_widget.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardScreens extends StatefulWidget {
  const DashboardScreens({super.key});

  @override
  State<DashboardScreens> createState() => _DashboardScreensState();
}

class _DashboardScreensState extends State<DashboardScreens> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Builder(builder: (context) {
                      return GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: SvgPicture.asset(AppAssets.vector));
                    }),
                    SizedBox(width: 50),
                    SvgPicture.asset(AppAssets.logo),
                    SizedBox(width: 5),
                    CustomText(
                      text: 'Hey Dividend',
                      fontsize: 25,
                      fontweight: FontWeight.bold,
                    ),
                    Spacer(),
                    SvgPicture.asset(AppAssets.button)
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
                            padding: const EdgeInsets.only(top: 10),
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
                              SizedBox(width: 20),
                              Icon(
                                Icons.arrow_drop_down,
                                color: AppColors.whiteColor,
                                size: 50,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
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
                          inactiveTrackColor:
                              AppColors.greycolor.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Overview',
                      fontsize: 25,
                      fontweight: FontWeight.bold,
                    ),
                    Spacer(),
                    MonthlyYearWidget(
                      initialValue: 'Yearly',
                      dropdownItems: ['Yearly', 'Monthly', 'Weekly'],
                    ),
                    SizedBox(width: 5),
                    MonthlyYearWidget(
                      initialValue: 'Dividend',
                      dropdownItems: [
                        'Dividend',
                        'Yearly',
                        'Monthly',
                        'Weekly'
                      ],
                    ),
                    SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greycolor),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.filter_alt,
                        color: AppColors.greycolor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppAssets.bank),
                    SizedBox(
                      width: 5,
                    ),
                    CustomText(
                      text: 'Income',
                      color: AppColors.greycolor,
                      fontsize: 18,
                      fontweight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 26,
                      width: 76,
                      decoration: BoxDecoration(
                          color: AppColors.greencolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppAssets.leftarrow),
                            CustomText(
                              text: '160%',
                              color: Color(0xff29896E),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: '\$86,044',
                      fontsize: 25,
                      fontweight: FontWeight.bold,
                    ),
                    SvgPicture.asset(AppAssets.bankimg),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'From \$175,26',
                      color: AppColors.greycolor,
                      fontsize: 18,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppAssets.moneysnd),
                    SizedBox(
                      width: 5,
                    ),
                    CustomText(
                      text: 'Yield',
                      color: AppColors.greycolor,
                      fontsize: 18,
                      fontweight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 26,
                      width: 76,
                      decoration: BoxDecoration(
                          color: AppColors.greencolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppAssets.leftarrow),
                            CustomText(
                              text: '160%',
                              color: Color(0xff29896E),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: '13 %',
                      fontsize: 25,
                      fontweight: FontWeight.bold,
                    ),
                    SvgPicture.asset(AppAssets.bankimg),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'From 8 Monthes',
                      color: AppColors.greycolor,
                      fontsize: 18,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppAssets.transaction),
                    SizedBox(
                      width: 5,
                    ),
                    CustomText(
                      text: 'Average Payment',
                      color: AppColors.greycolor,
                      fontsize: 18,
                      fontweight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 26,
                      width: 76,
                      decoration: BoxDecoration(
                          color: AppColors.pinkcolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppAssets.arrowdown),
                            CustomText(
                              text: '160%',
                              color: Color(0xffB58330),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: '\$6,144',
                      fontsize: 25,
                      fontweight: FontWeight.bold,
                    ),
                    SvgPicture.asset(AppAssets.bankimg),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Down from \$6,629.21',
                      color: AppColors.greycolor,
                      fontsize: 18,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MonthlyYearWidget(
                      initialValue: 'Income',
                      dropdownItems: ['Income', 'This year', 'This Week'],
                    ),
                    MonthlyYearWidget(
                      initialValue: 'Last Month',
                      dropdownItems: ['Last Month', 'this month', 'this week'],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GraphWidget(
                  dataPoints: [
                    FlSpot(0, 1),
                    FlSpot(1, 3),
                    FlSpot(2, 2),
                    FlSpot(3, 5),
                    FlSpot(4, 4),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Monthly Totals',
                      fontsize: 25,
                      fontweight: FontWeight.bold,
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greycolor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              color: AppColors.greycolor,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CustomText(
                              text: 'Jul 09 -July 16',
                              fontweight: FontWeight.bold,
                              color: AppColors.greycolor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        ColorfulDivider(
                          height: 50,
                          colors: [Colors.green, Colors.blue],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            CustomText(
                              text: 'Monthly Income',
                              color: AppColors.greycolor,
                            ),
                            CustomText(
                              text: '\$4,180,332.54',
                              fontsize: 15,
                              fontweight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        ColorfulDivider(
                          height: 50,
                          colors: [Colors.green, Colors.blue],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            CustomText(
                              text: 'Avg. Monthly Payment',
                              color: AppColors.greycolor,
                            ),
                            CustomText(
                              text: '\$25,296',
                              fontsize: 15,
                              fontweight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        ColorfulDivider(
                          height: 50,
                          colors: [Colors.green, Colors.blue],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            CustomText(
                              text: 'Monthly ROI',
                              color: AppColors.greycolor,
                            ),
                            CustomText(
                              text: '\$18,043',
                              fontsize: 15,
                              fontweight: FontWeight.bold,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                BarChartSample2(),
                Center(
                  child: Card(
                    color: AppColors.whiteColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 330,
                      width: 330,
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          BarChartTwo(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Card(
                    color: AppColors.whiteColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 330,
                      width: 330,
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: 'Dividend Payout Calculator',
                            fontsize: 20,
                            fontweight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: 'Stock Symbol:',
                                fontsize: 15,
                                fontweight: FontWeight.bold,
                              ),
                              Container(
                                  height: 30,
                                  width: 130,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)))),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: 'Price:',
                                fontsize: 15,
                                fontweight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: 'Investment Amount:',
                                fontsize: 15,
                                fontweight: FontWeight.bold,
                              ),
                              Container(
                                  height: 30,
                                  width: 130,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)))),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: 'Expected Earnings:',
                                fontsize: 15,
                                fontweight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
