import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/common/widgets/layout/grid_layout.dart';
import 'package:u_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:u_store/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const UAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            children: [
              /// DropDown
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.sort),
                ),
                onChanged: (value) {},
                items: [
                  'Name',
                  'Higher Price',
                  'Lower Price',
                  'Sale',
                  'Newest',
                  'Popularity'
                ]
                    .map((option) =>
                        DropdownMenuItem(value: option, child: Text(option)))
                    .toList(),
              ),
              const SizedBox(height: USizes.spaceBtwSections),

              /// Products
              UGridLayout(itemCount: 10, itemBuilder: (_, index) => const UProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
