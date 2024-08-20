import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/chips/choice_chip.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:u_store/common/widgets/texts/product_price_text.dart';
import 'package:u_store/common/widgets/texts/product_title_text.dart';
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
          padding: const EdgeInsets.all(USizes.md),
          backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const USectionHeading(
                      title: 'Variations', showActionButton: false),
                  const SizedBox(width: USizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const UProductTitleText(
                              title: 'Price : ', smallSize: true),

                          /// Actual Price
                          Text(
                            '\$250',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: USizes.spaceBtwItems),

                          /// Sale Price
                          const UProductPriceText(price: '175'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const UProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const UProductTitleText(
                title:
                    'This is the description of the product and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: USizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const USectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: USizes.spaceBtwItems / 2),
            /// Choice Chip
            Wrap(
              spacing: 8,
              children: [
                UChoiceChip(text: 'Green', selected: false, onSelected: (value){}),
                UChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                UChoiceChip(text: 'Purple', selected: true, onSelected: (value){}),
              ],
            ),
          ],
        ),
        /// Sizes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const USectionHeading(title: 'Sizes', showActionButton: false),
            const SizedBox(height: USizes.spaceBtwItems / 2),
            /// Choice Chip
            Wrap(
              spacing: 8,
              children: [
                UChoiceChip(text: 'EU-34', selected: false, onSelected: (value){}),
                UChoiceChip(text: 'EU-36', selected: false, onSelected: (value){}),
                UChoiceChip(text: 'EU-38', selected: true, onSelected: (value){}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


