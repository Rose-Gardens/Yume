import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/theme_extension.dart';

class InputField extends StatelessWidget {
  final String label;
  final String? placeholder;
  final bool largeFieldSize;
  // final bool autofocus
  const InputField({
    super.key,
    this.placeholder,
    required this.label,
    this.largeFieldSize = false,
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
            return CupertinoTextField.borderless(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: theme.foregroundHigh),
              placeholder: placeholder,
              maxLines: largeFieldSize ? 5 : 1,
              decoration: BoxDecoration(
                color: theme.surfaceLow,
                borderRadius:
                    BorderRadius.circular(largeFieldSize ? 24.0 : 16.0),
                border: Border.all(color: theme.borderLow, width: 0.5),
              ),
            );
          },
        ),
      ],
    );
  }
}
