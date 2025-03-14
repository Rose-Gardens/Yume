// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'habit.freezed.dart';
part 'habit.g.dart';

@freezed
class Habit with _$Habit {
  const factory Habit({
    /// The primary-key / id of the Habit. e.g. "5"
    @JsonKey(name: 'habit_id') int? habitId,

    /// The title of the Habit. e.g. "Run 5k"
    required String title,

    /// The group title of the Habit. e.g. "Exercise (Run 5k, Bike 30m)"
    @JsonKey(name: 'group_title') required String? groupTitle,

    /// The description of the Habit. e.g. "Running 5km to gain fitness"
    required String desc,

    /// The color hex value of the Habit. e.g. "FF7a3dbb"
    required String color,

    /// The IconData hex codepoint value of the Habit. e.g. "f653"
    required String icon,

    /// The bool value on whether the Habit is retired or not. e.g. "true"
    @JsonKey(name: 'is_retired') required bool isRetired,

    /// The bool value on whether the Habit is *undesirable* or not. e.g. "true"
    @JsonKey(name: 'is_negative') required bool isNegative,

    /// Foreign-key / PK id of the habit_conditionally_active table. e.g. "5"
    @JsonKey(name: 'habit_conditionallY_active_id') required int? habitConditionallyActiveId,

    /// Foreign-key / PK id of the chrono_label table. e.g. "5"
    @JsonKey(name: 'chrono_label_id') required int? chronoLabelId,
  }) = _Habit;

  factory Habit.fromJson(Map<String, Object?> json) => _$HabitFromJson(json);
}
