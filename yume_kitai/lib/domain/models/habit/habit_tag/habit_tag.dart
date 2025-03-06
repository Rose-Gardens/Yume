// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'habit_tag.freezed.dart';
part 'habit_tag.g.dart';

// HabitTag data contains the one or more user-added tags of each Habit.
@freezed
class HabitTag with _$HabitTag {
  const factory HabitTag({
    /// The primary-key / id of each Habit tag entry. e.g. "2"
    required int habitTagId,

    /// The title of the Habit tag. e.g. "Design Work"
    required String title,

    /// The color hex value of the Habit tag. e.g. "FF7a3dbb"
    required String? color,

    /// Foreign Key / PK id of the habit table. e.g. "5"
    required int habitId,
  }) = _HabitTag;

  factory HabitTag.fromJson(Map<String, Object?> json) =>
      _$HabitTagFromJson(json);
}
