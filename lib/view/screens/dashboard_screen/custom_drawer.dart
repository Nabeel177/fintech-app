import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: SizedBox(
                    height: 50.0,
                    width: 250.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 15),
                    child: Row(
                      children: [
                        CustomText(
                          text: 'Main',
                          color: AppColors.blackColor,
                          fontsize: 20,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.analysis,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Dashboard',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.devolperr,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Ask Hey Dividend',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.graphup,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Portfolio',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.tuning,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Strategy',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.tuneing,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Forecasting',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.chart,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Screener',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.money,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Income',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.invoice,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Balances',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.transaction,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'History',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.cap,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Education',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 15),
                    child: Row(
                      children: [
                        CustomText(
                          text: 'View',
                          color: AppColors.blackColor,
                          fontsize: 20,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.user,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Account',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.affiliate,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Connected Accounts',
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(AppAssets.title),
                      Column(
                        children: [
                          CustomText(
                            text: 'Pixem',
                            fontsize: 18,
                            fontweight: FontWeight.bold,
                          ),
                          CustomText(
                            text: 'hiPixem@gmail.com',
                          ),
                        ],
                      ),
                      SvgPicture.asset(AppAssets.more),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
