// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:yume_kitai/ui/habits/widgets/habits_add_new.dart';

import '../../../routing/routes.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarContentSize + (2 * appBarPadding)),
        child: Padding(
          padding: EdgeInsets.all(appBarPadding),
          child: AppBar(
            leadingWidth: appBarContentSize,
            leading: Image.asset(
              "assets/images/YumeLogo.png",
            ),
            // * Profile Picture
            actions: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: appBarContentSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: theme.foregroundHigh,
                      width: 2.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Java.png"),
                    radius: appBarContentSize / 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          // TODO: This should be changing by page
          showCupertinoSheet(
            context: context,
            pageBuilder: (BuildContext context) {
              return HabitsAddNew();
            },
          );
        },
        backgroundColor: theme.surfaceLow,
        foregroundColor: theme.foregroundHigh,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(color: theme.borderMedium)),
        child: const Icon(Icons.add_rounded),
      ),
      body: Builder(
        builder: (context) {
          return Column(
            children: [
              Expanded(child: child),
            ],
          );
        },
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
              icon: const Icon(
                Icons.schedule_rounded,
              ),
              label: 'Chrono'),
          NavigationDestination(
              icon: const Icon(Icons.dashboard_rounded), label: 'Habits'),
          NavigationDestination(
              icon: const Icon(Icons.area_chart_rounded), label: 'Analytics'),
          NavigationDestination(
              icon: const Icon(Icons.add_task_rounded), label: 'Tasks'),
        ],
        selectedIndex: _getSelectedIndex(context),
        onDestinationSelected: (index) {
          _onTabSelected(context, index);
        },
      ),
    );
  }

  int _getSelectedIndex(BuildContext context) {
    final location =
        GoRouter.of(context).routeInformationProvider.value.uri.toString();
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

  void _onTabSelected(BuildContext context, index) {
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
