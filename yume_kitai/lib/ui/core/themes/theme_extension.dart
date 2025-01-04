import 'package:flutter/material.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final Color surfaceBg;
  final Color surfaceOverlay;
  final Color surfaceLow;
  final Color surfaceMedium;
  final Color surfaceHigh;
  final Color surfaceInverse;

  final Color overlayLow;
  final Color overlayHigh;

  final Color borderLow;
  final Color borderMedium;
  final Color borderHigh;

  final Color foregroundDim;
  final Color foregroundVeryLow;
  final Color foregroundLow;
  final Color foregroundLowMed;
  final Color foregroundMedium;
  final Color foregroundMedHigh;
  final Color foregroundHigh;
  final Color foregroundBright;
  final Color foregroundMax;
  final Color foregroundInverseLow;
  final Color foregroundInverseHigh;

  const AppThemeExtension({
    required this.surfaceBg,
    required this.surfaceOverlay,
    required this.surfaceLow,
    required this.surfaceMedium,
    required this.surfaceHigh,
    required this.surfaceInverse,
    required this.overlayLow,
    required this.overlayHigh,
    required this.borderLow,
    required this.borderMedium,
    required this.borderHigh,
    required this.foregroundDim,
    required this.foregroundVeryLow,
    required this.foregroundLow,
    required this.foregroundLowMed,
    required this.foregroundMedium,
    required this.foregroundMedHigh,
    required this.foregroundHigh,
    required this.foregroundBright,
    required this.foregroundMax,
    required this.foregroundInverseLow,
    required this.foregroundInverseHigh,
  });

  @override
  AppThemeExtension copyWith({
    Color? surfaceBg,
    Color? surfaceOverlay,
    Color? surfaceLow,
    Color? surfaceMedium,
    Color? surfaceHigh,
    Color? surfaceInverse,
    Color? overlayLow,
    Color? overlayHigh,
    Color? borderLow,
    Color? borderMedium,
    Color? borderHigh,
    Color? foregroundDim,
    Color? foregroundVeryLow,
    Color? foregroundLow,
    Color? foregroundLowMed,
    Color? foregroundMedium,
    Color? foregroundMedHigh,
    Color? foregroundHigh,
    Color? foregroundBright,
    Color? foregroundMax,
    Color? foregroundInverseLow,
    Color? foregroundInverseHigh,
  }) {
    return AppThemeExtension(
        surfaceBg: surfaceBg ?? this.surfaceBg,
        surfaceOverlay: surfaceOverlay ?? this.surfaceOverlay,
        surfaceLow: surfaceLow ?? this.surfaceLow,
        surfaceMedium: surfaceMedium ?? this.surfaceMedium,
        surfaceHigh: surfaceHigh ?? this.surfaceHigh,
        surfaceInverse: surfaceInverse ?? this.surfaceInverse,
        overlayLow: overlayLow ?? this.overlayLow,
        overlayHigh: overlayHigh ?? this.overlayHigh,
        borderLow: borderLow ?? this.borderLow,
        borderMedium: borderMedium ?? this.borderMedium,
        borderHigh: borderHigh ?? this.borderHigh,
        foregroundDim: foregroundDim ?? this.foregroundDim,
        foregroundVeryLow: foregroundVeryLow ?? this.foregroundVeryLow,
        foregroundLow: foregroundLow ?? this.foregroundLow,
        foregroundLowMed: foregroundLowMed ?? this.foregroundLowMed,
        foregroundMedium: foregroundMedium ?? this.foregroundMedium,
        foregroundMedHigh: foregroundMedHigh ?? this.foregroundMedHigh,
        foregroundHigh: foregroundHigh ?? this.foregroundHigh,
        foregroundBright: foregroundBright ?? this.foregroundBright,
        foregroundMax: foregroundMax ?? this.foregroundMax,
        foregroundInverseLow: foregroundInverseLow ?? this.foregroundInverseLow,
        foregroundInverseHigh:
            foregroundInverseHigh ?? this.foregroundInverseHigh);
  }

  @override
  ThemeExtension<AppThemeExtension> lerp(
      covariant ThemeExtension<AppThemeExtension>? other, double t) {
    if (other is! AppThemeExtension) return this;

    return AppThemeExtension(
      surfaceBg: Color.lerp(surfaceBg, other.surfaceBg, t)!,
      surfaceOverlay: Color.lerp(surfaceOverlay, other.surfaceOverlay, t)!,
      surfaceLow: Color.lerp(surfaceLow, other.surfaceLow, t)!,
      surfaceMedium: Color.lerp(surfaceMedium, other.surfaceMedium, t)!,
      surfaceHigh: Color.lerp(surfaceHigh, other.surfaceHigh, t)!,
      surfaceInverse: Color.lerp(surfaceInverse, other.surfaceInverse, t)!,
      overlayLow: Color.lerp(overlayLow, other.overlayLow, t)!,
      overlayHigh: Color.lerp(overlayHigh, other.overlayHigh, t)!,
      borderLow: Color.lerp(borderLow, other.borderLow, t)!,
      borderMedium: Color.lerp(borderMedium, other.borderMedium, t)!,
      borderHigh: Color.lerp(borderHigh, other.borderHigh, t)!,
      foregroundDim: Color.lerp(foregroundDim, other.foregroundDim, t)!,
      foregroundVeryLow:
          Color.lerp(foregroundVeryLow, other.foregroundVeryLow, t)!,
      foregroundLow: Color.lerp(foregroundLow, other.foregroundLow, t)!,
      foregroundLowMed:
          Color.lerp(foregroundLowMed, other.foregroundLowMed, t)!,
      foregroundMedium:
          Color.lerp(foregroundMedium, other.foregroundMedium, t)!,
      foregroundMedHigh:
          Color.lerp(foregroundMedHigh, other.foregroundMedHigh, t)!,
      foregroundHigh: Color.lerp(foregroundHigh, other.foregroundHigh, t)!,
      foregroundBright:
          Color.lerp(foregroundBright, other.foregroundBright, t)!,
      foregroundMax:
          Color.lerp(foregroundMax, other.foregroundMax, t)!,
      foregroundInverseLow:
          Color.lerp(foregroundInverseLow, other.foregroundInverseLow, t)!,
      foregroundInverseHigh:
          Color.lerp(foregroundInverseHigh, other.foregroundInverseHigh, t)!,
    );
  }
}
