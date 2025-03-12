// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yume_kitai/ui/habits/view_models/habits_viewmodel.dart';

import '../../core/themes/theme_extension.dart';
import '../../core/ui/input_field.dart';

// * HabitsSheet is the page where new habits can be created
class HabitsSheet extends StatefulWidget {
  const HabitsSheet({super.key});

  @override
  State<HabitsSheet> createState() => _HabitsSheetState();
}

class _HabitsSheetState extends State<HabitsSheet> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController descController = TextEditingController();

  final TextEditingController iconController = TextEditingController();

  final TextEditingController colorController = TextEditingController();

  late final Map<String, String> habit;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    titleController.dispose();
    descController.dispose();
    iconController.dispose();
    colorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<HabitsViewModel>();
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
                          InputField(
                            label: "Title",
                            autofocus: true,
                            controller: titleController,
                          ),
                          InputField(
                            label: "Description",
                            largeFieldSize: true,
                            controller: descController,
                          ),
                          InputField(
                            label: "Icon",
                            controller: iconController,
                          ),
                          InputField(
                            label: "Color",
                            controller: colorController,
                          ),
                          TextButton(
                            onPressed: () {
                              viewModel.saveHabit.execute(
                                {
                                  'title': titleController.text,
                                  'desc': descController.text,
                                  'icon': iconController.text,
                                  'color': colorController.text
                                },
                              );
                            },
                            child: ListenableBuilder(
                                listenable: viewModel.saveHabit,
                                builder: (context, child) {
                                  if (viewModel.saveHabit.running) {
                                    return const CircularProgressIndicator();
                                  }
                                  // TODO: make an error widget
                                  if (viewModel.saveHabit.error) {
                                    return const Text("Please Try Again");
                                  }
                                  if (viewModel.saveHabit.completed) {
                                    viewModel.saveHabit.clearResult();
                                    Navigator.of(context).pop();
                                  }
                                  return const Text("Done");
                                }),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.viewInsetsOf(context).bottom + 32.0,
                          ),
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
