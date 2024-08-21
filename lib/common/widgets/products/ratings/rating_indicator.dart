import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/utils/constants/colors.dart';

class URatingBarIndicator extends StatelessWidget {
  const URatingBarIndicator({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: UColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: UColors.primary),
    );
  }
}
