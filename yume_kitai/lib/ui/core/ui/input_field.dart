// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../themes/theme_extension.dart';

class InputField extends StatelessWidget {
  final String label;
  final String? placeholder;
  final bool largeFieldSize;
  final bool autofocus;
  final TextEditingController? controller;

  const InputField({
    super.key,
    this.placeholder,
    required this.label,
    this.largeFieldSize = false,
    this.autofocus = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: theme.foregroundLow),
            ),
          ),
        ),
        FormField(
          builder: (FormFieldState<String> field) {
            return TextField(
              controller: controller,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: theme.foregroundHigh),
              maxLines: largeFieldSize ? 5 : 1,
              autofocus: autofocus,
              cursorColor: theme.foregroundHigh,
              cursorHeight: 20,
              decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                filled: true,
                fillColor: theme.surfaceLow,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: theme.borderLow, width: 0.5),
                  borderRadius:
                      BorderRadius.circular(largeFieldSize ? 24.0 : 20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: theme.borderHigh, width: 2),
                  borderRadius:
                      BorderRadius.circular(largeFieldSize ? 24.0 : 20.0),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
