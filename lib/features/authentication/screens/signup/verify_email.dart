import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_store/common/widgets/success_screen/success_screen.dart';
import 'package:u_store/features/authentication/screens/login/login_screen.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/constants/text_strings.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(UImages.deliveredEmailIllustration),
                width: UHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: USizes.spaceBtwSections,
              ),

              /// Title and Subtitle
              Text(UTextStrings.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: USizes.spaceBtwItems,
              ),

              Text('support@u-store.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: USizes.spaceBtwItems,
              ),
              Text(UTextStrings.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: USizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: UImages.staticSuccessIllustration,
                          title: UTextStrings.yourAccountCreatedTitle,
                          subTitle: UTextStrings.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(UTextStrings.uContinue)),
              ),
              const SizedBox(
                height: USizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(UTextStrings.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
