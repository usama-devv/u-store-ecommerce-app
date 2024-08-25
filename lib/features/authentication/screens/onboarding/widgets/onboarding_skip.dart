import 'package:flutter/material.dart';
import 'package:u_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:u_store/utils/device/device_utility.dart';
import 'package:u_store/utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: UDeviceUtils.getAppBarHeight(),
      right: USizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: const Text('Skip'),
      ),
    );
  }
}