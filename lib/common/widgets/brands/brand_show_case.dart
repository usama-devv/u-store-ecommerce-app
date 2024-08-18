import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/brands/u_brand_card.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UBrandShowCase extends StatelessWidget {
  const UBrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return URoundedContainer(
      showBorder: true,
      borderColor: UColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(USizes.md),
      margin: const EdgeInsets.only(bottom: USizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const UBrandCard(showBorder: false),
          const SizedBox(height: USizes.spaceBtwItems),

          /// Brand Top 3 Products Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: URoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(USizes.md),
        margin: const EdgeInsets.only(right: USizes.sm),
        backgroundColor: UHelperFunctions.isDarkMode(context)
            ? UColors.darkerGrey
            : UColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}