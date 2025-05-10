import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pos_system/constants/app_color.dart';
import 'package:pos_system/features/onboarding/presentation/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'POS SYSTEM',
          style: TextStyle(fontSize: 25, color: AppColor.c1A72DD),
        ),
      ),
    );
  }
}
