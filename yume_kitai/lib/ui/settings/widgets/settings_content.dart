// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class SettingsContent extends StatelessWidget {
  const SettingsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.surfaceOverlay.withValues(alpha: 0.6),
        borderRadius: menuBorderRadius,
        border: Border.all(color: theme.borderMedium),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int index = 0; index < widget.menuData.length; index++) ...[
            PopupMenuItemTile(
              menuItem: widget.menuData[index],
              textColor: widget.menuData[index].isDanger
                  ? theme.danger
                  : theme.foregroundBright,
              currentIndex: index,
              selectedIndex: selectedIndex,
            ),
            if (index != widget.menuData.length - 1)
              Divider(
                indent: 12,
                endIndent: 12,
                height: 0,
                thickness: 0,
                color: theme.foregroundVeryLow,
              ),
          ],
        ],
      ),
    );
  }
}
