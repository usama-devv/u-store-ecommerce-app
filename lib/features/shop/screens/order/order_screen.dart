import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/features/shop/screens/order/widgets/orders_list.dart';
import 'package:u_store/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Bar
      appBar: UAppBar(
          title: Text('My Orders',
              style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(USizes.defaultSpace),

        /// Orders
        child: UOrderListItems(),
      ),
    );
  }
}
