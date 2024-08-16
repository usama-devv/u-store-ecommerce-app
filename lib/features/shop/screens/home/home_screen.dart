import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:u_store/common/widgets/images/u_rounded_image.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

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
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1,
                    ),
                    items: const [
                      URoundedImage(imageUrl: UImages.promoBanner1),
                      URoundedImage(imageUrl: UImages.promoBanner2),
                      URoundedImage(imageUrl: UImages.promoBanner3),
                      URoundedImage(imageUrl: UImages.promoBanner4),
                    ],
                  ),
                  const SizedBox(height: USizes.spaceBtwItems),
                  Row(
                    children: [
                      for(int i = 0; i < 4; i++)
                      const UCircularContainer(
                        height: 4,
                        width: 20,
                        margin: EdgeInsets.only(right: 10),
                        backgroundColor: UColors.primary,
                      ),
                    ],
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
