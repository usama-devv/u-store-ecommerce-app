import 'package:flutter/material.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/constants/text_strings.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                UTextStrings.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: USizes.spaceBtwSections),

              /// Form
              const USignupForm(),
            ],
          ),
        ),
      ),
    );
  }
}


