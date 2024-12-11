import 'package:dividend_project/view/screens/portfolio/portfolio_screen.dart';
import 'package:flutter/material.dart';
import 'package:dividend_project/view/screens/create_profile_screen/signin_screen.dart';
import 'package:dividend_project/view/screens/dashboard_screen/dashboard_screens.dart';
import 'package:dividend_project/view/screens/splash_screens/splash_screen1.dart';
import 'package:dividend_project/view/screens/started_screen/started_screen.dart';
import 'package:dividend_project/widget/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor,
      ),
      home: PortfolioScreen(),
    );
  }
}
