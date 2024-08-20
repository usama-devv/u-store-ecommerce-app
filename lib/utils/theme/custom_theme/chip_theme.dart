import 'package:flutter/material.dart';
import 'package:u_store/utils/constants/colors.dart';

class UChipTheme{
  UChipTheme._();

  /// Chip Light Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: UColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: UColors.black),
    selectedColor: UColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: UColors.white,
  );

  /// Chip Dark Theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: UColors.darkerGrey,
    labelStyle: TextStyle(color: UColors.white),
    selectedColor: UColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: UColors.white,
  );
}