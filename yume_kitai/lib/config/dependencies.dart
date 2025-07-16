// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../data/repositories/habit/habit_repository.dart';
import '../data/repositories/habit/habit_repository_local.dart';
import '../data/services/local/local_data_service.dart';
import '../ui/core/ui/popup_menu/popup_menu.dart';
import '../ui/habits/view_models/habits_viewmodel.dart';

final GlobalKey<PopupMenuState> overlayKey = GlobalKey<PopupMenuState>();

/// Configure dependencies for remote data.
/// This dependency list uses repositories that connect to a remote server.
List<SingleChildWidget> get providersRemote {
  return [Provider(create: (context) {})];
}

/// Configure dependencies for local data.
/// This dependency list uses repositories that provide local data.
List<SingleChildWidget> get providersLocal {
  return [
    Provider.value(value: LocalDataService()),
    Provider(
      create: (context) =>
          HabitRepositoryLocal(localDataService: context.read())
              as HabitRepository,
    ),
    ChangeNotifierProvider<HabitsViewModel>(
      create: (context) => HabitsViewModel(habitRepository: context.read()),
    ),
    Provider<GlobalKey<PopupMenuState>>.value(value: overlayKey),
  ];
}
