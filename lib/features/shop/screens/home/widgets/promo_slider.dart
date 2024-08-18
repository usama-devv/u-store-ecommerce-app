import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:u_store/common/widgets/images/u_rounded_image.dart';
import 'package:u_store/features/shop/controllers/home_controller.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({
    super.key, required this.banner,
  });
  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndication(index),
          ),
          items: banner.map((url) => URoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        Center(
          child: Obx(
              ()=> Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i < banner.length; i++)
                  UCircularContainer(
                    height: 4,
                    width: 20,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i ? UColors.primary : UColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}