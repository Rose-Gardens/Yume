// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'habit_goal.freezed.dart';
part 'habit_goal.g.dart';

// HabitGoal data is only created when the User sets a goal for the Habit.
@freezed
class HabitGoal with _$HabitGoal {
  const factory HabitGoal({
    /// The primary-key / id of each Habit goal entry. e.g. "2"
    required int habitGoalId,

    /// The target amount of the Habit goal. e.g. "10000"
    required int target,

    /// The current amount of the Habit goal. e.g. "4532"
    required int currentAmount,

    /// The unit of the Habit goal. e.g. "steps"
    required String unit,

    /// Foreign Key / PK id of the habit table. e.g. "5"
    required int habitId,
  }) = _HabitGoal;

  factory HabitGoal.fromJson(Map<String, Object?> json) =>
      _$HabitGoalFromJson(json);
}
