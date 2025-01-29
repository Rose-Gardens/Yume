// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import '../../../domain/models/habit/habit.dart';
import '../../../domain/models/habit/habit_history.dart';
import '../../../utils/result.dart';

abstract class HabitRepository {
  /// Returns the full list of [Habit] for the user.
  Future<Result<List<Habit>>> getHabitList();

  /// Returns history list of specific [Habit] by id.
  Future<Result<List<Habit>>> getHabitHistoryById(int habitId);

  /// Returns history list of [Habit]s on a specific date.
  Future<Result<List<HabitHistory>>> getHabitHistoryByDateTime(
      String habitDate);

  /// Creates a new [Habit].
  Future<Result<void>> createHabit(Habit habit);

  /// Updates a [Habit].
  Future<Result<void>> updateHabit(Habit habit);

  /// Deletes a habit.
  Future<Result<void>> deleteHabit(int id);
}
