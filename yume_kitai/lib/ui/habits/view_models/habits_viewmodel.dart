// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:logging/logging.dart';
import 'package:yume_kitai/data/repositories/habit/habit_repository.dart';
import '../../../utils/command.dart';

import '../../../domain/models/habit/habit/habit.dart';
import '../../../utils/result.dart';

class HabitsViewModel extends ChangeNotifier {
  HabitsViewModel({required HabitRepository habitRepository})
      : _habitRepository = habitRepository {
    loadHabits = Command0(_load)..execute();
  }

  final HabitRepository _habitRepository;
  final _log = Logger('HabitsViewModel');

  List<Habit>? _habits;
  List<Habit>? get habits => _habits;

  // loads the complete list of habits.
  late final Command0 loadHabits;

  Future<Result<void>> _load() async {
    final result = await _habitRepository.getHabitList();
    switch (result) {
      case Ok<List<Habit>>():
        _log.fine("Loaded list of habits.");
        _habits = result.value;
        notifyListeners();
      case Error<List<Habit>>():
        _log.severe("Failed to load list of habits.");
    }
    return result;
  }
}
