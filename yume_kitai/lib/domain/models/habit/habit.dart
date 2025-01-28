// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'habit.freezed.dart';
part 'habit.g.dart';

@freezed
class Habit with _$Habit {
  const factory Habit({
    /// The primary-key / id of the Habit. e.g. "5"
    required int habitId,

    /// The title of the Habit. e.g. "Run 5k"
    required String habitTitle,

    /// The frequency value per week (number or csv-days) of the Habit. e.g. "M, T, Th"
    required String habitFreq,

    /// The description of the Habit. e.g. "Running 5km to gain fitness"
    required String habitDesc,

    /// The color hex value of the Habit. e.g. "0xFF7a3dbb"
    required String habitColor,

    /// The icon string value of the Habit. e.g. "Icons.directions_run"
    required String habitIcon,
  }) = _Habit;

  factory Habit.fromJson(Map<String, Object?> json) => _$HabitFromJson(json);
}
