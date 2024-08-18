import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/common/widgets/appbar/tabbar.dart';
import 'package:u_store/common/widgets/brands/u_brand_card.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:u_store/common/widgets/layout/grid_layout.dart';
import 'package:u_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: UAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            UCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  backgroundColor: UHelperFunctions.isDarkMode(context)
                      ? UColors.black
                      : UColors.white,
                  expandedHeight: 440,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(USizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// Search Bar
                        const SizedBox(height: USizes.spaceBtwItems),
                        const USearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: USizes.spaceBtwSections),

                        /// Featured Brands
                        USectionHeading(
                            title: 'Featured Brand', onPressed: () {}),
                        const SizedBox(height: USizes.spaceBtwItems / 1.5),

                        /// Brand Card
                        UGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const UBrandCard();
                          },
                        ),
                      ],
                    ),
                  ),

                  /// Tab Bar
                  bottom: const UTabBar(
                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),
                    ],
                  ),
                ),
              ];
            },
            body: Container()),
      ),
    );
  }
}


