import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:u_store/common/widgets/images/u_circular_image.dart';
import 'package:u_store/common/widgets/texts/u_brand_title_with_verified_icon.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/enums.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UBrandCard extends StatelessWidget {
  const UBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });
  final void Function()? onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: URoundedContainer(
        padding: const EdgeInsets.all(USizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Icon
            Flexible(
              child: UCircularImage(
                isNetworkImage: false,
                image: UImages.iconCloth,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? UColors.white : UColors.black,
              ),
            ),
            const SizedBox(width: USizes.spaceBtwItems / 2),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const UBrandTitleWithVerificationIcon(
                      title: 'Acer', brandTextSize: TextSizes.large),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
