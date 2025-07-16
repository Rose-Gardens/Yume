// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:conditional_parent_widget/conditional_parent_widget.dart';
import 'package:yume_kitai/utils/swipe_direction.dart';

import '../../../../domain/models/habit/habit/habit.dart';
import '../../../core/themes/theme_extension.dart';
import '../../../core/ui/blur_saturate_filter.dart';
import 'habits_card_content.dart';
import 'habits_card_style.dart';

class HabitsCard extends StatefulWidget {
  const HabitsCard({
    super.key,
    required this.habit,
    required this.width,
    required this.swipeDirection,
  });

  final Habit habit;
  final double? width;
  final SwipeDirection swipeDirection;
  final bool shouldBlurUI = false;

  @override
  State<HabitsCard> createState() => _HabitsCardState();
}

class _HabitsCardState extends State<HabitsCard> with TickerProviderStateMixin {
  late final AnimationController _shimmerController;
  late final AnimationController _containerController;
  late HabitsCardStyle _style;
  late AppThemeExtension _theme;
  bool isSwipeRight = false;

  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController(vsync: this);
    _containerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 150),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _recomputeWidget();
  }

  @override
  void didUpdateWidget(covariant HabitsCard old) {
    super.didUpdateWidget(old);
    if (old.habit != widget.habit ||
        old.swipeDirection != widget.swipeDirection ||
        old.shouldBlurUI != widget.shouldBlurUI) {
      _recomputeWidget();
    }
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    _containerController.dispose();
    super.dispose();
  }

  void _recomputeWidget() {
    _theme = Theme.of(context).extension<AppThemeExtension>()!;
    final textTheme = Theme.of(context).textTheme;
    _style = HabitsCardStyle.from(
      habit: widget.habit,
      swipeDirection: widget.swipeDirection,
      theme: _theme,
      textTheme: textTheme,
    );
    isSwipeRight = widget.swipeDirection == SwipeDirection.right;
  }

  @override
  Widget build(BuildContext context) {
    return ConditionalParentWidget(
      condition: widget.shouldBlurUI,
      parentBuilder: (Widget child) => ClipRRect(
        borderRadius: _style.borderRadius,
        child: BackdropFilter(
          filter: blurSaturateFilterPerformance,
          child: child,
        ),
      ),
      child: HabitsCardContent(
        style: _style,
        theme: _theme,
        width: widget.width,
        containerController: _containerController,
        shimmerController: _shimmerController,
        isSwipeRight: isSwipeRight,
      ),
    );
  }
}
