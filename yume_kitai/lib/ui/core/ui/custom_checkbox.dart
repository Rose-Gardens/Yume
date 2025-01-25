// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import '../../core/themes/theme_extension.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox(
      {super.key, required this.value, required this.onChanged});

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    final IconData? icon = value ? Icons.check_rounded : null;
    final Color color = value ? theme.surfaceHigh : theme.surfaceLow;
    final double opacityLevel = value ? 1.0 : 0.0;

    return GestureDetector(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        width: 40,
        height: 40,
        decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          color: color,
        ),
        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: Duration(milliseconds: 100),
          child: Icon(
            icon,
            color: theme.foregroundHigh,
            size: 36,
          ),
        ),
      ),
      onTap: () {
        onChanged(!value);
      },
    );
  }
}
