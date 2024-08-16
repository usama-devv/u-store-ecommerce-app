import 'package:flutter/material.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/image_strings.dart';
import 'package:u_store/utils/constants/sizes.dart';

class USocialButtons extends StatelessWidget {
  const USocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: UColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: USizes.iconMd,
              height: USizes.iconMd,
              image: AssetImage(UImages.google),
            ),
          ),
        ),
        const SizedBox(width: USizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: UColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: USizes.iconMd,
              height: USizes.iconMd,
              image: AssetImage(UImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}