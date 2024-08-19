import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:u_store/common/widgets/layout/grid_layout.dart';
import 'package:u_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const UPrimaryHeaderContainer(
            child: Column(
              children: [
                /// AppBar
                UHomeAppBar(),
                SizedBox(height: USizes.spaceBtwSections),

                /// Search Bar
                USearchContainer(text: 'Search in Store'),
                SizedBox(height: USizes.spaceBtwSections),

                /// Categories
                Padding(
                  padding: EdgeInsets.only(left: USizes.defaultSpace),
                  child: Column(
                    children: [
                      /// Headings
                      USectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: UColors.white),
                      SizedBox(height: USizes.spaceBtwItems),

                      /// Categories
                      UHomeCategories(),
                    ],
                  ),
                ),
                SizedBox(height: USizes.spaceBtwSections),
              ],
            ),
          ),

          /// Body
          Padding(
            padding: const EdgeInsets.all(USizes.defaultSpace),
            child: Column(
              children: [
                const UPromoSlider(banner: [
                  UImages.promoBanner1,
                  UImages.promoBanner2,
                  UImages.promoBanner3,
                  UImages.promoBanner4,
                  UImages.promoBanner5,
                ]),
                const SizedBox(height: USizes.spaceBtwSections),

                /// Heading
                USectionHeading(title: 'Popular Products', onPressed: (){},),
                const SizedBox(height: USizes.spaceBtwItems),

                /// Popular Products
                UGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const UProductCardVertical()),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
