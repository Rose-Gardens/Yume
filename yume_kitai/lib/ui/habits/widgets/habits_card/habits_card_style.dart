// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../../domain/models/habit/habit/habit.dart';
import '../../../../utils/converters.dart';
import '../../../../utils/swipe_direction.dart';
import '../../../core/themes/theme_extension.dart';

class HabitsCardStyle {
  const HabitsCardStyle({
    required this.cardColor,
    required this.iconColor,
    required this.habitText,
    required this.iconWidget,
    required this.textStyle,
    required this.borderRadius,
  });

  final Color cardColor;
  final Color iconColor;
  final String habitText;
  final Widget iconWidget;
  final TextStyle textStyle;
  final BorderRadius borderRadius;

  factory HabitsCardStyle.from({
    required Habit habit,
    required SwipeDirection swipeDirection,
    required AppThemeExtension theme,
    required TextTheme textTheme,
  }) {

    // * Base Colors [1]

    final baseCardColor = habit.color.isEmpty
        ? theme.surfaceMedium
        : Color(hexInt(habit.color)).withValues(alpha: 0.4);

    final baseIconColor = habit.color.isEmpty
        ? theme.foregroundMedium
        : Color(hexInt(habit.color)).withValues(alpha: 0.85);

    // * Icon Widget [2]

    final iconW = habit.icon.isEmpty
        ? _buildFallbackIcon(baseCardColor, baseIconColor)
        : Icon(
            IconData(hexInt(habit.icon), fontFamily: 'MaterialIcons'),
            size: 28,
            color: baseIconColor,
          );

    // * Swiping Right [3]

    final isSwipeRight = swipeDirection == SwipeDirection.right;
    return HabitsCardStyle(
      cardColor: isSwipeRight ? theme.surfaceVeryHigh : baseCardColor,
      iconColor: baseIconColor,
      habitText: isSwipeRight ? 'slide to complete' : habit.title,
      iconWidget: iconW,
      textStyle: (textTheme.titleLarge!).copyWith(
        color: isSwipeRight ? Colors.black : theme.foregroundHigh,
      ),
      borderRadius: BorderRadius.circular(isSwipeRight ? 50 : 22),
    );
  }

  static Widget _buildFallbackIcon(Color bg, Color fg) => Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: fg,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    ],
  );
}
