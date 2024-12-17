import 'package:dividend_project/view/screens/Balance_Screen/screening_table.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'package:dividend_project/widget/app_button.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';
import 'package:dividend_project/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScreeningScreen extends StatefulWidget {
  const ScreeningScreen({super.key});

  @override
  State<ScreeningScreen> createState() => _ScreeningScreenState();
}

class _ScreeningScreenState extends State<ScreeningScreen> {
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
                children: [
                  CustomText(
                    text: 'Dividend Screeners',
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
              Row(
                children: [
                  CustomText(
                    text: 'Screener Name',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Enter the name',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Dividend by Category',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: '+ Add Dividend Category',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Dividend Company',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: '+ Add Dividend Company',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Frequency',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: '+ Add Dividend Category',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Distribution Price',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  ),
                  Spacer(),
                  CustomText(
                    text: 'Greater than',
                    fontsize: 18,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'ETF/Stock Price',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  ),
                  Spacer(),
                  CustomText(
                    text: 'Greater than',
                    fontsize: 18,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Dividend Yield%',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(),
              SizedBox(
                height: 30,
              ),
              AppButton(
                  text: 'Find Dividends',
                  onPressed: () {},
                  color: AppColors.appColor),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'My Dividend Screeners List',
                    fontsize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ScreeningTable(),
            ],
          ),
        ),
      )),
    );
  }
}
