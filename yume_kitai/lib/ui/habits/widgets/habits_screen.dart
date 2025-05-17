// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yume_kitai/ui/core/ui/popup_menu/popup_menu.dart';
import 'package:yume_kitai/ui/habits/view_models/habits_viewmodel.dart';

import 'package:yume_kitai/ui/habits/widgets/habits_shrinkable_card.dart';

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
    final overlayKey = context.read<GlobalKey<PopupMenuState>>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListenableBuilder(
        // Listen to changes in the loadHabits function
        listenable: viewModel.loadHabits,
        builder: (context, child) {
          // If the function is still running, show a progress indicator.
          if (viewModel.loadHabits.running || viewModel.habits == null) {
            return const Center(child: CircularProgressIndicator());
          }

          // TODO: make an error widget
          // If the function failed, press to try again.
          if (viewModel.loadHabits.error) {
            return const SizedBox();
          }
          // * If not error, or running, filter habits and build list.
          final filteredHabits =
              viewModel.habits!.where((habit) => !habit.isRetired).toList();

          return Stack(
            children: [
              ListView.builder(
                padding: const EdgeInsets.only(top: 24),
                itemCount: filteredHabits.length,
                itemBuilder: (context, index) {
                  final habit = filteredHabits[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: HabitsShrinkableCard(
                      habit: habit,
                      overlayKey: overlayKey,
                    ),
                  );
                },
              ),
              PopupMenu(
                key: overlayKey,
              )
            ],
          );
        },
      ),
    );
  }
}
