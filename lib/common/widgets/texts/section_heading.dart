import 'package:flutter/material.dart';

class USectionHeading extends StatelessWidget {
  const USectionHeading({
    super.key,
    this.textColor,
    required this.title,
    this.buttonTitle = 'View all',
    this.showActionButton = true,
    this.onPressed,
  });
  final Color? textColor;
  final String title, buttonTitle;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}