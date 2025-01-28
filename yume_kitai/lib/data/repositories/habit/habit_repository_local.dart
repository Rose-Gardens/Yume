// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'dart:async';

import '../../../domain/models/habit/habit.dart';
import '../../../utils/result.dart';
import '../../services/local/local_data_service.dart';

import 'habit_repository.dart';

class HabitRepositoryLocal implements HabitRepository{
    HabitRepositoryLocal({
        required LocalDataService localDataService
    }) : _localDataService = localDataService;

    final LocalDataService _localDataService;

  @override
  Future<Result<void>> createHabit(Habit habit) {
    // TODO: implement createHabit
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteHabit(int id) {
    // TODO: implement deleteHabit
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Habit>>> getHabitHistoryByDateTime(DateTime startDateTime, DateTime endDateTime) {
    // TODO: implement getHabitHistoryByDateTime
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Habit>>> getHabitHistoryById(int id) {
    // TODO: implement getHabitHistoryById
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Habit>>> getHabitList() {
    // TODO: implement getHabitList
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> updateHabit(Habit habit) {
    // TODO: implement updateHabit
    throw UnimplementedError();
  }
}