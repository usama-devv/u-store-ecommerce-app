import 'package:flutter/material.dart';
import 'package:u_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:u_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UHelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            UProductImageSlider(),

            /// Product Detail Page
            Padding(
              padding: EdgeInsets.only(
                right: USizes.defaultSpace,
                left: USizes.defaultSpace,
                bottom: USizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// Rating & Share
                  URatingAndShare(),

                  /// Price, Title, Stock, Brand
                  UProductMetaData(),
                  /// Attributes
                  UProductAttributes(),
                  /// Checkout Button
                  /// Description
                  /// Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


