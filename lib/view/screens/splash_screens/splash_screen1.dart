import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'splash_screen2.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen2()),
      );
    });

    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          AppAssets.splash3,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
