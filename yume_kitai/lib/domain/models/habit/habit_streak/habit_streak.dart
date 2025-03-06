// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'habit_streak.freezed.dart';
part 'habit_streak.g.dart';

// HabitStreak data contains the streak values for each Habit.
@freezed
class HabitStreak with _$HabitStreak {
  const factory HabitStreak({
    /// The primary-key / id of each Habit streak entry. e.g. "2"
    required int habitStreakId,

    /// The current streak value of a Habit. e.g. "12"
    required int current,

    /// The best steak value of a Habit. e.g. "45"
    required int best,

    /// Foreign Key / PK id of the habit table. e.g. "5"
    required int habitId,
  }) = _HabitStreak;

  factory HabitStreak.fromJson(Map<String, Object?> json) =>
      _$HabitStreakFromJson(json);
}
