// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:yume_kitai/config/dependencies.dart';

import '../../../../domain/models/habit/habit/habit.dart';
import '../../../../utils/swipe_direction.dart';
import '../../../core/ui/popup_menu/popup_menu.dart';

import 'habits_card.dart';

class HabitsGesturableCard extends StatefulWidget {
  const HabitsGesturableCard({
    super.key,
    required this.habit,
    required this.overlayKey,
  });

  final Habit habit;
  final GlobalKey<PopupMenuState> overlayKey;
  static const double cardSwipedWidth = 56.0;

  @override
  State<HabitsGesturableCard> createState() => _HabitsGesturableCardState();
}

class _HabitsGesturableCardState extends State<HabitsGesturableCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _widthController;

  bool isPressed = false;
  SwipeDirection swipeDirection = SwipeDirection.none;

  @override
  void initState() {
    super.initState();
    _widthController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _widthController.dispose();
    super.dispose();
  }

  // TODO: this icon pack is 19783640bytes long! see notion
  static const List<({String title, IconData icon, bool isDanger})> menuData = [
    (title: "Complete", icon: SFIcons.sf_checkmark, isDanger: false),
    (title: "Skip", icon: SFIcons.sf_arrow_right_to_line, isDanger: false),
    (title: "Vacation", icon: SFIcons.sf_airplane_departure, isDanger: false),
    (title: "Set Tag", icon: SFIcons.sf_tag, isDanger: false),
    (title: "Retire", icon: SFIcons.sf_escape, isDanger: false),
    (title: "Delete", icon: SFIcons.sf_trash, isDanger: true),
  ];

  Alignment getSwipeAlignment(SwipeDirection swipeDir) {
    if (swipeDir == SwipeDirection.left) {
      return Alignment.centerLeft;
    } else if (swipeDir == SwipeDirection.right) {
      return Alignment.centerRight;
    } else {
      return Alignment.center;
    }
  }

  @override
  Widget build(BuildContext context) {
    final fullCardWidth = MediaQuery.of(context).size.width - 32.0;

    return GestureDetector(
      key: ValueKey(widget.habit.habitId),

      // > To detect shrinking
      onTapDown: (_) => setState(() => isPressed = true),

      onTapUp: (details) {
        setState(() => isPressed = false);
        // TODO: Open Habit Page HERE
      },
      onTapCancel: () => setState(() => isPressed = false),
      onLongPressStart: (details) {
        setState(() => isPressed = false);
        HapticFeedback.lightImpact();
        overlayKey.currentState!.showOverlay(details.globalPosition, menuData);
      },
      onLongPressCancel: () => setState(() => isPressed = false),

      onHorizontalDragStart: (details) {
        HapticFeedback.lightImpact();
      },

      // > To detect swiping
      onHorizontalDragUpdate: (details) {
        double delta = 0;

        if (details.delta.dx > 0) {
          // > These if conds. are to keep Align correct
          if (swipeDirection != SwipeDirection.left) {
            setState(() => swipeDirection = SwipeDirection.right);
            delta = details.delta.dx;
          } else {
            delta = -details.delta.dx;
          }
        }
        if (details.delta.dx < 0) {
          if (swipeDirection != SwipeDirection.right) {
            setState(() => swipeDirection = SwipeDirection.left);
            delta = -details.delta.dx;
          } else {
            delta = details.delta.dx;
          }
        }
        final swipeProgress =
            (_widthController.value + delta / fullCardWidth).clamp(
              0.0,
              1.0,
            );
        _widthController.value = swipeProgress;
      },
      onHorizontalDragEnd: (details) {
        final velocity = details.primaryVelocity ?? 0;
        if (velocity > 800 ||
            velocity < -800 ||
            _widthController.value > 0.5) {
          _widthController
              .fling(velocity: 2.0)
              .whenComplete(
                () => setState(() => swipeDirection = SwipeDirection.none),
              );
        } else {
          _widthController
              .animateTo(
                0.0,
                curve: Curves.easeOutQuint,
                duration: const Duration(milliseconds: 500),
              )
              .whenComplete(
                () => setState(() => swipeDirection = SwipeDirection.none),
              );
        }
      },

      child: AnimatedScale(
        scale: isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutQuint, // Apple Spring Curve
        child: Align(
          alignment: getSwipeAlignment(swipeDirection),
          child: AnimatedBuilder(
            animation: _widthController,
            builder: (BuildContext context, _) {
              final t = _widthController.value;
              final width = lerpDouble(
                fullCardWidth,
                HabitsGesturableCard.cardSwipedWidth,
                t,
              );

              return HabitsCard(
                width: width,
                habit: widget.habit,
                swipeDirection: swipeDirection,
              );
            },
          ),
        ),
      ),
    );
  }
}
