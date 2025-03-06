// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:smooth_corner/smooth_corner.dart';
import 'package:yume_kitai/ui/core/ui/custom_checkbox.dart';
import 'package:yume_kitai/utils/converters.dart';

import '../../core/themes/theme_extension.dart';
import '../view_models/habits_viewmodel.dart';

class HabitsScreen extends StatefulWidget {
  const HabitsScreen({super.key, required this.viewModel});

  final HabitsViewModel viewModel;

  @override
  State<HabitsScreen> createState() => _HabitsScreenState();
}

class _HabitsScreenState extends State<HabitsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListenableBuilder(
        // Listen to changes in the loadHabits function
        listenable: widget.viewModel.loadHabits,
        builder: (context, child) {
          // If the function is still running, show a progress indicator.
          if (widget.viewModel.loadHabits.running) {
            return const Center(child: CircularProgressIndicator());
          }

          // TODO: make an error widget
          // If the function failed, press to try again.
          if (widget.viewModel.loadHabits.error) {
            return const SizedBox();
          }

          return ListView(
              padding: EdgeInsets.zero,
              children: widget.viewModel.habits!
                  .where((habit) => !habit.isRetired)
                  .map((habit) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: BigCard(
                          title: habit.title,
                          freq: 'Thrice a week',
                          habitIconCodePoint: hexStringToHexInt(habit.icon),
                          color: hexStringToHexInt(habit.color),
                          isNegative: habit.isNegative,
                        ),
                      ))
                  .toList());
        },
      ),
    );
  }
}

class BigCard extends StatefulWidget {
  const BigCard(
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
  State<BigCard> createState() => _BigCardState();
}

class _BigCardState extends State<BigCard> {
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
