import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:u_store/common/widgets/products/cart/cart_item.dart';
import 'package:u_store/common/widgets/texts/product_price_text.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: UAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 4,
          separatorBuilder: (_, __) =>
              const SizedBox(height: USizes.spaceBtwSections),
          itemBuilder: (_, index) => const Column(
            children: [
              /// Image
              UCartItem(),
              SizedBox(height: USizes.spaceBtwItems),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      /// Extra Space
                      SizedBox(width: 70),

                      /// Add, Remove Button
                      UProductQuantityWithAddAndRemove(),
                    ],
                  ),

                  /// Product Price
                  UProductPriceText(price: '175'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Checkout \$175')),
      ),
    );
  }
}
