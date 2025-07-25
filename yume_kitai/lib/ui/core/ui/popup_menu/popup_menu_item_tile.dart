// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:yume_kitai/ui/core/themes/theme_extension.dart';

class PopupMenuItemTile extends StatelessWidget {
  const PopupMenuItemTile({
    super.key,
    required this.theme,
    required this.menuItem,
    required this.isDanger,
    required this.currentIndex,
    required this.selectedIndex,
  });

  final bool isDanger;
  final int currentIndex;
  final int? selectedIndex;
  final AppThemeExtension theme;
  final ({String title, IconData icon, bool isDanger}) menuItem;

  @override
  Widget build(BuildContext context) {
    final baseTheme = Theme.of(context);
    final textColor = isDanger ? theme.danger : theme.foregroundBright;

    return ColoredBox(
      color: currentIndex == selectedIndex
          ? theme.foregroundDim
          : Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Text(
              menuItem.title,
              style: baseTheme.textTheme.bodyMedium?.copyWith(
                color: textColor,
                fontVariations: [const FontVariation('wght', 550)],
              ),
            ),
            const Spacer(),
            // ? centers the icons across all rows
            SizedBox(
              width: 24,
              height: 24,
              child: Center(
                child: SFIcon(menuItem.icon, fontSize: 16, color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
