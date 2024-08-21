import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/device/device_utility.dart';

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
                  Expanded(flex: 3, child: Text('4.9', style: Theme.of(context).textTheme.displayLarge)),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('5', style: Theme.of(context).textTheme.bodyMedium),
                            Expanded(
                              child: SizedBox(
                                width: UDeviceUtils.getScreenWidth(context) * 0.8,
                                child: LinearProgressIndicator(
                                  value: 0.5,
                                  minHeight: 11,
                                  backgroundColor: UColors.grey,
                                  valueColor: const AlwaysStoppedAnimation(UColors.primary),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ),
                          ],
                        ),
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
