// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'habit_conditionally_active.freezed.dart';
part 'habit_conditionally_active.g.dart';

// HabitConditionallyActive data is only created when the User puts constraints on
// whether the Habit should be active or not.
@freezed
class HabitConditionallyActive with _$HabitConditionallyActive {
  const factory HabitConditionallyActive({
    /// The primary-key / id of each Habit Cond.Act. entry. e.g. "2"
    required int habitConditionallyActiveId,

    /// When the Habit will start being active. e.g. "2025-06-25"
    required DateTime? startOn,

    /// When the Habit will end being active. e.g. "2025-06-30"
    required DateTime? endOn,

    /// When the Habit will deactivate for a vacation / period of time. e.g. "2025-07-25"
    required DateTime? startVacationOn,

    /// When the Habit will reactivate from a vacation. e.g. "2025-07-31"
    required DateTime? endVacationOn,

    /// Whether the Habit should be shifted to tomorrow. e.g. "true"
    required bool isDeferredToTomorrow,

    /// Foreign Key / PK id of the habit table. e.g. "5"
    required int habitId,
  }) = _HabitConditionallyActive;

  factory HabitConditionallyActive.fromJson(Map<String, Object?> json) =>
      _$HabitConditionallyActiveFromJson(json);
}
