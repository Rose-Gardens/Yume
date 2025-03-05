// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:sqflite/sql.dart';
import 'package:yume_kitai/domain/models/habit/habit_history/habit_history.dart';

import '../../../domain/models/habit/habit/habit.dart';
import '../../../utils/result.dart';
import '../../services/local/local_data_service.dart';

import 'habit_repository.dart';

class HabitRepositoryLocal implements HabitRepository {
  HabitRepositoryLocal({required LocalDataService localDataService})
      : _localDataService = localDataService;

  final LocalDataService _localDataService;

  /// Defines a function that inserts or "creates" a [Habit] into the database.
  @override
  Future<Result<void>> createHabit(Habit habit) async {
    try {
      final db = await _localDataService.getDatabaseInstance();
      await db.insert('habits', habit.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      return const Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Defines a function that deletes a [Habit] based on its habit_id.
  @override
  Future<Result<void>> deleteHabit(int habitId) async {
    try {
      final db = await _localDataService.getDatabaseInstance();
      await db.delete('habits', where: 'habit_id = ?', whereArgs: [habitId]);
      return const Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Defines a function that updates a [Habit]'s data based on its habit_id.
  @override
  Future<Result<void>> updateHabit(Habit habit) async {
    try {
      final db = await _localDataService.getDatabaseInstance();
      await db.update('habits', habit.toJson(),
          where: 'habit_id = ?', whereArgs: [habit.habitId]);
      return const Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Defines a function that gets the history data of [Habit]s between two dates (inclusive).
  @override
  Future<Result<List<HabitHistory>>> getHabitHistoryByDate(
      String startDate, String endDate) async {
    try {
      final db = await _localDataService.getDatabaseInstance();
      final List<Map<String, Object?>> habitHistoryByDate = await db.query(
          'habit_history',
          where: 'DATE(h_history_datetime_stamp) BETWEEN ? AND ?',
          whereArgs: [startDate, endDate]);
      return Result.ok([
        for (final {
              'h_history_id': habitHistoryId as int,
              'h_history_datetime_stamp': habitHistoryDateTimeStamp as String,
              'h_history_habit_state': habitHistoryState as String,
              'habit_id': habitId as int
            } in habitHistoryByDate)
          HabitHistory(
              // Creates a HabitHistory object using the data pulled from the query.
              habitHistoryId: habitHistoryId,
              habitHistoryDateTimeStamp: habitHistoryDateTimeStamp,
              habitHistoryState: habitHistoryState,
              habitId: habitId)
      ]);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Defines a function that gets the history data of a [Habit] based on its habit_id.
  @override
  Future<Result<List<HabitHistory>>> getHabitHistoryById(int habitId) async {
    try {
      final db = await _localDataService.getDatabaseInstance();
      final List<Map<String, Object?>> habitHistoryById = await db
          .query('habit_history', where: 'habit_id = ?', whereArgs: [habitId]);
      return Result.ok([
        for (final {
              'h_history_id': habitHistoryId as int,
              'h_history_datetime_stamp': habitHistoryDateTimeStamp as String,
              'h_history_habit_state': habitHistoryState as String,
              'habit_id': habitId as int
            } in habitHistoryById)
          HabitHistory(
              // Creates a HabitHistory object using the data pulled from the query.
              habitHistoryId: habitHistoryId,
              habitHistoryDateTimeStamp: habitHistoryDateTimeStamp,
              habitHistoryState: habitHistoryState,
              habitId: habitId)
      ]);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Defines a function that returns the full list of [Habit]s.
  @override
  Future<Result<List<Habit>>> getHabitList() async {
    try {
      final db = await _localDataService.getDatabaseInstance();
      final List<Map<String, Object?>> habitList = await db.query('habits');
      return Result.ok([
        for (final {
              'habit_id': habitId as int,
              'habit_title': habitTitle as String,
              'habit_freq': habitFreq as String,
              'habit_desc': habitDesc as String,
              'habit_color': habitColor as String,
              'habit_icon': habitIcon as String
            } in habitList)
          Habit(
              habitId: habitId,
              habitTitle: habitTitle,
              habitFreq: habitFreq,
              habitDesc: habitDesc,
              habitColor: habitColor,
              habitIcon: habitIcon)
      ]);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Defines a function that returns a [Habit] based on its habit_id.
  @override
  Future<Result<Habit>> getHabitById(int habitId) async {
    try {
      final db = await _localDataService.getDatabaseInstance();
      final List<Map<String, Object?>> habitList =
          await db.query('habits', where: 'habit_id = ?', whereArgs: [habitId]);
      if (habitList.isNotEmpty) {
        final habitRow = habitList.first;
        final habit = Habit(
            habitId: habitRow['habit_id'] as int,
            habitTitle: habitRow['habit_title'] as String,
            habitFreq: habitRow['habit_freq'] as String,
            habitDesc: habitRow['habit_desc'] as String,
            habitColor: habitRow['habit_color'] as String,
            habitIcon: habitRow['habit_icon'] as String);

        return Result.ok(habit);
      } else {
        return Result.error(Exception('No habit found'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
