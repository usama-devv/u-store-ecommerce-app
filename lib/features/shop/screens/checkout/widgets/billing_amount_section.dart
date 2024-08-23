import 'package:flutter/material.dart';
import 'package:u_store/utils/constants/sizes.dart';

class UBillingAmountSection extends StatelessWidget {
  const UBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Sub Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal:', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$175', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: USizes.spaceBtwItems / 2),
        /// Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee:', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$04', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: USizes.spaceBtwItems / 2),
        /// Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee:', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$02', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: USizes.spaceBtwItems / 2),
        /// Order Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total:', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$181', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
