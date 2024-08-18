import 'package:flutter/material.dart';

class UProductTitleText extends StatelessWidget {
  const UProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.mazLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int mazLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: mazLines,
      textAlign: textAlign,
    );
  }
}