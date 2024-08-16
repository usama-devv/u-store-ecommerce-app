import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/common/widgets/login_signup/form_divider.dart';
import 'package:u_store/common/widgets/login_signup/social_buttons.dart';
import 'package:u_store/features/authentication/screens/signup/verify_email.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/constants/text_strings.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

import 'terms_conditions_checkbox.dart';

class USignupForm extends StatelessWidget {
  const USignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    UHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: UTextStrings.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: USizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: UTextStrings.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: USizes.spaceBtwInputFields),

          /// UserName
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: UTextStrings.userName,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: USizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: UTextStrings.email,
                prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: USizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: UTextStrings.phoneNo,
                prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: USizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: UTextStrings.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: USizes.spaceBtwSections),

          /// Terms and Conditions checkbox
          const UTandCCheckbox(),
          const SizedBox(height: USizes.spaceBtwSections),

          /// SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(()=> const VerifyEmailScreen(),),
              child: const Text(UTextStrings.createAccount),
            ),
          ),

          const SizedBox(height: USizes.spaceBtwSections),

          /// Divider
          UFormDivider(dividerText: UTextStrings.orSignUpWith.capitalize!),

          const SizedBox(height: USizes.spaceBtwSections),

          /// Footer
          const USocialButtons(),
        ],
      ),
    );
  }
}


