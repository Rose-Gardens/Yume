import 'package:flutter/material.dart';

import 'package:smooth_corner/smooth_corner.dart';
import 'package:yume_kitai/utils/converters.dart';

import '../../core/themes/theme_extension.dart';

import 'habits_shrinkable_card.dart';

class HabitsCard extends StatelessWidget {
  const HabitsCard({
    super.key,
    required this.widget,
  });

  final HabitsShrinkableCard widget;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    final Color cardColor = widget.habit.color.isEmpty
        ? theme.surfaceMedium
        : Color(hexStringToHexInt(widget.habit.color)).withValues(alpha: 0.4);

    final Color iconColor = widget.habit.color.isEmpty
        ? theme.foregroundHigh
        : Color(hexStringToHexInt(widget.habit.color)).withValues(alpha: 0.85);

    final cardBorderRadius = (widget.habit.title.length > 25)
        ? 26.0
        : 18.0; // Bigger vs. smaller card

    return Card(
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
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        child: Row(
          children: [
            if (widget.habit.icon.isNotEmpty)
              Icon(
                  IconData(hexStringToHexInt(widget.habit.icon),
                      fontFamily: 'MaterialIcons'),
                  size: 40,
                  color: iconColor),
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
                      widget.habit.title,
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
    );
  }
}
