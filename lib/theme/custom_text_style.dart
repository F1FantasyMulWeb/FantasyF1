import 'package:flutter/material.dart';

import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumFormula1 =>
      theme.textTheme.bodyMedium!.formula1.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumInter15 => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumInterOnErrorContainer =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.87),
      );
  static get bodyMediumInterRed400 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.red400,
        fontSize: 15.fSize,
      );
  static get bodyMediumInter_1 => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumJacquesFrancois =>
      theme.textTheme.bodyMedium!.jacquesFrancois.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.38),
      );
  // Display text style
  static get displayLarge64 => theme.textTheme.displayLarge!.copyWith(
        fontSize: 64.fSize,
      );
  static get displayMedium40 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 40.fSize,
      );
  static get displayMediumInter =>
      theme.textTheme.displayMedium!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get displayMediumInterRegular =>
      theme.textTheme.displayMedium!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get displayMediumOnPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 45.fSize,
      );
  static get displayGrupos => theme.textTheme.displayMedium!.copyWith(
    color: theme.colorScheme.onPrimary,
    fontSize: 20.fSize,
  );

  static get displayMediumOnUserName => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 30.fSize,
      );
  static get displayMediumRed400 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.red400,
      );
  static get displaySmall35 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get displaySmallInter => theme.textTheme.displaySmall!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get displaySmallMedium => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get displaySmallRoboto =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get displaySmallWhiteA70001 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get displaySmallWhiteA70001Medium =>
      theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w500,
      );
  // Headline text style
  static get headlineLargeOnSecondaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get headlineMedium26 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 26.fSize,
      );
  static get headlineMediumFormula1 =>
      theme.textTheme.headlineMedium!.formula1.copyWith(
        fontSize: 28.fSize,
      );
  static get headlineMediumFormula1Regular =>
      theme.textTheme.headlineMedium!.formula1.copyWith(
        fontSize: 28.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontSize: 25.fSize,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterSemiBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterWhiteA700 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeInterWhiteA70001 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInter_1 => theme.textTheme.titleLarge!.inter;
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
    fontSize: 30.fSize,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeWhiteA70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 16.fSize,
      );
  static get titleMediumWhiteA70001SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.87),
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins;
  static get titleSmallPoppinsOnErrorContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.87),
      );
  static get titleSmallRed400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red400,
      );
  static get titleSmallRed40015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red400,
        fontSize: 15.fSize,
      );
  static get titleSmallRobotoGray20001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray20001,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get jacquesFrancois {
    return copyWith(
      fontFamily: 'Jacques Francois',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get formula1 {
    return copyWith(
      fontFamily: 'Formula1',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
