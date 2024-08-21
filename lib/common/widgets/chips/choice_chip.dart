import 'package:flutter/material.dart';
import 'package:u_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UChoiceChip extends StatelessWidget {
  const UChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = UHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor
            ? const SizedBox()
            : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? UColors.white : null),
        avatar: isColor
            ? UCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: UHelperFunctions.getColor(text)!)
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor ? UHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
