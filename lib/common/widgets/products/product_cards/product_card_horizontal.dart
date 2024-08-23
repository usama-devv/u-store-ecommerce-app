import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:u_store/common/widgets/icons/u_circular_icon.dart';
import 'package:u_store/common/widgets/images/u_rounded_image.dart';
import 'package:u_store/common/widgets/texts/product_price_text.dart';
import 'package:u_store/common/widgets/texts/product_title_text.dart';
import 'package:u_store/common/widgets/texts/u_brand_title_with_verified_icon.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UProductCardHorizontal extends StatelessWidget {
  const UProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(USizes.productImageRadius),
        color: dark ? UColors.darkerGrey : UColors.softGrey,
      ),
      child: Row(
        children: [
          /// Thumbnail
          URoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(USizes.sm),
            backgroundColor: dark ? UColors.dark : UColors.light,
            child: Stack(
              children: [
                /// Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: URoundedImage(
                      imageUrl: UImages.productImage1, applyImageRadius: true),
                ),

                /// Sale Tag
                Positioned(
                  top: 12,
                  child: URoundedContainer(
                    radius: USizes.sm,
                    backgroundColor: UColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: USizes.sm, vertical: USizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: UColors.black),
                    ),
                  ),
                ),

                /// Favourite Icon Button
                const Positioned(
                    top: 0,
                    right: 0,
                    child:
                        UCircularIcon(icon: Iconsax.heart5, color: Colors.red)),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: USizes.sm, left: USizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          UProductTitleText(
                              title: 'Acer Laptop',
                              smallSize: true),
                        ],
                      ),
                      SizedBox(height: USizes.spaceBtwItems / 2),
                      UBrandTitleWithVerificationIcon(title: 'Acer'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(child: UProductPriceText(price: '175')),

                      /// Add to Cart Button
                      Container(
                        decoration: const BoxDecoration(
                          color: UColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(USizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(USizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: USizes.iconLg * 1.2,
                          height: USizes.iconLg * 1.2,
                          child: Center(
                              child: Icon(Iconsax.add, color: UColors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
