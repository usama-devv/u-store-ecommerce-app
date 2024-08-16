import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:u_store/utils/constants/text_strings.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(USizes.defaultSpace),
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
              Text(UTextStrings.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: USizes.spaceBtwItems,
              ),
              Text(UTextStrings.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: USizes.spaceBtwSections,
              ),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){},
                    child: const Text(UTextStrings.done)),
              ),
              const SizedBox(
                height: USizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: (){},
                    child: const Text(UTextStrings.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
