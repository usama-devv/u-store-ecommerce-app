import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/common/styles/spacing_styles.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/constants/text_strings.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: USpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title and Subtitle
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        height: 150,
                        image: AssetImage(
                          dark ? UImages.lightAppLogo : UImages.darkAppLogo,
                        ),
                      ),
                      Text(
                        UTextStrings.loginTitle,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: USizes.sm,
                      ),
                      Text(
                        UTextStrings.loginSubTitle,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),

                  /// Form
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: USizes.spaceBtwSections),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Iconsax.direct_right,
                              ),
                              labelText: UTextStrings.email,
                            ),
                          ),
                          const SizedBox(
                            height: USizes.spaceBtwInputFields,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Iconsax.password_check,
                              ),
                              labelText: UTextStrings.password,
                              suffixIcon: Icon(Iconsax.eye_slash),
                            ),
                          ),
                          const SizedBox(
                            height: USizes.spaceBtwInputFields / 2,
                          ),

                          /// Remember Me and Forgot Password
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              /// Remember Me
                              Row(
                                children: [
                                  Checkbox(value: true, onChanged: (value) {}),
                                  const Text(UTextStrings.rememberMe),
                                ],
                              ),

                              /// Forgot Password
                              TextButton(
                                onPressed: () {},
                                child: const Text(UTextStrings.forgotPassword),
                              ),
                            ],
                          ),
                          const SizedBox(height: USizes.spaceBtwSections),

                          /// SignIn Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(UTextStrings.signIn),
                            ),
                          ),
                          const SizedBox(height: USizes.spaceBtwItems),

                          /// Create Account Button
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(UTextStrings.createAccount),
                            ),
                          ),
                          const SizedBox(height: USizes.spaceBtwSections),
                        ],
                      ),
                    ),
                  ),
                  /// Divider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(color: dark? UColors.darkGrey : UColors.grey,),
                    ],
                  )

                  /// Footer
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
