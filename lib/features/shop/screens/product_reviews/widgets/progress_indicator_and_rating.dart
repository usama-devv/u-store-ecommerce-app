import 'package:flutter/material.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/device/device_utility.dart';

class URatingProgressIndicator extends StatelessWidget {
  const URatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: UDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: UColors.grey,
              valueColor: const AlwaysStoppedAnimation(UColors.primary),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
      ],
    );
  }
}