import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/sizes.dart';

import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UPrimaryHeaderContainer(
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
          ],
        ),
      ),
    );
  }
}




