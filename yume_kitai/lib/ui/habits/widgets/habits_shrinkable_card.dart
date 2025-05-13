// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:yume_kitai/config/dependencies.dart';

import '../../../domain/models/habit/habit/habit.dart';

import '../../core/ui/popup_menu/popup_menu.dart';
import 'habits_card.dart';

class HabitsShrinkableCard extends StatefulWidget {
  const HabitsShrinkableCard(
      {super.key, required this.habit, required this.overlayKey});

  final Habit habit;
  final GlobalKey<PopupMenuState> overlayKey;

  @override
  State<HabitsShrinkableCard> createState() => _HabitsShrinkableCardState();
}

class _HabitsShrinkableCardState extends State<HabitsShrinkableCard> {
  bool isPressed = false;
  bool isSwipedRight = false;
  bool isSwipedLeft = false;
  double swipeDist = 0;

  static const List<({String title, IconData icon, bool isDanger})> menuData = [
    (title: "Complete", icon: CupertinoIcons.check_mark, isDanger: false),
    (title: "Skip", icon: CupertinoIcons.arrow_right_to_line, isDanger: false),
    (title: "Vacation", icon: CupertinoIcons.bed_double, isDanger: false),
    (title: "Set Tag", icon: CupertinoIcons.tag, isDanger: false),
    (title: "Retire", icon: CupertinoIcons.escape, isDanger: false),
    (title: "Delete", icon: CupertinoIcons.delete, isDanger: true),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: ValueKey(widget.habit.habitId),
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
      onHorizontalDragUpdate: (details) {
        if (details.delta.dx > 0) {
          setState(() {
            isSwipedRight = true;
          });
        }
        if (isSwipedRight) {
          setState(() {
            swipeDist += details.delta.dx * 1.1;
          });
        }
        if (details.delta.dx < 0) {
          setState(() {
            isSwipedLeft = true;
          });
        }
      },
      onHorizontalDragEnd: (details) {
        setState(() {
          isSwipedRight = false;
          isSwipedLeft = false;
          swipeDist = 0;
        });
      },
      child: AnimatedScale(
        scale: isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutQuint, // Apple Spring Curve
        child: Align(
          alignment: isSwipedRight
              ? Alignment.centerRight
              : isSwipedLeft
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
          child: HabitsCard(
            habit: widget.habit.copyWith(
              title: isSwipedRight ? 'slide to complete' : widget.habit.title,
            ),
            swipeDistance: swipeDist,
          ),
        ),
      ),
    );
  }
}
