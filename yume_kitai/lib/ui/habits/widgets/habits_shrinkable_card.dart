// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:yume_kitai/config/dependencies.dart';

import '../../../domain/models/habit/habit/habit.dart';
import '../../../utils/swipe_direction.dart';
import '../../core/ui/popup_menu/popup_menu.dart';

import 'habits_card.dart';

class HabitsShrinkableCard extends StatefulWidget {
  const HabitsShrinkableCard({
    super.key,
    required this.habit,
    required this.overlayKey,
  });

  final Habit habit;
  final GlobalKey<PopupMenuState> overlayKey;

  @override
  State<HabitsShrinkableCard> createState() => _HabitsShrinkableCardState();
}

class _HabitsShrinkableCardState extends State<HabitsShrinkableCard> {
  double swipeDist = 0;
  bool isPressed = false;
  SwipeDirection swipeDirection = SwipeDirection.none;

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
    return GestureDetector(
      key: ValueKey(widget.habit.habitId),

      // > To detect shrinking
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
        // TODO: Open Habit Page
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      onLongPressStart: (details) {
        setState(() {
          isPressed = false;
        });
        HapticFeedback.lightImpact();
        overlayKey.currentState!.showOverlay(details.globalPosition, menuData);
      },
      onLongPressCancel: () {
        setState(() {
          isPressed = false;
        });
      },

      // > To detect swiping
      onHorizontalDragUpdate: (details) {
        if (details.delta.dx > 0) {
          setState(() {
            swipeDirection = SwipeDirection.right;
          });
        }
        if (details.delta.dx < 0) {
          setState(() {
            swipeDirection = SwipeDirection.left;
          });
        }
      },
      onHorizontalDragEnd: (details) {
        setState(() {
          swipeDirection = SwipeDirection.none;
        });
      },

      child: AnimatedScale(
        scale: isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutQuint, // Apple Spring Curve
        child: Align(
          alignment: getSwipeAlignment(swipeDirection),
          child: HabitsCard(
            habit: widget.habit,
            swipeDirection: swipeDirection,
          ),
        ),
      ),
    );
  }
}
