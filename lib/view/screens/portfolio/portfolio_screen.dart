import 'package:dividend_project/view/screens/portfolio/custom_table.dart';
import 'package:dividend_project/view/screens/portfolio/mountain_charts.dart';
import 'package:dividend_project/view/screens/portfolio/sparkline_chart.dart';
import 'package:dividend_project/view/screens/started_screen/monthly_year_widget.dart';
import 'package:dividend_project/view/screens/started_screen/tab.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fl_chart/fl_chart.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

bool isSwitched = false;

class _PortfolioScreenState extends State<PortfolioScreen> {
  bool _rememberMe = false;
  bool _rememberMe1 = false;
  bool _rememberMe2 = false;
  bool _rememberMe3 = false;
  bool _rememberMe4 = false;
  bool _rememberMe5 = false;
  bool _rememberMe6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
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
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Portfolio Summary',
                fontsize: 20,
                fontweight: FontWeight.bold,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Free Mode',
                    color: AppColors.appColor,
                    fontweight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: 5,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            color: AppColors.whiteColor,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              height: 140,
              width: 380,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Total Value',
                    fontsize: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: '\$44,780',
                        fontsize: 20,
                        fontweight: FontWeight.bold,
                      ),
                      SparklineChart(
                        data: [
                          0.0,
                          1.0,
                          1.5,
                          2.0,
                          0.0,
                          0.0,
                          -0.5,
                          -1.0,
                          -0.5,
                          0.0,
                          0.0
                        ],
                        color: Colors.green,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: '+04,16%',
                        fontsize: 20,
                        fontweight: FontWeight.bold,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'From last month',
                        fontsize: 17,
                        color: AppColors.greycolor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Today’s Profit/Loss',
                fontsize: 20,
              ),
              CustomText(
                text: 'Portfolio Yield',
                fontsize: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                text: '+\$85.04',
                fontsize: 20,
                fontweight: FontWeight.bold,
                color: Colors.green,
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
              CustomText(
                text: '0.21%',
                fontsize: 20,
                fontweight: FontWeight.bold,
                color: Colors.green,
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
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MonthlyYearWidget(
                initialValue: 'Earnings',
                dropdownItems: [
                  'Earnings',
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
          MountainChart(
            dataPoints: [
              FlSpot(0, 2),
              FlSpot(2, 4),
              FlSpot(4, 1),
              FlSpot(6, 5),
              FlSpot(8, 3),
              FlSpot(10, 7),
            ],
          ),
          SizedBox(
            height: 20,
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
            height: 20,
          ),
          CustomTableWidget(),
          SizedBox(
            height: 20,
          ),
          // CustomTabWidget(
          //   tabTitles: ["General", "Holdings", "Dividend", "View All"],
          //   tabViews: [
          //     Center(child: Text("General Content")),
          //     Center(child: Text("Holdings Content")),
          //     Table(
          //       border: TableBorder.all(
          //         color: Colors.grey,
          //         width: 0,
          //       ),
          //       children: [
          //         TableRow(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.all(6.0),
          //               child: Text(
          //                 'Symbol',
          //                 style: TextStyle(fontWeight: FontWeight.bold),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(6.0),
          //               child: Text(
          //                 'Price',
          //                 style: TextStyle(fontWeight: FontWeight.bold),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 'Chg %',
          //                 style: TextStyle(fontWeight: FontWeight.bold),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 'Last Div.',
          //                 style: TextStyle(fontWeight: FontWeight.bold),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 'Ex Div.',
          //                 style: TextStyle(fontWeight: FontWeight.bold),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(0.0),
          //               child: Text(
          //                 'Payout Frequency',
          //                 style: TextStyle(fontWeight: FontWeight.bold),
          //               ),
          //             ),
          //           ],
          //         ),
          //         TableRow(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(left: 15, top: 18),
          //               child: Center(
          //                 child: Row(
          //                   children: [
          //                     Container(
          //                       height: 3,
          //                       width: 3,
          //                       child: Checkbox(
          //                         side: BorderSide(color: AppColors.appColor),
          //                         value: _rememberMe,
          //                         activeColor: AppColors.appColor,
          //                         onChanged: (bool? value) {
          //                           setState(() {
          //                             _rememberMe = value ?? false;
          //                           });
          //                         },
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       width: 10,
          //                     ),
          //                     Text(
          //                       'PSP',
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: AppColors.appColor,
          //                           fontSize: 14),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('61.87'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 '+0.29%',
          //                 style: TextStyle(color: Colors.green),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('3.518'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('Jun 24'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 'Quarterly',
          //               ),
          //             ),
          //           ],
          //         ),
          //         TableRow(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(left: 15, top: 18),
          //               child: Center(
          //                 child: Row(
          //                   children: [
          //                     Container(
          //                       height: 3,
          //                       width: 3,
          //                       child: Checkbox(
          //                         side: BorderSide(color: AppColors.appColor),
          //                         value: _rememberMe1,
          //                         activeColor: AppColors.appColor,
          //                         onChanged: (bool? value) {
          //                           setState(() {
          //                             _rememberMe1 = value ?? false;
          //                           });
          //                         },
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       width: 10,
          //                     ),
          //                     Text(
          //                       'PH',
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: AppColors.appColor,
          //                           fontSize: 14),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('61.87'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 '+0.29%',
          //                 style: TextStyle(color: Colors.green),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('3.518'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('Jun 24'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 'Quarterly',
          //               ),
          //             ),
          //           ],
          //         ),
          //         TableRow(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(left: 15, top: 18),
          //               child: Center(
          //                 child: Row(
          //                   children: [
          //                     Container(
          //                       height: 3,
          //                       width: 3,
          //                       child: Checkbox(
          //                         side: BorderSide(color: AppColors.appColor),
          //                         value: _rememberMe2,
          //                         activeColor: AppColors.appColor,
          //                         onChanged: (bool? value) {
          //                           setState(() {
          //                             _rememberMe2 = value ?? false;
          //                           });
          //                         },
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       width: 10,
          //                     ),
          //                     Text(
          //                       'SPY',
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: AppColors.appColor,
          //                           fontSize: 14),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('61.87'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 '+0.29%',
          //                 style: TextStyle(color: Colors.green),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('3.518'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('Jun 24'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 'Quarterly',
          //               ),
          //             ),
          //           ],
          //         ),
          //         TableRow(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(left: 15, top: 18),
          //               child: Center(
          //                 child: Row(
          //                   children: [
          //                     Container(
          //                       height: 3,
          //                       width: 3,
          //                       child: Checkbox(
          //                         side: BorderSide(color: AppColors.appColor),
          //                         value: _rememberMe3,
          //                         activeColor: AppColors.appColor,
          //                         onChanged: (bool? value) {
          //                           setState(() {
          //                             _rememberMe3 = value ?? false;
          //                           });
          //                         },
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       width: 10,
          //                     ),
          //                     Text(
          //                       'PSP',
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: AppColors.appColor,
          //                           fontSize: 14),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('61.87'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 '+0.29%',
          //                 style: TextStyle(color: Colors.green),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('3.518'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('Jun 24'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 'Quarterly',
          //               ),
          //             ),
          //           ],
          //         ),
          //         TableRow(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(left: 15, top: 18),
          //               child: Center(
          //                 child: Row(
          //                   children: [
          //                     Container(
          //                       height: 3,
          //                       width: 3,
          //                       child: Checkbox(
          //                         side: BorderSide(color: AppColors.appColor),
          //                         value: _rememberMe4,
          //                         activeColor: AppColors.appColor,
          //                         onChanged: (bool? value) {
          //                           setState(() {
          //                             _rememberMe4 = value ?? false;
          //                           });
          //                         },
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       width: 10,
          //                     ),
          //                     Text(
          //                       'PH',
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: AppColors.appColor,
          //                           fontSize: 14),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('61.87'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 '-1.91%',
          //                 style: TextStyle(color: Colors.red),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('3.518'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('Jun 24'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 'Quarterly',
          //               ),
          //             ),
          //           ],
          //         ),
          //         TableRow(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(left: 15, top: 18),
          //               child: Center(
          //                 child: Row(
          //                   children: [
          //                     Container(
          //                       height: 3,
          //                       width: 3,
          //                       child: Checkbox(
          //                         side: BorderSide(color: AppColors.appColor),
          //                         value: _rememberMe5,
          //                         activeColor: AppColors.appColor,
          //                         onChanged: (bool? value) {
          //                           setState(() {
          //                             _rememberMe5 = value ?? false;
          //                           });
          //                         },
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       width: 10,
          //                     ),
          //                     Text(
          //                       'SPY',
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: AppColors.appColor,
          //                           fontSize: 14),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('61.87'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 '-1.51%',
          //                 style: TextStyle(color: Colors.red),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('3.518'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('Jun 24'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 'Quarterly',
          //               ),
          //             ),
          //           ],
          //         ),
          //         TableRow(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(left: 15, top: 18),
          //               child: Center(
          //                 child: Row(
          //                   children: [
          //                     Container(
          //                       height: 3,
          //                       width: 3,
          //                       child: Checkbox(
          //                         side: BorderSide(color: AppColors.appColor),
          //                         value: _rememberMe6,
          //                         activeColor: AppColors.appColor,
          //                         onChanged: (bool? value) {
          //                           setState(() {
          //                             _rememberMe6 = value ?? false;
          //                           });
          //                         },
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       width: 10,
          //                     ),
          //                     Text(
          //                       'PSP',
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: AppColors.appColor,
          //                           fontSize: 14),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('61.87'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 '-1.31%',
          //                 style: TextStyle(color: Colors.red),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('3.518'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text('Jun 24'),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 'Quarterly',
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //     Center(child: Text("View All Content")),
          //   ],
          //   selectedTabColor: AppColors.appColor,
          //   unselectedTabColor: AppColors.blackColor,
          //   indicatorColor: AppColors.appColor,
          // ),

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
        ]),
      )),
    ));
  }
}
