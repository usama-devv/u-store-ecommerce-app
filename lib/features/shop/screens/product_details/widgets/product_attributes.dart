import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attribute Pricing and Description
        URoundedContainer(
          backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
          child: const Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  USectionHeading(title: 'Variations', showActionButton: false),
                  SizedBox(width: USizes.spaceBtwItems),
                ],
              ),
              /// Variation Description
            ],
          ),
        ),
      ],
    );
  }
}
