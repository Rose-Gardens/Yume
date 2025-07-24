// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:yume_kitai/data/model/settings/settings_item.dart';
import 'package:yume_kitai/ui/core/themes/theme_extension.dart';

import 'settings_item_tile_text.dart';

class SettingsItemTile extends StatelessWidget {
  const SettingsItemTile({
    super.key,
    required this.roseGradient,
    required this.settingsItem,
    required this.baseTheme,
    required this.isYume,
  });

  final List<Color> roseGradient;
  final SettingsItem settingsItem;
  final ThemeData baseTheme;
  final bool isYume;

  @override
  Widget build(BuildContext context) {
    final theme = baseTheme.extension<AppThemeExtension>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        children: [
          // ? centers the icons across all rows
          Container(
            margin: EdgeInsets.zero,
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: settingsItem.color,
              borderRadius: BorderRadius.circular(30),
            ),
            child: settingsItem.icon != null
                ? SFIcon(
                    settingsItem.icon!,
                    fontSize: 20,
                    color: theme.foregroundMedHigh,
                  )
                : const SizedBox(),
          ),
          const SizedBox(width: 16),
          Flexible(
            child: SettingsItemTileText(
              isYume: isYume,
              baseTheme: baseTheme,
              roseGradient: roseGradient,
              settingsItem: settingsItem,
              theme: theme,
            ),
          ),
        ],
      ),
    );
  }
}