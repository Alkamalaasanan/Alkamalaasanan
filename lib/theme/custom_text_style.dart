import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeBlue900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blue900,
        fontSize: 12.fSize,
      );
  static get labelLargeGray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get labelLargeGray800SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray800SemiBold12 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray800SemiBold12_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray800SemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratOnError =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w800,
      );
  // Title text style
  static get titleLargeBlue500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue500,
        fontSize: 20.fSize,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
      );
  static get titleSmallGray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray800SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallIndigoA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA700,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMontserratPrimaryContainer =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallYellow900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow900,
      );
}

extension on TextStyle {
  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
