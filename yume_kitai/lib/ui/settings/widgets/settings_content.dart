// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:conditional_parent_widget/conditional_parent_widget.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';
import 'package:yume_kitai/ui/core/themes/theme_extension.dart';
import 'package:yume_kitai/ui/settings/widgets/settings_item_tile.dart';

import '../../../data/model/settings/settings_item.dart';
import '../../core/ui/blur_saturate_filter.dart';

class SettingsContent extends StatelessWidget {
  const SettingsContent({
    super.key,
    required this.settingsGroup,
    required this.baseTheme,
    required this.isYume,
  });

  static const BorderRadius borderRadius = BorderRadius.all(
    Radius.circular(32.0),
  );
  final SettingsGroup settingsGroup;
  final ThemeData baseTheme;
  final bool isYume;
  final List<Color> roseGradient = const [Color(0xFFFF88D1), Color(0xFFFFBEFD)];
  final List<Color> roseGradientBg = const [
    Color(0x1CFFBEFD),
    Color(0x1CFF88D1),
  ];
  final bool shouldBlurUI = true;

  @override
  Widget build(BuildContext context) {
    final settingsItems = settingsGroup.items;
    final theme = baseTheme.extension<AppThemeExtension>()!;

    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            settingsGroup.title,
            style: baseTheme.textTheme.labelSmall?.copyWith(
              foreground: isYume
                  ? (Paint()
                      ..shader = ui.Gradient.linear(
                        const Offset(0, 20),
                        const Offset(50, 20),
                        roseGradient,
                      ))
                  : (Paint()..color = theme.foregroundLow),
              fontVariations: [const FontVariation('wght', 700)],
            ),
          ),
        ),
        ConditionalParentWidget(
          condition: shouldBlurUI,
          parentBuilder: (Widget child) => ClipRRect(
            borderRadius: borderRadius,
            child: BackdropFilter.grouped(
              filter: blurSaturateFilterPerformance,
              child: child,
            ),
          ),
          child: Container(
            decoration: ShapeDecoration(
              color: isYume ? null : theme.surfaceMedium,
              gradient: isYume ? LinearGradient(colors: roseGradientBg) : null,
              shape: SmoothGradientRectangleBorder(
                gradient: LinearGradient(
                  colors: isYume
                      ? roseGradient
                      : [theme.borderMedium, theme.borderMedium],
                ),
                borderRadius: borderRadius,
                smoothness: 0.6,
                side: BorderSide(width: isYume ? 1 : 0.5),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int index = 0; index < settingsItems.length; index++) ...[
                  SettingsItemTile(
                    isYume: isYume,
                    roseGradient: roseGradient,
                    settingsItem: settingsItems[index],
                    baseTheme: baseTheme,
                  ),
                  if (index != settingsItems.length - 1)
                    Divider(
                      indent: 72,
                      endIndent: 24,
                      height: 0,
                      thickness: 0,
                      color: theme.foregroundVeryLow,
                    ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
