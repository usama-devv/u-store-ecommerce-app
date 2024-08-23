import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/utils/constants/sizes.dart';

class UBillingAddressSection extends StatelessWidget {
  const UBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        USectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Usama Masood', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: USizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: USizes.spaceBtwItems),
            Text('+92 300-0000000',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: USizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: USizes.spaceBtwItems),
            Text('South Liana, Maine 19765, USA',
                style: Theme.of(context).textTheme.bodyMedium, softWrap: true),
          ],
        ),
      ],
    );
  }
}
