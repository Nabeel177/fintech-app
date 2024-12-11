import 'package:flutter/material.dart';
import 'package:dividend_project/widget/app_button.dart';
import 'package:dividend_project/widget/app_colors.dart';
import 'package:dividend_project/widget/custom_text.dart';
import 'package:dividend_project/widget/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 60),
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Sign in to Your Account',
                        fontsize: 20,
                        fontweight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    CustomText(
                      text: 'Email',
                      fontweight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  prefixIcon: Icons.email,
                  hintText: 'Your Email',
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    CustomText(
                      text: 'Password',
                      fontweight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  prefixIcon: Icons.lock,
                  hintText: '***************',
                  suffixIcon: Icons.remove_red_eye,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          side: BorderSide(color: AppColors.appColor),
                          value: _rememberMe,
                          activeColor: AppColors.appColor,
                          onChanged: (bool? value) {
                            setState(() {
                              _rememberMe = value ?? false;
                            });
                          },
                        ),
                        CustomText(
                          text: 'Remember Me',
                          color: AppColors.blackColor,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => ForgotPasswordScreen()),
                        // );
                      },
                      child: CustomText(
                        text: 'Forget Password?',
                        color: AppColors.appColor,
                        fontweight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                AppButton(
                  text: 'Login',
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => CreateProfileScreen()),
                    // );
                  },
                  color: AppColors.appColor,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.greycolor)),
                      // child: Image.asset(AppAssets.fbimg),
                    ),
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.greycolor)),
                      // child: Image.asset(AppAssets.googleimg),
                    ),
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.greycolor)),
                      // child: Image.asset(AppAssets.appleimg),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'Don’t have an account?',
                      color: AppColors.greycolor,
                    ),
                    CustomText(
                      text: 'Sign Up',
                      fontweight: FontWeight.bold,
                      color: AppColors.appColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
