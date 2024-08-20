import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:u_store/common/widgets/images/u_circular_image.dart';
import 'package:u_store/common/widgets/texts/product_price_text.dart';
import 'package:u_store/common/widgets/texts/product_title_text.dart';
import 'package:u_store/common/widgets/texts/u_brand_title_with_verified_icon.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/enums.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UProductMetaData extends StatelessWidget {
  const UProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price and Sale Tag
        Row(
          children: [
            /// Sale Tag
            URoundedContainer(
              radius: USizes.sm,
              backgroundColor: UColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: USizes.sm, vertical: USizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: UColors.black)),
            ),
            const SizedBox(width: USizes.spaceBtwItems),

            /// Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: USizes.spaceBtwItems),
            const UProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: USizes.spaceBtwItems / 1.5),

        /// Title
        const UProductTitleText(title: 'Acer Laptop'),
        const SizedBox(height: USizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const UProductTitleText(title: 'Status'),
            const SizedBox(width: USizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: USizes.spaceBtwItems / 1.5),
        /// Brand
        Row(
          children: [
            UCircularImage(image: UImages.electronicsIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? UColors.white : UColors.black,
            ),
            const UBrandTitleWithVerificationIcon(title: 'Acer', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
