import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:u_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/device/device_utility.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = UHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: UDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: USizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? UColors.light : UColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}