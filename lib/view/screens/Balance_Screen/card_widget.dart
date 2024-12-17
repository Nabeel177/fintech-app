import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CardWidget1 extends StatelessWidget {
  const CardWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: AppColors.whiteColor,
        elevation: 4,
        child: Container(
          height: 500.0,
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                color: AppColors.lightgrey,
                elevation: 2,
                child: SizedBox(
                  height: 100.0,
                  width: double.infinity,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'IWMY',
                              fontsize: 20,
                              fontweight: FontWeight.bold,
                            ),
                            CustomText(
                              text: '\$1,463',
                              fontsize: 20,
                              fontweight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: 'Defiance R2000 Enh Op In',
                              color: AppColors.greycolor,
                              fontsize: 17,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 8,
                          endIndent: 150,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  )),
                ),
              ),
              Card(
                color: AppColors.lightgrey,
                elevation: 2,
                child: SizedBox(
                  height: 100.0,
                  width: double.infinity,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'CONY',
                              fontsize: 20,
                              fontweight: FontWeight.bold,
                            ),
                            CustomText(
                              text: '\$2,635',
                              fontsize: 20,
                              fontweight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: 'Defiance R2000 Enh Op In',
                              color: AppColors.greycolor,
                              fontsize: 17,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 8,
                          endIndent: 100,
                          color: Colors.orange,
                        )
                      ],
                    ),
                  )),
                ),
              ),
              Card(
                color: AppColors.lightgrey,
                elevation: 2,
                child: SizedBox(
                  height: 100.0,
                  width: double.infinity,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'BITO',
                              fontsize: 20,
                              fontweight: FontWeight.bold,
                            ),
                            CustomText(
                              text: '\$3,768',
                              fontsize: 20,
                              fontweight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: 'Defiance R2000 Enh Op In',
                              color: AppColors.greycolor,
                              fontsize: 17,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 8,
                          endIndent: 120,
                          color: Colors.red,
                        )
                      ],
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
