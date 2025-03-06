// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'habit_history.freezed.dart';
part 'habit_history.g.dart';

// HabitHistory data is only created when the User interacts with the Habit's
// completion states; AKA by setting the Habit to "Complete" or "Skipped" etc.
@freezed
class HabitHistory with _$HabitHistory {
  const factory HabitHistory({
    /// The primary-key / id of each Habit history entry. e.g. "2"
    required int habitHistoryId,

    /// The date value of when the Habit state was modified. e.g. "2025-12-31"
    required DateTime createdOn,

    /// The completion state of the Habit. e.g. "Complete"
    required String completionState,

    /// Foreign Key / PK id of the habit table. e.g. "5"
    required int habitId,

    /// Foreign Key / PK id of the habit_tag table. e.g. "5"
    required int? habitTagId,
  }) = _HabitHistory;

  factory HabitHistory.fromJson(Map<String, Object?> json) =>
      _$HabitHistoryFromJson(json);
}
