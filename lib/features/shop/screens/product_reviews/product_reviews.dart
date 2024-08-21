import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:u_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:u_store/utils/constants/sizes.dart';

import 'widgets/rating_progress_indicator.dart';

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
              const UOverallProductRating(),
              const URatingBarIndicator(rating: 3.9),
              Text('10,365', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: USizes.spaceBtwSections),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


