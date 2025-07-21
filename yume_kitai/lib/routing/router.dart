// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/analytics/view_models/analytics_viewmodel.dart';
import '../ui/analytics/widgets/analytics_screen.dart';
import '../ui/chrono/view_models/chrono_viewmodel.dart';
import '../ui/chrono/widgets/chrono_screen.dart';
import '../ui/core/ui/app_shell.dart';
import '../ui/habits/widgets/habits_screen.dart';
import '../ui/settings/view_models/settings_viewmodel.dart';
import '../ui/settings/widgets/settings_screen.dart';
import '../ui/tasks/view_models/tasks_viewmodel.dart';
import '../ui/tasks/widgets/tasks_screen.dart';

import 'routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorChronoKey = GlobalKey<NavigatorState>(
  debugLabel: "Chrono Page",
);
final _shellNavigatorHabitsKey = GlobalKey<NavigatorState>(
  debugLabel: "Habits Page",
);
final _shellNavigatorAnalyticsKey = GlobalKey<NavigatorState>(
  debugLabel: "Analytics Page",
);
final _shellNavigatorTasksKey = GlobalKey<NavigatorState>(
  debugLabel: "Tasks Page",
);
final _shellNavigatorSettingsKey = GlobalKey<NavigatorState>(
  debugLabel: "Settings Page",
);

final GoRouter router = GoRouter(
  initialLocation: Routes.settings, // TODO fix to chrono
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, child) => AppShell(child: child),
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorChronoKey,
          routes: [
            GoRoute(
              path: Routes.chrono,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: ChronoScreen(viewModel: ChronoViewModel()),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHabitsKey,
          routes: [
            GoRoute(
              path: Routes.habits,
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: HabitsScreen());
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAnalyticsKey,
          routes: [
            GoRoute(
              path: Routes.analytics,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: AnalyticsScreen(viewModel: AnalyticsViewModel()),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorTasksKey,
          routes: [
            GoRoute(
              path: Routes.tasks,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: TasksScreen(viewModel: TasksViewModel()),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorSettingsKey,
          routes: [
            GoRoute(
              path: Routes.settings,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: SettingsScreen(viewModel: SettingsViewModel()),
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
