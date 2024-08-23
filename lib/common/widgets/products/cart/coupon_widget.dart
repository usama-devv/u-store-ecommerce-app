import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/sizes.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UCouponCode extends StatelessWidget {
  const UCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      backgroundColor: dark ? UColors.dark : UColors.white,
      padding: const EdgeInsets.only(
          top: USizes.sm,
          bottom: USizes.sm,
          right: USizes.sm,
          left: USizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter Here!',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? UColors.white.withOpacity(0.5)
                    : UColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side:
                BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}