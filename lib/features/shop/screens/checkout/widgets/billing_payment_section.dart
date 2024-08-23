import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UBillingPaymentSection extends StatelessWidget {
  const UBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        USectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: USizes.spaceBtwItems / 2),
        Row(
          children: [
            URoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? UColors.light : UColors.white,
              padding: const EdgeInsets.all(USizes.sm),
              child: const Image(
                image: AssetImage(UImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: USizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
