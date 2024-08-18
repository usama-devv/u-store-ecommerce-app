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
    this.showBorder = true,
    this.title = 'Acer',
    this.productCount = '256 Products',
    this.isNetworkImage = false,
    this.image = UImages.iconCloth,
    this.backgroundColor = Colors.transparent,
    this.padding = const EdgeInsets.all(USizes.sm),
  });
  final VoidCallback? onTap;
  final bool showBorder;
  final String title, productCount;
  final bool isNetworkImage;
  final String image;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: URoundedContainer(
        padding: padding,
        showBorder: showBorder,
        backgroundColor: backgroundColor,
        child: Row(
          children: [
            /// Icon
            Flexible(
              child: UCircularImage(
                isNetworkImage: isNetworkImage,
                image: image,
                backgroundColor: backgroundColor,
                overlayColor: UHelperFunctions.isDarkMode(context)
                    ? UColors.white
                    : UColors.black,
              ),
            ),
            const SizedBox(width: USizes.spaceBtwItems / 2),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UBrandTitleWithVerificationIcon(
                      title: title, brandTextSize: TextSizes.large),
                  Text(
                    productCount,
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
