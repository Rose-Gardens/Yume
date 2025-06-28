import 'package:flutter/material.dart';

import 'package:smooth_corner/smooth_corner.dart';
import 'package:yume_kitai/utils/converters.dart';
import 'package:yume_kitai/utils/swipe_direction.dart';

import '../../../domain/models/habit/habit/habit.dart';
import '../../core/themes/theme_extension.dart';

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

  @override
  State<HabitsCard> createState() => _HabitsCardState();
}

class _HabitsCardState extends State<HabitsCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;
    final Color cardColor;
    final Color iconColor;
    final String habitText;
    final Widget iconWidget;
    final BorderRadius borderRadius;
    final Color dynamicCardColor;
    final TextStyle? dynamicTextStyle;

    if (widget.habit.color.isEmpty) {
      cardColor = theme.surfaceMedium;
      iconColor = theme.foregroundMedium;
    } else {
      cardColor = Color(
        hexStringToHexInt(widget.habit.color),
      ).withValues(alpha: 0.4);
      iconColor = Color(
        hexStringToHexInt(widget.habit.color),
      ).withValues(alpha: 0.85);
    }

    if (widget.habit.icon.isEmpty) {
      iconWidget = Stack(
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
    } else {
      iconWidget = Icon(
        IconData(
          hexStringToHexInt(widget.habit.icon),
          fontFamily: 'MaterialIcons',
        ),
        size: 28,
        color: iconColor,
      );
    }

    if (widget.swipeDirection == SwipeDirection.right) {
      habitText = 'slide to complete';
      borderRadius = BorderRadius.circular(50);
      dynamicCardColor = theme.surfaceVeryHigh;
      dynamicTextStyle = Theme.of(context).textTheme.titleLarge?.copyWith(
        color: theme.surfaceBg,
        fontVariations: [const FontVariation('wght', 500)],
      );
    } else {
      habitText = widget.habit.title;
      borderRadius = BorderRadius.circular(22);
      dynamicCardColor = cardColor;
      dynamicTextStyle = Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(color: theme.foregroundHigh);
    }

    // * TODO: Widget Tree Starts Here. Clean that up lol

    return Container(
      width: widget.width,
      constraints: BoxConstraints(
        minHeight: 32,
        maxHeight: 96,
        minWidth: 56,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      margin: EdgeInsets.zero,
      decoration: ShapeDecoration(
        color: dynamicCardColor,
        shape: SmoothRectangleBorder(
          borderRadius: borderRadius,
          smoothness: 0.6,
          side: BorderSide(color: theme.borderLow, width: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Stack(
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
                iconWidget,
              ],
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    habitText,
                    style: dynamicTextStyle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // .animate(
                  //   controller: _animationController,
                  //   onPlay: (controller) => controller.repeat(),
                  // )
                  // .shimmer(
                  //   duration: 1750.ms,
                  //   color: theme.foregroundMax,
                  //   delay: 600.ms,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
