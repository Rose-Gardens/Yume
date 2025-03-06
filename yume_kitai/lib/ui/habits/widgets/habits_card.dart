// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:smooth_corner/smooth_corner.dart';
import 'package:yume_kitai/ui/core/ui/custom_checkbox.dart';

import '../../core/themes/theme_extension.dart';

class HabitsCard extends StatefulWidget {
  const HabitsCard(
      {super.key,
      required this.title,
      required this.freq,
      required this.habitIconCodePoint,
      required this.color,
      required this.isNegative});

  final String? title;
  final String? freq;
  final int? habitIconCodePoint;
  final int? color;
  final bool isNegative;

  @override
  State<HabitsCard> createState() => _HabitsCardState();
}

class _HabitsCardState extends State<HabitsCard> {
  bool isChecked = false;

  double getCardBorderRadius() {
    // If the card is two or three lines high, increase the border radius
    return widget.isNegative || ((widget.title?.length ?? 0) > 25) ? 36 : 28;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    final cardBorderRadius = getCardBorderRadius();

    return Builder(
      builder: (context) {
        return Card(
          key: ValueKey(widget.title),
          margin: EdgeInsets.zero,
          shape: SmoothRectangleBorder(
            borderRadius: BorderRadius.circular(cardBorderRadius),
            smoothness: 0.6,
            side: BorderSide(
              color: theme.borderLow,
              width: 0.5,
            ),
          ),
          color: Color(widget.color!).withValues(alpha: 0.4),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              children: [
                Icon(
                    IconData(widget.habitIconCodePoint!,
                        fontFamily: 'MaterialIcons'),
                    size: 40,
                    color: Color(widget.color!).withValues(alpha: 0.85)),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.isNegative) ...[
                        Text(
                          'Habit to improve from',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: theme.foregroundLowMed),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 2,
                        )
                      ],
                      Text(
                        '${widget.title}',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: theme.foregroundHigh),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${widget.freq}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: theme.foregroundLow),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                IconButton(
                  color: theme.foregroundMedium,
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    size: 36,
                  ),
                ),
                CustomCheckbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(
                      () {
                        isChecked = value;
                      },
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
