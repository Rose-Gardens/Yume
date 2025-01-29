// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:sqflite/sql.dart';
import 'package:yume_kitai/domain/models/habit/habit_history.dart';

import '../../../domain/models/habit/habit.dart';
import '../../../utils/result.dart';
import '../../services/local/local_data_service.dart';

import 'habit_repository.dart';

class HabitRepositoryLocal implements HabitRepository {
  HabitRepositoryLocal({required LocalDataService localDataService})
      : _localDataService = localDataService;

  final LocalDataService _localDataService;

  // Defines a function that inserts or "creates" a Habit into the database.
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

  // Defines a function that deletes a Habit based on its habit_id.
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

  @override
  Future<Result<void>> updateHabit(Habit habit) async {
    // TODO: implement updateHabit
    throw UnimplementedError();
  }

  // Defines a function that gets the history entries of Habits between a
  // specific range of timestamps.
  @override
  Future<Result<List<HabitHistory>>> getHabitHistoryByDateTime(
      String habitDate) async {
    try {
      final db = await _localDataService.getDatabaseInstance();
      final List<Map<String, Object?>> habitHistoryByDateTimeMap = await db
          .query('habit_history',
              where: 'DATE(h_history_datetime_stamp) = ',
              whereArgs: [habitDate]);
      return Result.ok([
        for (final {
              'h_history_id': habitHistoryId as int,
              'h_history_timestamp': habitHistoryDateTimeStamp as String,
              'h_history_habit_state': habitHistoryState as String,
              'habit_id': habitId as int
            } in habitHistoryByDateTimeMap)
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

  @override
  Future<Result<List<Habit>>> getHabitHistoryById(int id) async {
    // TODO: implement getHabitHistoryById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Habit>>> getHabitList() async {
    // TODO: implement getHabitList
    throw UnimplementedError();
  }
}
