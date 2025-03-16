// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:smooth_corner/smooth_corner.dart';

import '../../core/themes/theme_extension.dart';
import 'package:yume_kitai/utils/converters.dart';

class HabitsCard extends StatefulWidget {
  const HabitsCard(
      {super.key,
      required this.id,
      required this.title,
      required this.icon,
      required this.color,
      required this.isNegative});

  final int id;
  final String title;
  final String icon;
  final String color;
  final bool isNegative;

  @override
  State<HabitsCard> createState() => _HabitsCardState();
}

class _HabitsCardState extends State<HabitsCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    final Color cardColor = widget.color.isEmpty
        ? theme.surfaceMedium
        : Color(hexStringToHexInt(widget.color)).withValues(alpha: 0.4);

    final Color iconColor = widget.color.isEmpty
        ? theme.foregroundHigh
        : Color(hexStringToHexInt(widget.color)).withValues(alpha: 0.85);

    final Widget iconWidget = widget.icon.isNotEmpty
        ? Icon(
            IconData(hexStringToHexInt(widget.icon),
                fontFamily: 'MaterialIcons'),
            size: 40,
            color: iconColor)
        : const SizedBox.shrink();

    final cardBorderRadius =
        (widget.title.length > 25) ? 26.0 : 18.0; // Bigger vs. smaller card

    return GestureDetector(
      onTap: () {},
      onLongPressStart: (LongPressStartDetails details) {},
      child: Card(
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
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 4, 8, 4),
          child: Row(
            children: [
              iconWidget,
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
            ],
          ),
        ),
      ),
    );
  }
}
