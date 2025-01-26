// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import '../../../domain/models/habit/habit.dart';
import '../../../utils/result.dart';

abstract class HabitRepository {
  /// Returns the full list of [Habit] for the user.
  Future<Result<List<Habit>>> getHabitList();

  /// Returns list of specific [Habit] by id
  Future<Result<List<Habit>>> getHabitById(int id);

  /// Returns list of specific [Habit] from a dateTime range
  Future<Result<List<Habit>>> getHabitByDateTime(DateTime startDateTime, DateTime endDateTime);
}