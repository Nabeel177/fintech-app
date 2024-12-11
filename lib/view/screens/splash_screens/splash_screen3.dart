import 'package:flutter/material.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'package:dividend_project/widget/app_button.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              AppAssets.splash1,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Row(
                  children: [
                    CustomText(
                      text: 'Start your 30-day free trial',
                      color: AppColors.whiteColor,
                      fontsize: 22,
                      fontweight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(AppAssets.tick),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      text: 'No credit card required',
                      color: AppColors.greycolor,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [Image.asset(AppAssets.graph)],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Dividend Portfolio Management',
                      color: AppColors.whiteColor,
                      fontsize: 22,
                      fontweight: FontWeight.bold,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text:
                          'Integrate with guaranteed developer-friendly APIs\nor openly to choose a build-ready or low-code solution.',
                      color: AppColors.greycolor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [Image.asset(AppAssets.bug)],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Portfolio Analysis',
                      color: AppColors.whiteColor,
                      fontsize: 22,
                      fontweight: FontWeight.bold,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text:
                          'Receive detailed insights on all your numbers in real\ntime, see where visitors are coming from.',
                      color: AppColors.greycolor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [Image.asset(AppAssets.devolper)],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Ask Hey Dividend',
                      color: AppColors.whiteColor,
                      fontsize: 22,
                      fontweight: FontWeight.bold,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text:
                          'Keep your team members and customers in the loop by\nsharing your dashboard public.',
                      color: AppColors.greycolor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                AppButton(
                  text: 'Continue',
                  onPressed: () {},
                  color: AppColors.appColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
