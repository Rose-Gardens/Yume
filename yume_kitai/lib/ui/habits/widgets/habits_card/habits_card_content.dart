// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:smooth_corner/smooth_corner.dart';
import 'package:yume_kitai/ui/habits/widgets/habits_card/components/habits_card_icon.dart';

import '../../../core/themes/theme_extension.dart';
import './habits_card_style.dart';

import 'components/habits_card_text.dart';

class HabitsCardContent extends StatelessWidget {
  const HabitsCardContent({
    super.key,
    required this.style,
    required this.isSwipeRight,
    required this.width,
    required this.shimmerController,
  });

  final HabitsCardStyle style;
  final bool isSwipeRight;
  final double? width;
  final AnimationController shimmerController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;
    return Container(
      width: width,
      constraints: BoxConstraints(
        minHeight: 32,
        maxHeight: 96,
        minWidth: 56,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      margin: EdgeInsets.zero,
      decoration: ShapeDecoration(
        color: style.cardColor,
        shape: SmoothRectangleBorder(
          borderRadius: style.borderRadius,
          smoothness: 0.6,
          side: BorderSide(color: theme.borderLow, width: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            HabitsCardIcon(style: style),
            const SizedBox(width: 8),
            Flexible(
              child: HabitsCardText(
                style: style,
                shimmerController: shimmerController,
                isSwipeRight: isSwipeRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
