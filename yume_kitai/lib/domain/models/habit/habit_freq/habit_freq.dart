// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'habit_freq.freezed.dart';
part 'habit_freq.g.dart';


// HabitFreq data is only created when the User sets a frequency for the Habit.
@freezed
class HabitFreq with _$HabitFreq {
  const factory HabitFreq({
    /// The primary-key / id of each Habit frequency entry. e.g. "2"
    required int habitFreqId,

    /// The type of frequency for the Habit. e.g. "Daily, Monthly"
    required String type,

    /// The value of the Habit frequency. e.g. "Monday, 22nd"
    required String repeatValue,

    /// Foreign Key / PK id of the habit table. e.g. "5"
    required int habitId,
  }) = _HabitFreq;

  factory HabitFreq.fromJson(Map<String, Object?> json) =>
      _$HabitFreqFromJson(json);
}
