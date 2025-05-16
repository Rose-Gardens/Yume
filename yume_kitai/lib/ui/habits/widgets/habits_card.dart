import 'package:flutter/material.dart';

import 'package:smooth_corner/smooth_corner.dart';
import 'package:yume_kitai/utils/converters.dart';

import '../../../domain/models/habit/habit/habit.dart';
import '../../core/themes/theme_extension.dart';

class HabitsCard extends StatelessWidget {
  const HabitsCard({
    super.key,
    required this.habit,
    required this.swipeDistance,
  });

  final Habit habit;
  final double swipeDistance;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    final Color cardColor = habit.color.isEmpty
        ? theme.surfaceMedium
        : Color(hexStringToHexInt(habit.color)).withValues(alpha: 0.4);

    final Color iconColor = habit.color.isEmpty
        ? theme.foregroundMedium
        : Color(hexStringToHexInt(habit.color)).withValues(alpha: 0.85);

    final Widget iconWidget = habit.icon.isNotEmpty
        ? Icon(
            IconData(hexStringToHexInt(habit.icon),
                fontFamily: 'MaterialIcons'),
            size: 40,
            color: iconColor)
        : Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: iconColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          );

    return AnimatedContainer(
      // TODO: This swipe technique sucks
      width: MediaQuery.of(context).size.width - swipeDistance - 32, 
      curve: Curves.easeOutQuint,
      duration: const Duration(milliseconds: 0),
      constraints: BoxConstraints(
          minHeight: 56,
          maxHeight: 96,
          minWidth: 56,
          maxWidth: MediaQuery.of(context).size.width),
      margin: EdgeInsets.zero,
      decoration: ShapeDecoration(
        color: cardColor,
        shape: SmoothRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
          smoothness: 0.6,
          side: BorderSide(
            color: theme.borderLow,
            width: 0.5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            iconWidget,
            const SizedBox(width: 8),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    habit.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: theme.foregroundHigh),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
