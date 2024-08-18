import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/common/widgets/texts/u_brand_title_text.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/enums.dart';
import 'package:u_store/utils/constants/sizes.dart';

class UBrandTitleWithVerificationIcon extends StatelessWidget {
  const UBrandTitleWithVerificationIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = UColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: UBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: USizes.xs,),
        Icon(Iconsax.verify5, color: iconColor, size: USizes.iconXs),
      ],
    );
  }
}
