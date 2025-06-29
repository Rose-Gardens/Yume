// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../../habits/widgets/habits_create_sheet.dart';
import '../themes/theme_extension.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.child});

  final Widget child;
  static const double appBarContentSize = 40.0;
  static const double appBarPadding = 16.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          // TODO: This should be changing by page
          showModalBottomSheet(
            isScrollControlled: true,
            useSafeArea: true,
            barrierColor: Colors.black87,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return const HabitsCreateSheet();
            },
          );
        },
        backgroundColor: theme.surfaceLow,
        foregroundColor: theme.foregroundHigh,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: BorderSide(color: theme.borderMedium),
        ),
        child: const Icon(Icons.add_rounded),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Dust.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox.expand(
            child: DecoratedBox(
              decoration: BoxDecoration(color: Color.fromARGB(85, 0, 0, 0)),
            ),
          ),
          Builder(
            builder: (context) {
              return SafeArea(child: SizedBox.expand(child: child));
            },
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.schedule_rounded),
            label: 'Chrono',
          ),
          NavigationDestination(
            icon: Icon(Icons.dashboard_rounded),
            label: 'Habits',
          ),
          NavigationDestination(
            icon: Icon(Icons.area_chart_rounded),
            label: 'Analytics',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_task_rounded),
            label: 'Tasks',
          ),
        ],
        selectedIndex: _getSelectedIndex(context),
        onDestinationSelected: (index) {
          _onTabSelected(context, index);
        },
      ),
    );
  }

  int _getSelectedIndex(BuildContext context) {
    final location = GoRouter.of(
      context,
    ).routeInformationProvider.value.uri.toString();
    switch (location) {
      case Routes.chrono:
        return 0;
      case Routes.habits:
        return 1;
      case Routes.analytics:
        return 2;
      case Routes.tasks:
        return 3;
      case Routes.settings:
        return 4;
      default:
        return 0;
    }
  }

  void _onTabSelected(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(Routes.chrono);
      case 1:
        context.go(Routes.habits);
      case 2:
        context.go(Routes.analytics);
      case 3:
        context.go(Routes.tasks);
      case 4:
        context.go(Routes.settings);
    }
  }
}
