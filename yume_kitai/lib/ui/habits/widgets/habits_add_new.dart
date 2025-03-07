import 'package:flutter/material.dart';
import '../../core/ui/input_field.dart';

import '../../core/themes/theme_extension.dart';

class HabitsAddNew extends StatelessWidget {
  const HabitsAddNew({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    return Container(
      color: theme.surfaceOverlay,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 36.0,
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
            Form(
              child: Column(
                children: [
                  InputField(
                    label: "Text",
                    largeFieldSize: false,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
