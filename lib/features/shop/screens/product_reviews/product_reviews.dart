import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/utils/constants/sizes.dart';

import 'widgets/progress_indicator_and_rating.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Bar
      appBar: const UAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Rating & Reviews are verified and are from people who use the type of device you use."),
              const SizedBox(height: USizes.spaceBtwItems),

              /// Overall Product Ratings
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Text('4.9',
                          style: Theme.of(context).textTheme.displayLarge)),
                  const Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        URatingProgressIndicator(text: '5', value: 1.0),
                        URatingProgressIndicator(text: '4', value: 0.8),
                        URatingProgressIndicator(text: '3', value: 0.6),
                        URatingProgressIndicator(text: '2', value: 0.4),
                        URatingProgressIndicator(text: '1', value: 0.2),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
