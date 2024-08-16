import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/utils/constants/colors.dart';

class UCartCounterIcon extends StatelessWidget {
  const UCartCounterIcon({
    super.key, required this.onPressed, required this.iconColor,
  });
  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.shopping_bag),
          color: iconColor,
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: UColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(
                    color: UColors.white,
                    fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}