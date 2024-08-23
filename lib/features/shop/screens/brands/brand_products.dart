import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/common/widgets/brands/u_brand_card.dart';
import 'package:u_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:u_store/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(title: Text('Acer'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Details
              UBrandCard(showBorder: true),
              SizedBox(height: USizes.spaceBtwSections),

              USortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
