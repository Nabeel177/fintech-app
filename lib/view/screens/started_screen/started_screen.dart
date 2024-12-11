import 'package:flutter/material.dart';
import 'package:dividend_project/view/screens/started_screen/monthly_year_widget.dart';
import 'package:dividend_project/view/screens/started_screen/tab.dart';
import 'package:dividend_project/widget/app_button.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: CustomText(
                  text: 'Create Dividend Portfolio',
                  fontsize: 23,
                  fontweight: FontWeight.bold,
                ),
              ),
            ),
            CustomText(
              text: 'Your account starts with setting up a Portfolio. You can',
              color: AppColors.greycolor,
              fontsize: 15,
            ),
            CustomText(
              text: 'do that multiple ways:',
              color: AppColors.greycolor,
              fontsize: 15,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CustomText(
                  text: 'Payout:',
                  color: AppColors.blackColor,
                  fontweight: FontWeight.bold,
                  fontsize: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                MonthlyYearWidget(
                  initialValue: 'Yearly',
                  dropdownItems: ['Yearly', 'Monthly', 'Weekly'],
                ),
                SizedBox(
                  width: 20,
                ),
                CustomText(
                  text: 'Ticker:',
                  color: AppColors.blackColor,
                  fontweight: FontWeight.bold,
                  fontsize: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greycolor),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: CustomText(
                      text: 'Search and Add to Portfolio',
                      fontsize: 10,
                      color: AppColors.greycolor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: CustomTabWidget(
                tabTitles: ["General", "Holdings", "Dividend", "View All"],
                tabViews: [
                  Center(child: Text("General Content")),
                  Center(child: Text("Holdings Content")),
                  Table(
                    border: TableBorder.all(
                      color: Colors.grey,
                      width: 0,
                    ),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              'Symbol',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              'Price',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Chg %',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Last Div.',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Ex Div.',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text(
                              'Payout Frequency',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 18),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 3,
                                    width: 3,
                                    child: Checkbox(
                                      side:
                                          BorderSide(color: AppColors.appColor),
                                      value: _rememberMe,
                                      activeColor: AppColors.appColor,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _rememberMe = value ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'PSP',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.appColor,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('61.87'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '+0.29%',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('3.518'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Jun 24'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Quarterly',
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 18),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 3,
                                    width: 3,
                                    child: Checkbox(
                                      side:
                                          BorderSide(color: AppColors.appColor),
                                      value: _rememberMe1,
                                      activeColor: AppColors.appColor,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _rememberMe1 = value ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'PH',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.appColor,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('61.87'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '+0.29%',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('3.518'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Jun 24'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Quarterly',
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 18),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 3,
                                    width: 3,
                                    child: Checkbox(
                                      side:
                                          BorderSide(color: AppColors.appColor),
                                      value: _rememberMe2,
                                      activeColor: AppColors.appColor,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _rememberMe2 = value ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'SPY',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.appColor,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('61.87'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '+0.29%',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('3.518'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Jun 24'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Quarterly',
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 18),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 3,
                                    width: 3,
                                    child: Checkbox(
                                      side:
                                          BorderSide(color: AppColors.appColor),
                                      value: _rememberMe3,
                                      activeColor: AppColors.appColor,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _rememberMe3 = value ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'PSP',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.appColor,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('61.87'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '+0.29%',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('3.518'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Jun 24'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Quarterly',
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 18),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 3,
                                    width: 3,
                                    child: Checkbox(
                                      side:
                                          BorderSide(color: AppColors.appColor),
                                      value: _rememberMe4,
                                      activeColor: AppColors.appColor,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _rememberMe4 = value ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'PH',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.appColor,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('61.87'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '-1.91%',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('3.518'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Jun 24'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Quarterly',
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 18),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 3,
                                    width: 3,
                                    child: Checkbox(
                                      side:
                                          BorderSide(color: AppColors.appColor),
                                      value: _rememberMe5,
                                      activeColor: AppColors.appColor,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _rememberMe5 = value ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'SPY',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.appColor,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('61.87'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '-1.51%',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('3.518'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Jun 24'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Quarterly',
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 18),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 3,
                                    width: 3,
                                    child: Checkbox(
                                      side:
                                          BorderSide(color: AppColors.appColor),
                                      value: _rememberMe6,
                                      activeColor: AppColors.appColor,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _rememberMe6 = value ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'PSP',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.appColor,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('61.87'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '-1.31%',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('3.518'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Jun 24'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Quarterly',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Center(child: Text("View All Content")),
                ],
                selectedTabColor: AppColors.appColor,
                unselectedTabColor: AppColors.blackColor,
                indicatorColor: AppColors.appColor,
              ),
            ),
            AppButton(
                text: 'Continue', onPressed: () {}, color: AppColors.appColor)
          ],
        ),
      ),
    );
  }
}
