import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/device/device_utility.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class USearchContainer extends StatelessWidget {
  const USearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Container(
          width: UDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(USizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? UColors.dark
                    : UColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(USizes.cardRadiusLg),
            border: showBorder ? Border.all(color: UColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: UColors.darkerGrey),
              const SizedBox(width: USizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
