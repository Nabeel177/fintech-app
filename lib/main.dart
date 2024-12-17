import 'package:dividend_project/view/screens/Analystic%20Screen/analystic_screen.dart';
import 'package:dividend_project/view/screens/Analystic%20Screen/transaction_screen.dart';
import 'package:dividend_project/view/screens/Balance_Screen/Balance_screen.dart';
import 'package:dividend_project/view/screens/Balance_Screen/screening_screen.dart';
import 'package:dividend_project/view/screens/Forcasting_screen/balance_screen.dart';
import 'package:dividend_project/view/screens/Forcasting_screen/forcasting_screen.dart';
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
        scaffoldBackgroundColor: Color(0xffF5F5F5),
      ),
      home: TransactionScreen(),
    );
  }
}
