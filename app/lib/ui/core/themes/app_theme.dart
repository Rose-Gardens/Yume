import 'package:flutter/material.dart';
import 'app_theme_colors.dart';

class AppTheme {
  static ThemeData getDefaultTheme() {
    final defColors = AppThemeColors.defaultColors;

    return ThemeData(
      extensions: [defColors],
      fontFamily: 'NunitoSans',
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontVariations: [FontVariation('wght', 600.0)],
        ),
        bodyMedium: TextStyle(
          fontVariations: [FontVariation('wght', 400.0)],
        ),
      ),
      scaffoldBackgroundColor: defColors.surfaceBg,
      appBarTheme: AppBarTheme(backgroundColor: defColors.surfaceBg),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: defColors.surfaceBg,
        indicatorColor: defColors.surfaceHigh,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            color: defColors.borderHigh,
            width: 0.5,
          ),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (Set<WidgetState> states) {
          final baseStyle = TextStyle(
              fontVariations: [FontVariation('wght', 600.0)]);
          return states.contains(WidgetState.selected)
              ? baseStyle.copyWith(color: defColors.foregroundMax) // Selected
              : baseStyle.copyWith(
                  color: defColors.foregroundMedium); // Unselected
        }),
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
          (Set<WidgetState> states) => states.contains(WidgetState.selected)
              ? IconThemeData(color: defColors.foregroundMax) // selected
              : IconThemeData(color: defColors.foregroundMedium), //unselected
        ),
      ),
      colorScheme: const ColorScheme.dark(),
    );
  }

  // static ThemeData getLightTheme() {
  //   return ThemeData(); }

  static ThemeData getTheme(String themeName) {
    switch (themeName) {
      case 'default':
        return getDefaultTheme();
      case 'light':
        return getDefaultTheme();
      default:
        return getDefaultTheme();
    }
  }
}
