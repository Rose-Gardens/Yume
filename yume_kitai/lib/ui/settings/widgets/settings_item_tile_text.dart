// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../../data/model/settings/settings_item.dart';
import '../../core/themes/theme_extension.dart';

class SettingsItemTileText extends StatelessWidget {
  const SettingsItemTileText({
    super.key,
    required this.isYume,
    required this.baseTheme,
    required this.roseGradient,
    required this.settingsItem,
    required this.theme,
  });

  final bool isYume;
  final ThemeData baseTheme;
  final List<Color> roseGradient;
  final SettingsItem settingsItem;
  final AppThemeExtension theme;

  @override
  Widget build(BuildContext context) {
    return isYume
        ? Text.rich(
            TextSpan(
              children: const [
                TextSpan(
                  text: 'Yume ',
                  style: TextStyle(
                    fontVariations: [FontVariation('wght', 700)],
                  ),
                ),
                TextSpan(
                  text: 'plus',
                  style: TextStyle(
                    fontVariations: [FontVariation('wght', 500)],
                  ),
                ),
              ],
              style: baseTheme.textTheme.titleLarge?.copyWith(
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(0, 20),
                    const Offset(150, 20),
                    roseGradient,
                  ),
              ),
            ),
            textAlign: TextAlign.center,
          )
        : Text(
            settingsItem.title,
            style: baseTheme.textTheme.titleLarge?.copyWith(
              color: theme.foregroundHigh,
              fontVariations: [const FontVariation('wght', 700)],
            ),
          );
  }
}
