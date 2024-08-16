import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/constants/text_strings.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UFormDivider extends StatelessWidget {
  const UFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? UColors.grey : UColors.darkGrey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? UColors.grey : UColors.darkGrey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}