// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:yume_kitai/ui/core/ui/sliver_appbar/sliver_appbar.dart';
import 'package:yume_kitai/ui/settings/widgets/settings_content.dart';

import '../../core/themes/theme_extension.dart';
import '../view_models/settings_viewmodel.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key, required this.viewModel});

  final SettingsViewModel viewModel;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    final baseTheme = Theme.of(context);
    final theme = baseTheme.extension<AppThemeExtension>()!;
    // TODO: maybe context.select would be better when dynamic login field
    final settingsGroups = widget.viewModel.settingsGroups;

    return ColoredBox(
      color: theme.overlayHigh,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          ...sliverAppbar(context),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final settingsGroup = settingsGroups[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: SettingsContent(
                    isYume: settingsGroup.title == "Yume",
                    settingsGroup: settingsGroup,
                    baseTheme: baseTheme,
                  ),
                );
              }, childCount: settingsGroups.length),
            ),
          ),
        ],
      ),
    );
  }
}
