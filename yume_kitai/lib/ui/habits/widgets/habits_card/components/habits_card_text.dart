// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/themes/theme_extension.dart';
import '../habits_card_style.dart';

class HabitsCardText extends StatelessWidget {
  const HabitsCardText({
    super.key,
    required this.style,
    required this.isSwipeRight,
    required this.shimmerController,
  });

  final HabitsCardStyle style;
  final bool isSwipeRight;
  final AnimationController shimmerController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;
    isSwipeRight ? shimmerController.repeat() : shimmerController.reset();
    return Text(
          style.habitText,
          style: style.textStyle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
        .animate(controller: shimmerController, autoPlay: false)
        .shimmer(delay: 300.ms, duration: 1750.ms, color: theme.foregroundMax);
  }
}
