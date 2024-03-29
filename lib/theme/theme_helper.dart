import 'package:flutter/material.dart';

import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.red400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.h),
          ),
          shadowColor: colorScheme.primary,
          elevation: 4,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.onError,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 2,
        space: 2,
        color: colorScheme.primary.withOpacity(1),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 17.fSize,
          fontFamily: 'Formula1',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 53.fSize,
          fontFamily: 'Formula1',
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 48.fSize,
          fontFamily: 'Formula1',
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 36.fSize,
          fontFamily: 'Formula1',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 32.fSize,
          fontFamily: 'Formula1',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 27.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Formula1',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Formula1',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 18.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0X3F000000),
    primaryContainer: Color(0XFF1C1B1F),
    secondary: Color(0XFF1C1B1F),
    secondaryContainer: Color(0XFFEB4335),
    tertiary: Color(0XFF1C1B1F),
    tertiaryContainer: Color(0XFFEB4335),

    // Background colors
    background: Color(0XFF1C1B1F),

    // Surface colors
    surface: Color(0XFF1C1B1F),
    surfaceTint: Color(0XFF212121),
    surfaceVariant: Color(0XFFEB4335),

    // Error colors
    error: Color(0XFF212121),
    errorContainer: Color(0X2D7D7D7D),
    onError: Color(0XFFD0D5DD),
    onErrorContainer: Color(0X14121212),

    // On colors(text colors)
    onBackground: Color(0XFFA8A8A8),
    onInverseSurface: Color(0XFFD0D5DD),
    onPrimary: Color(0XFF212121),
    onPrimaryContainer: Color(0XFFA8A8A8),
    onSecondary: Color(0XFFA8A8A8),
    onSecondaryContainer: Color(0XFF0D0D0D),
    onTertiary: Color(0XFFA8A8A8),
    onTertiaryContainer: Color(0XFF0D0D0D),

    // Other colors
    outline: Color(0XFF212121),
    outlineVariant: Color(0XFF1C1B1F),
    scrim: Color(0XFF1C1B1F),
    shadow: Color(0XFF212121),

    // Inverse colors
    inversePrimary: Color(0XFF1C1B1F),
    inverseSurface: Color(0XFF212121),

    // Pending colors
    onSurface: Color(0XFFA8A8A8),
    onSurfaceVariant: Color(0XFF0D0D0D),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray50 => Color(0XFFF1F1F1);

  // Cyan
  Color get cyan700 => Color(0XFF00A19C);

  // Gray
  Color get gray200 => Color(0XFFEAEAEA);
  Color get gray20001 => Color(0XFFF0F0F0);
  Color get gray300 => Color(0XFFDFDFDF);
  Color get gray800 => Color(0XFF49454F);
  Color get gray900 => Color(0XFF1E1E1E);
  Color get gray90001 => Color(0XFF0B162F);

  // Red
  Color get red400 => Color(0XFFF26457);

  // Teal
  Color get teal800 => Color(0XFF006560);

  // White
  Color get whiteA700 => Color(0XFFFFFBFE);
  Color get whiteA70001 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
