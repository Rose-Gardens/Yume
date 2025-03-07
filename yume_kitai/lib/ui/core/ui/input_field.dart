import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/theme_extension.dart';

class InputField extends StatelessWidget {
  final String label;
  final String? placeholder;
  final bool largeFieldSize;
  const InputField({
    super.key,
    this.placeholder,
    required this.label,
    required this.largeFieldSize,
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
        CupertinoTextFormFieldRow(
          padding: EdgeInsets.zero,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: theme.foregroundHigh),
          placeholder: placeholder,
          decoration: BoxDecoration(
            color: theme.surfaceLow,
            borderRadius: BorderRadius.circular(largeFieldSize ? 16.0 : 12.0),
            border: Border.all(color: theme.borderLow, width: 0.5),
          ),
        ),
      ],
    );
  }
}
