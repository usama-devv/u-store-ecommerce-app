import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/common/widgets/images/u_rounded_image.dart';
import 'package:u_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const URoundedImage(
                  width: double.infinity,
                  imageUrl: UImages.promoBanner5,
                  applyImageRadius: true),
              const SizedBox(height: USizes.spaceBtwSections),

              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  USectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  const SizedBox(height: USizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(width: USizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const UProductCardHorizontal()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
