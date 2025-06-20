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
    required this.swipeDirection,
  });

  final Habit habit;
  final SwipeDirection swipeDirection;
  static const double cardBorderRadius = 22.0;

  @override
  State<HabitsCard> createState() => _HabitsCardState();
}

class _HabitsCardState extends State<HabitsCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Tween<double> widthTween;
  late final BorderRadiusTween radiusTween;
  late final ColorTween colorTween;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    final Color cardColor = widget.habit.color.isEmpty
        ? theme.surfaceMedium
        : Color(hexStringToHexInt(widget.habit.color)).withValues(alpha: 0.4);

    final Color iconColor = widget.habit.color.isEmpty
        ? theme.foregroundMedium
        : Color(hexStringToHexInt(widget.habit.color)).withValues(alpha: 0.85);

    final Widget iconWidget = widget.habit.icon.isNotEmpty
        ? Icon(
            IconData(
              hexStringToHexInt(widget.habit.icon),
              fontFamily: 'MaterialIcons',
            ),
            size: 28,
            color: iconColor,
          )
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

    final String habitTextOnSwipeRight =
        widget.swipeDirection == SwipeDirection.right
        ? "slide to complete"
        : widget.habit.title;

    final TextStyle? habitTextStyleOnSwipeRight =
        widget.swipeDirection == SwipeDirection.right
        ? Theme.of(context).textTheme.titleLarge?.copyWith(
            color: theme.surfaceBg,
            fontVariations: [const FontVariation('wght', 500)],
          )
        : Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(color: theme.foregroundHigh);

    final Color cardColorOnSwipeRight =
        widget.swipeDirection == SwipeDirection.right
        ? theme.surfaceVeryHigh
        : cardColor;

    return Container(
      // TODO: This swipe technique sucks
      width: MediaQuery.of(context).size.width,
      constraints: BoxConstraints(
        minHeight: 32,
        maxHeight: 96,
        minWidth: 56,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      margin: EdgeInsets.zero,
      decoration: ShapeDecoration(
        color: cardColorOnSwipeRight,
        shape: SmoothRectangleBorder(
          borderRadius: BorderRadius.circular(100),
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
                        habitTextOnSwipeRight,
                        style: habitTextStyleOnSwipeRight,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
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
