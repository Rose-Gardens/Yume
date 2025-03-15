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
  final FormFieldValidator<String>? validator;

  const InputField({
    super.key,
    this.placeholder,
    required this.label,
    this.largeFieldSize = false,
    this.autofocus = false,
    this.controller,
    this.validator,
  });

  static OutlineInputBorder baseBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(20.0));

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
        TextFormField(
          validator: validator,
          controller: controller,
          textCapitalization: TextCapitalization.words,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: theme.foregroundHigh),
          maxLines: largeFieldSize ? 5 : 1,
          autofocus: autofocus,
          cursorColor: theme.foregroundHigh,
          cursorHeight: 20,
          decoration: InputDecoration(
            errorStyle: TextStyle(color: theme.error),
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            filled: true,
            fillColor: theme.surfaceLow,
            enabledBorder: baseBorder.copyWith(
              borderSide: BorderSide(color: theme.borderLow, width: 0.5),
            ),
            focusedBorder: baseBorder.copyWith(
              borderSide: BorderSide(color: theme.borderHigh, width: 2),
            ),
            errorBorder: baseBorder.copyWith(
              borderSide: BorderSide(color: theme.error, width: 1),
            ),
            focusedErrorBorder: baseBorder.copyWith(
              borderSide: BorderSide(color: theme.error, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
