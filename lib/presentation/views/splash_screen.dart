import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/views/onboarding/onborading_screen.dart';
import 'package:projectcore/shared/constants/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to LoginScreen after 2 seconds
    Timer(Duration(seconds: 2), () {
      Get.off(() => OnboradingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child:
              AspectRatio(aspectRatio: 1, child: Image.asset(AppAssets.splash)),
        ),
      ),
    );
  }
}
