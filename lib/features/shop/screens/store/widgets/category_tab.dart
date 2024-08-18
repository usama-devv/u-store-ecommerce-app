import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/brands/brand_show_case.dart';
import 'package:u_store/common/widgets/layout/grid_layout.dart';
import 'package:u_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const UBrandShowCase(
                images: [
                  UImages.productImage1,
                  UImages.productImage2,
                  UImages.promoBanner3
                ],
              ),
              const SizedBox(height: USizes.spaceBtwItems),

              /// Products You May Like
              USectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: USizes.spaceBtwItems),

              UGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const UProductCardVertical()),
              const SizedBox(height: USizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
