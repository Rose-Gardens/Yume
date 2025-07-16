// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:smooth_corner/smooth_corner.dart';

import '../../../core/themes/theme_extension.dart';
import './components/habits_card_icon.dart';
import './habits_card_style.dart';

import 'components/habits_card_text.dart';

class HabitsCardContent extends StatelessWidget {
  HabitsCardContent({
    super.key,
    required this.style,
    required this.isSwipeRight,
    required this.width,
    required this.theme,
    required this.shimmerController,
    required this.containerController,
  }) : curvedAnim = CurvedAnimation(
         parent: containerController,
         curve: Curves.easeOutQuint,
       ),
       colorTween = containerController.drive(
         ColorTween(begin: style.cardColor, end: theme.surfaceVeryHigh),
       ),
       borderRadiusTween = containerController.drive(
         BorderRadiusTween(
           begin: style.borderRadius,
           end: BorderRadius.circular(endRadius),
         ),
       );

  static const endRadius = 28.0;
  final HabitsCardStyle style;
  final bool isSwipeRight;
  final double? width;
  final AppThemeExtension theme;
  final AnimationController shimmerController;
  final AnimationController containerController;
  final Animation<double> curvedAnim;
  final Animation<Color?> colorTween;
  final Animation<BorderRadius?> borderRadiusTween;

  @override
  Widget build(BuildContext context) {
    isSwipeRight
        ? containerController.forward()
        : containerController.reverse();

    return AnimatedBuilder(
      animation: containerController,
      builder: (BuildContext context, Widget? child) {
        return Container(
          width: width,
          constraints: BoxConstraints(
            minHeight: 56,
            maxHeight: 96,
            minWidth: 56,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          margin: EdgeInsets.zero,
          decoration: ShapeDecoration(
            color: colorTween.value,
            shape: SmoothRectangleBorder(
              borderRadius: borderRadiusTween.value ?? style.borderRadius,
              smoothness: 0.6,
              side: BorderSide(color: theme.borderLow, width: 0.5),
            ),
          ),
          child: child,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            HabitsCardIcon(style: style),
            const SizedBox(width: 8),
            Flexible(
              child: HabitsCardText(
                style: style,
                theme: theme,
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
