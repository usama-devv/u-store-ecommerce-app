import 'package:flutter/material.dart';

class UOutlinedButtonTheme{
  UOutlinedButtonTheme._();

  /// Light Outlined Button Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      textStyle: const TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(14)),

    )
  );

  /// Dark Outlined Button Theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.blue),
        textStyle: const TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(14)),

      )
  );
}