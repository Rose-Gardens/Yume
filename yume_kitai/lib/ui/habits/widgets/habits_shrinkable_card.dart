// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yume_kitai/config/dependencies.dart';

import '../../../domain/models/habit/habit/habit.dart';

import '../../core/ui/popup_menu.dart';
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: ValueKey(widget.habit.habitId),
      onTap: () {},
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onLongPressStart: (LongPressStartDetails details) {
        setState(() {
          isPressed = false;
        });
        HapticFeedback.lightImpact();
        overlayKey.currentState!.showOverlay(details.globalPosition);
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: AnimatedScale(
        scale: isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutQuint, // Apple Spring Curve
        child: HabitsCard(
          widget: widget,
        ),
      ),
    );
  }
}
