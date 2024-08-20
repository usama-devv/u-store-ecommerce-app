import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:u_store/common/widgets/icons/u_circular_icon.dart';
import 'package:u_store/common/widgets/images/u_rounded_image.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UProductImageSlider extends StatelessWidget {
  const UProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return UCurvedEdgesWidget(
      child: Container(
        color: dark ? UColors.darkerGrey : UColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(USizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(UImages.productImage1),
                  ),
                ),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: USizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) =>
                  const SizedBox(width: USizes.spaceBtwItems),
                  itemCount: 8,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => URoundedImage(
                    width: 80,
                    backgroundColor: dark ? UColors.dark : UColors.white,
                    border: Border.all(color: UColors.primary),
                    padding: const EdgeInsets.all(USizes.sm),
                    imageUrl: UImages.productImage2,
                  ),
                ),
              ),
            ),

            /// App Bar Icon
            const UAppBar(
              showBackArrow: true,
              actions: [
                UCircularIcon(icon: Iconsax.heart5, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}