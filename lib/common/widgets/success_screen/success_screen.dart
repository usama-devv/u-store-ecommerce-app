import 'package:flutter/material.dart';
import 'package:u_store/common/styles/spacing_styles.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/constants/text_strings.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: USpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(image),
                width: UHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: USizes.spaceBtwSections,
              ),

              /// Title and Subtitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: USizes.spaceBtwItems,
              ),
              Text(subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: USizes.spaceBtwSections,
              ),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(UTextStrings.uContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
