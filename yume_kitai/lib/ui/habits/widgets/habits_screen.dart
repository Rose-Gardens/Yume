// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:smooth_corner/smooth_corner.dart';
import 'package:yume_kitai/ui/core/ui/custom_checkbox.dart';

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
            return const Center(child: Placeholder());
          }
          // TODO: this else should be a return child! ? IDK

          return child!;
        },
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            for (var habit in widget.viewModel.habits!)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: BigCard(
                  title: habit.habitTitle,
                  freq: habit.habitFreq,
                  habitIcon: habit.habitIcon as IconData,
                  colors: Color(habit.habitColor as int),
                ),
              )
          ],
        ),
      ),
    );
  }
}

class BigCard extends StatefulWidget {
  const BigCard(
      {super.key,
      required this.title,
      required this.freq,
      required this.habitIcon,
      required this.colors});

  final String? title;
  final String? freq;
  final IconData? habitIcon;
  final Color? colors;

  @override
  State<BigCard> createState() => _BigCardState();
}

class _BigCardState extends State<BigCard> {
  bool isChecked = false;

  // TODO: should clean this up.
  // * This is dynamic height finding, but causes extra re-renders.
  // final GlobalKey _cardKey = GlobalKey(); // Step 1: Add a GlobalKey
  // double _calculatedHeight = 0.0; // To store the height of the card

  // @override
  // void initState() {
  //   super.initState();

  //   // Step 2: Use addPostFrameCallback to calculate the height after rendering
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     final contextSize = _cardKey.currentContext?.size; // Get the size
  //     if (contextSize != null) {
  //       setState(() {
  //         _calculatedHeight = contextSize.height; // Save the height
  //       });
  //     }
  //   });
  // }

  // double calcBorderRadius(height) {
  // const double baseBorderRadius = 20.0;
  // const double scalingFactor = 0.08;
  // return baseBorderRadius + (scalingFactor * height);
  // }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    // TODO: fix this please
    // * awful method to detect large boxes
    final isTextTooLong = (widget.title?.length ?? 0) > 23;
    final double newBorderRadius = isTextTooLong ? 32 : 28;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Card(
          key: ValueKey(widget.title),
          margin: EdgeInsets.zero,
          shape: SmoothRectangleBorder(
            borderRadius: BorderRadius.circular(newBorderRadius),
            smoothness: 0.6,
            side: BorderSide(
              color: theme.borderLow,
              width: 0.5,
            ),
          ),
          color: widget.colors!.withValues(alpha: 0.4),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              children: [
                Icon(widget.habitIcon,
                    size: 36, color: widget.colors!.withValues(alpha: 0.85)),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        maxLines: 1,
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
