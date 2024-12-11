import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dividend_project/widget/app_assets.dart';
import 'splash_screen3.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen3()),
      );
    });

    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          AppAssets.splash2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
