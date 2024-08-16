import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/appbar/appbar.dart';
import 'package:u_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/text_strings.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(UTextStrings.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: UColors.grey)),
          Text(UTextStrings.homeAppBarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: UColors.white)),
        ],
      ),
      actions: [
        UCartCounterIcon(onPressed: () {}, iconColor: UColors.white,)
      ],
    );
  }
}