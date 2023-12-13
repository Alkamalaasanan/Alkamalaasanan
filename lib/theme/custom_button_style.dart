import 'dart:ui';
import 'package:harsh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineBlackF => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.h),
        ),
        shadowColor: appTheme.black9003f,
        elevation: 0,
      );
  static ButtonStyle get outlineBlackFTL23 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23.h),
        ),
        shadowColor: appTheme.black9003f,
        elevation: 2,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
