// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'habit_reminder.freezed.dart';
part 'habit_reminder.g.dart';

// HabitReminder data is only created when the User sets a reminder for a Habit.
@freezed
class HabitReminder with _$HabitReminder {
  const factory HabitReminder({
    /// The primary-key / id of each Habit reminder entry. e.g. "2"
    required int habitReminderId,

    /// The type of reminder for the Habit. e.g. "Daily, Monthly"
    required String type,

    /// The days / dates Habit should be reminded on. e.g. "Monday, 22nd"
    required DateTime? remindOn,

    /// The time Habit should be reminded at. e.g. "17:55"
    required DateTime remindAt,

    /// Foreign Key / PK id of the habit table. e.g. "5"
    required int habitId,
  }) = _HabitReminder;

  factory HabitReminder.fromJson(Map<String, Object?> json) =>
      _$HabitReminderFromJson(json);
}
