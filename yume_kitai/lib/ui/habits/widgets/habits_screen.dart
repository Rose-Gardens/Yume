// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yume_kitai/ui/habits/view_models/habits_viewmodel.dart';

import 'package:yume_kitai/ui/habits/widgets/habits_card.dart';
import 'package:yume_kitai/utils/converters.dart';

class HabitsScreen extends StatefulWidget {
  const HabitsScreen({
    super.key,
  });

  @override
  State<HabitsScreen> createState() => _HabitsScreenState();
}

class _HabitsScreenState extends State<HabitsScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HabitsViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListenableBuilder(
        // Listen to changes in the loadHabits function
        listenable: viewModel.loadHabits,
        builder: (context, child) {
          // If the function is still running, show a progress indicator.
          if (viewModel.loadHabits.running) {
            return const Center(child: CircularProgressIndicator());
          }

          // TODO: make an error widget
          // If the function failed, press to try again.
          if (viewModel.loadHabits.error) {
            return const SizedBox();
          }
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 24,
              ),
              ...viewModel.habits!
                  .where((habit) => !habit.isRetired)
                  .map(
                    (habit) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: HabitsCard(
                        id: habit.habitId,
                        title: habit.title,
                        habitIconCodePoint: hexStringToHexInt(habit.icon),
                        color: hexStringToHexInt(habit.color),
                        isNegative: habit.isNegative,
                      ),
                    ),
                  )
            ],
          );
        },
      ),
    );
  }
}
