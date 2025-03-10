// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../core/themes/theme_extension.dart';
import '../../core/ui/input_field.dart';

// * HabitsSheet is the page where new habits can be created
class HabitsSheet extends StatelessWidget {
  const HabitsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    return Container(
      margin: const EdgeInsets.only(top: 32),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: theme.surfaceOverlay,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 32,
          children: [
            Container(
              width: 40,
              height: 8,
              decoration: BoxDecoration(
                color: theme.borderHigh,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Create Habit",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: theme.foregroundHigh),
                    ),
                    Form(
                      child: Column(
                        spacing: 20,
                        children: [
                          const InputField(
                            label: "Title",
                            autofocus: true,
                          ),
                          const InputField(
                            label: "Description",
                            largeFieldSize: true,
                          ),
                          const InputField(label: "Icon"),
                          const InputField(label: "Color"),
                          TextButton(
                            onPressed: () {
                              return;
                            },
                            child: const Text("Done"),
                          ),
                          SizedBox(height: MediaQuery.of(context).viewInsets.bottom + 32.0)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
