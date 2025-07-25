// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:conditional_parent_widget/conditional_parent_widget.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../themes/theme_extension.dart';

class SliverAppbarDelegate extends SliverPersistentHeaderDelegate {
  final double collapsedHeight = 0;
  final double expandedHeight = 220;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final baseTheme = Theme.of(context);
    final theme = baseTheme.extension<AppThemeExtension>()!;
    final textTheme = baseTheme.textTheme;

    final double progress = (shrinkOffset / (maxExtent - minExtent)).clamp(
      0.0,
      1.0,
    );
    return ConditionalParentWidget(
      // > With SafeArea, the sliver collapses to 0 before fading first on iOS.
      condition: Platform.isAndroid,
      parentBuilder: (child) {
        return SafeArea(child: child);
      },
      child:
          Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 12,
                children: [
                  // > Moves the text down, to account for no safe area padding
                  Platform.isIOS
                      ? const SizedBox(height: 40)
                      : const SizedBox.shrink(),
                  Text(
                    "Friday, December 13",
                    style: textTheme.titleLarge!.copyWith(
                      fontSize: 20,
                      color: theme.foregroundMedium,
                    ),
                  ),
                  Text(
                    "Today's Habits",
                    style: textTheme.titleLarge!.copyWith(
                      fontSize: 40,
                      color: theme.foregroundHigh,
                      fontVariations: [const FontVariation('wght', 700)],
                    ),
                  ),
                ],
              )
              // * (divided by (x > 1)) slows down how quickly the effects happen
              .animate(adapter: ValueAdapter(progress / 1.5))
              .scale(begin: const Offset(1, 1), end: const Offset(0, 0))
              .blur(
                begin: const Offset(0, 0),
                end: const Offset(8, 8),
                curve: Curves.easeOutQuint,
              )
              .fade(begin: 1.0, end: 0.0, curve: Curves.easeOutSine),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate.maxExtent != maxExtent ||
        oldDelegate.minExtent != minExtent;
  }
}
