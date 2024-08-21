import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:u_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:u_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:u_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const UBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const UProductImageSlider(),

            /// Product Detail Page
            Padding(
              padding: const EdgeInsets.only(
                right: USizes.defaultSpace,
                left: USizes.defaultSpace,
                bottom: USizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// Rating & Share
                  const URatingAndShare(),

                  /// Price, Title, Stock, Brand
                  const UProductMetaData(),

                  /// Attributes
                  const UProductAttributes(),
                  const SizedBox(height: USizes.spaceBtwSections),

                  /// Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: USizes.spaceBtwSections),

                  /// Description
                  const USectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: USizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is the product description for acer laptop. it is a 11 generation laptop. with extensive features. 16 gb of ram , 1tb of storage with 10gb graphics.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'See More',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  const Divider(),
                  const SizedBox(height: USizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const USectionHeading(title: 'Reviews(199)', showActionButton: false),
                      IconButton(onPressed: () => Get.to(() => const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3)),
                    ],
                  ),
                  const SizedBox(height: USizes.spaceBtwSections),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
