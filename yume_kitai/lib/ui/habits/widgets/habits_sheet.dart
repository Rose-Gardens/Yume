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
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _iconController = TextEditingController();
  final TextEditingController _colorController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late final Map<String, String> habit;

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    _iconController.dispose();
    _colorController.dispose();
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
                      key: _formKey,
                      child: Column(
                        spacing: 20,
                        children: [
                          InputField(
                            label: "Title",
                            autofocus: true,
                            controller: _titleController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a title.';
                              } else if (value.length > 50) {
                                return 'Title is longer than 50 characters.';
                              }
                              return null;
                            },
                          ),
                          InputField(
                            label: "Description",
                            largeFieldSize: true,
                            controller: _descController,
                          ),
                          InputField(
                            label: "Icon",
                            controller: _iconController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return null;
                              }
                              else if (value.length != 4) {
                                return 'Icon value should be 4 characters.';
                              }
                              else if (int.tryParse(value, radix: 16) == null) {
                                return 'Icon value is not a valid hexadecimal.';
                              }
                              return null;
                            },
                          ),
                          InputField(
                            label: "Color",
                            controller: _colorController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return null;
                              }
                              else if (value.length != 8) {
                                return 'Color value should be 8 characters.';
                              }
                              else if (int.tryParse(value, radix: 16) == null) {
                                return 'Color value is not a valid hexadecimal.';
                              }
                              return null;
                            },
                          ),
                          TextButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                viewModel.saveHabit.execute(
                                  {
                                    'title': _titleController.text,
                                    'desc': _descController.text,
                                    'icon': _iconController.text,
                                    'color': _colorController.text
                                  },
                                );
                                
                                // TODO: This is not pretty
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Success!'),
                                  ),
                                );
                              }
                            },
                            child: ListenableBuilder(
                                listenable: viewModel.saveHabit,
                                builder: (context, child) {
                                  if (viewModel.saveHabit.running) {
                                    return const CircularProgressIndicator();
                                  }
                                  // TODO: make an error widget neat snackbar
                                  if (viewModel.saveHabit.error) {
                                    viewModel.saveHabit.clearResult();
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
