import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/text_strings.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: UImages.onBoardingImage1,
                title: UTextStrings.onboardingTitle1,
                subTitle: UTextStrings.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: UImages.onBoardingImage2,
                title: UTextStrings.onboardingTitle2,
                subTitle: UTextStrings.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: UImages.onBoardingImage3,
                title: UTextStrings.onboardingTitle3,
                subTitle: UTextStrings.onboardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation Smooth Page Indicator

          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}


