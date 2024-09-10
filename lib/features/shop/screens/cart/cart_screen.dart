import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:u_store/features/shop/screens/checkout/checkout_screen.dart';
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
      body: const Padding(
        padding: EdgeInsets.all(USizes.defaultSpace),
        child: UCartItems(),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text('Checkout \$175')),
      ),
    );
  }
}
