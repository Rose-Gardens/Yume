// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:go_router/go_router.dart';
import 'package:yume_kitai/ui/core/ui/app_shell.dart';

import '../ui/analytics/view_models/analytics_viewmodel.dart';
import '../ui/analytics/widgets/analytics_screen.dart';
import '../ui/chrono/view_models/chrono_viewmodel.dart';
import '../ui/chrono/widgets/chrono_screen.dart';
import '../ui/habits/view_models/habits_viewmodel.dart';
import '../ui/habits/widgets/habits_screen.dart';
import '../ui/settings/view_models/settings_viewmodel.dart';
import '../ui/settings/widgets/settings_screen.dart';
import '../ui/tasks/view_models/tasks_viewmodel.dart';
import '../ui/tasks/widgets/tasks_screen.dart';

import 'routes.dart';

GoRouter router() => GoRouter(
      initialLocation: Routes.chrono,
      routes: [
        ShellRoute(
          builder: (context, state, child) => AppShell(child: child),
          routes: [
            GoRoute(
              path: Routes.chrono,
              builder: (context, state) {
                return ChronoScreen(viewModel: ChronoViewModel());
              },
            ),
            GoRoute(
              path: Routes.habits,
              builder: (context, state) {
                return HabitsScreen(viewModel: HabitsViewModel());
              },
            ),
            GoRoute(
              path: Routes.analytics,
              builder: (context, state) {
                return AnalyticsScreen(viewModel: AnalyticsViewModel());
              },
            ),
            GoRoute(
              path: Routes.tasks,
              builder: (context, state) {
                return TasksScreen(viewModel: TasksViewModel());
              },
            ),
            GoRoute(
              path: Routes.settings,
              builder: (context, state) {
                return SettingsScreen(viewModel: SettingsViewModel());
              },
            ),
          ],
        ),
      ],
    );
