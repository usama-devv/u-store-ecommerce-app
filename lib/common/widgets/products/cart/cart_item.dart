import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/images/u_rounded_image.dart';
import 'package:u_store/common/widgets/texts/product_title_text.dart';
import 'package:u_store/common/widgets/texts/u_brand_title_with_verified_icon.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UCartItem extends StatelessWidget {
  const UCartItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        URoundedImage(
          imageUrl: UImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(USizes.sm),
          backgroundColor:
          dark ? UColors.darkerGrey : UColors.light,
        ),
        const SizedBox(width: USizes.spaceBtwItems),

        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UBrandTitleWithVerificationIcon(title: 'Acer'),
              const Flexible(child: UProductTitleText(title: 'Acer Laptop', maxLines: 1)),

              /// Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'EU-36 ', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}