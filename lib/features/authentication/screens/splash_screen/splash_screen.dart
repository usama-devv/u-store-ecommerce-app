import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';

import '../../../../utils/helpers/helper_functions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.to(() => const OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? UColors.black : UColors.white,
      body: Center(
        child: Image.asset(
          dark ? UImages.lightAppLogo : UImages.darkAppLogo,
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
