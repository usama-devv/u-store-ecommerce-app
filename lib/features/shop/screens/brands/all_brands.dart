import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/common/widgets/brands/u_brand_card.dart';
import 'package:u_store/common/widgets/layout/grid_layout.dart';
import 'package:u_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:u_store/common/widgets/texts/section_heading.dart';
import 'package:u_store/features/shop/screens/brands/brand_products.dart';
import 'package:u_store/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const USectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: USizes.spaceBtwItems),

              /// Brands
              UGridLayout(
                itemCount: 6,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => UBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
