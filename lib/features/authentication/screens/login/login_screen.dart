import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_store/common/styles/spacing_styles.dart';
import 'package:u_store/common/widgets/login_signup/form_divider.dart';
import 'package:u_store/common/widgets/login_signup/social_buttons.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/constants/text_strings.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: USpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title and Subtitle
              Column(
                children: [
                  const ULoginHeader(),
                  /// Form
                  const ULoginForm(),
                  /// Divider
                  UFormDivider(dividerText: UTextStrings.orSignInWith.capitalize!),
                  const SizedBox(height: USizes.spaceBtwSections,),
                  /// Footer
                  const USocialButtons(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}








