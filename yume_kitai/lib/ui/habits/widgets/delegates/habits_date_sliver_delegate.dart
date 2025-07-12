// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HabitsDateSliverDelegate extends SliverPersistentHeaderDelegate {
  final double collapsedHeight = 0;
  final double expandedHeight = 150;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final double progress = (shrinkOffset / (maxExtent - minExtent)).clamp(
      0.0,
      1.0,
    );
    return Align(
      child:
          Text(
                "Today's Habits",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(fontSize: 32),
              )
              // * (divided by 2) slows down how quickly the effects happen
              .animate(adapter: ValueAdapter(progress / 2))
              .scale(
                begin: const Offset(1, 1),
                end: const Offset(0, 0),
                curve: Curves.easeOut,
              )
              .blur(
                begin: const Offset(0, 0),
                end: const Offset(15, 15),
                curve: Curves.easeOut,
              )
              .fadeOut(begin: 1.0, curve: Curves.easeOut),
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
