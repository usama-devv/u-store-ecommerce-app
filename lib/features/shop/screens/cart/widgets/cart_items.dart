import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:u_store/common/widgets/products/cart/cart_item.dart';
import 'package:u_store/common/widgets/texts/product_price_text.dart';
import 'package:u_store/utils/constants/sizes.dart';

class UCartItems extends StatelessWidget {
  const UCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) =>
          const SizedBox(height: USizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          /// Image
          const UCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: USizes.spaceBtwItems),

          /// Add, Remove Button With Total Price
          if (showAddRemoveButtons)
            const Row(
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
    );
  }
}
