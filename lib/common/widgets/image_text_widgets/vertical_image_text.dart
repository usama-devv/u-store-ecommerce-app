import 'package:flutter/material.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UVerticalImageText extends StatelessWidget {
  const UVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = UColors.white,
    this.backgroundColor = UColors.white,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: USizes.spaceBtwItems / 8),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(USizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? UColors.black : UColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? UColors.light : UColors.dark,
                ),
              ),
            ),

            /// Text
            const SizedBox(height: USizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: USizes.spaceBtwItems),
              child: SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}