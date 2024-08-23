import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/common/widgets/icons/u_circular_icon.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UProductQuantityWithAddAndRemove extends StatelessWidget {
  const UProductQuantityWithAddAndRemove({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        UCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: USizes.md,
          color: dark ? UColors.white : UColors.black,
          backgroundColor:
          dark ? UColors.darkerGrey : UColors.light,
        ),
        const SizedBox(width: USizes.spaceBtwItems),
        Text('2',
            style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: USizes.spaceBtwItems),
        const UCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: USizes.md,
          color: UColors.white,
          backgroundColor: UColors.primary,
        ),
      ],
    );
  }
}