// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:smooth_corner/smooth_corner.dart';

import '../../core/themes/theme_extension.dart';

class HabitsCard extends StatefulWidget {
  const HabitsCard(
      {super.key,
      required this.id,
      required this.title,
      required this.habitIconCodePoint,
      required this.color,
      required this.isNegative});

  final int id;
  final String title;
  final int? habitIconCodePoint; // TODO: handle the null
  final int color;
  final bool isNegative;

  @override
  State<HabitsCard> createState() => _HabitsCardState();
}

class _HabitsCardState extends State<HabitsCard> {
  bool isChecked = false;

  double getCardBorderRadius() {
    // If the card is two (>25ch) lines high, increase the border radius
    return (widget.title.length > 25) ? 26 : 22;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    final cardBorderRadius = getCardBorderRadius();
    return Builder(
      builder: (context) {
        return Card(
          key: ValueKey(widget.id),
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: SmoothRectangleBorder(
            borderRadius: BorderRadius.circular(cardBorderRadius),
            smoothness: 0.6,
            side: BorderSide(
              color: theme.borderLow,
              width: 0.5,
            ),
          ),
          color: Color(widget.color).withValues(alpha: 0.4),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 8, 4),
            child: Row(
              children: [
                Icon(
                    IconData(widget.habitIconCodePoint!,
                        fontFamily: 'MaterialIcons'),
                    size: 40,
                    color: Color(widget.color).withValues(alpha: 0.85)),
                const SizedBox(width: 8),
                Expanded(
                  child: Padding(
                    // Text has separate padding from card to even unevenness from icon padding
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: theme.foregroundHigh),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  color: theme.foregroundMedium,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
