// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../habits_card_style.dart';

class HabitsCardIcon extends StatelessWidget {
  const HabitsCardIcon({super.key, required this.style});

  final HabitsCardStyle style;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: style.cardColor,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        style.iconWidget,
      ],
    );
  }
}
