import 'package:flutter/material.dart';
import 'theme_extension.dart';

class BaseThemeColors {
  static const AppThemeExtension baseColors = AppThemeExtension(
    surfaceBg: Colors.black,
    surfaceOverlay:
        Color.fromRGBO(32, 32, 32, 1), // ? For things like bottom sheets
    surfaceLow: Color.fromRGBO(255, 255, 255, 0.06),
    surfaceMedium: Color.fromRGBO(255, 255, 255, 0.11),
    surfaceHigh: Color.fromRGBO(255, 255, 255, 0.20),
    surfaceInverse: Color.fromRGBO(255, 255, 255, 0.80),
    overlayVeryLow: Color.fromRGBO(0, 0, 0, 0.03), // ? very high transparency scrim
    overlayLow: Color.fromRGBO(0, 0, 0, 0.25), // ? high transparency scrim
    overlayHigh: Color.fromRGBO(0, 0, 0, 0.75), // ? low transparency scrim
    borderLow: Color.fromRGBO(255, 255, 255, 0.20),
    borderMedium: Color.fromRGBO(255, 255, 255, 0.30),
    borderHigh: Color.fromRGBO(255, 255, 255, 0.40),
    foregroundDim: Color.fromRGBO(255, 255, 255, 0.15),
    foregroundVeryLow: Color.fromRGBO(255, 255, 255, 0.25),
    foregroundLow: Color.fromRGBO(255, 255, 255, 0.45),
    foregroundLowMed: Color.fromRGBO(255, 255, 255, 0.55),
    foregroundMedium: Color.fromRGBO(255, 255, 255, 0.65),
    foregroundMedHigh: Color.fromRGBO(255, 255, 255, 0.70),
    foregroundHigh: Color.fromRGBO(255, 255, 255, 0.85),
    foregroundBright: Color.fromRGBO(255, 255, 255, 0.90),
    foregroundMax: Color.fromRGBO(255, 255, 255, 1.00),
    foregroundInverseLow: Color.fromRGBO(43, 43, 43, 0.80),
    foregroundInverseHigh: Color.fromRGBO(43, 43, 43, 0.60),
    danger: Color.fromRGBO(226, 46, 91, 1),
  );
}
