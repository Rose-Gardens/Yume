// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../core/themes/theme_extension.dart';
import '../../core/ui/input_field.dart';

class HabitsAddNew extends StatelessWidget {
  const HabitsAddNew({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: theme.surfaceOverlay),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 32.0,
          children: [
            Container(
              width: 40,
              height: 8,
              decoration: BoxDecoration(
                color: theme.borderHigh,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Text(
              "New Habit",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: theme.foregroundHigh),
            ),
            const Form(
              child: Column(
                spacing: 20.0,
                children: [
                  InputField(
                    label: "Title",
                  ),
                  InputField(
                    label: "Description",
                    largeFieldSize: true,
                  ),
                  InputField(label: "Icon"),
                  InputField(label: "Color")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
