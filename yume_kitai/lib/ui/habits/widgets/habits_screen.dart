// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../view_models/habits_viewmodel.dart';
import '../../core/themes/theme_extension.dart';
import 'package:smooth_corner/smooth_corner.dart';

class Task {
  final String title;
  final String desc;
  final IconData icon;
  final Color colors;

  Task(
      {required this.title,
      required this.desc,
      required this.icon,
      required this.colors});
}

var tasks = [
  Task(
      title: 'Do 15 Leetcode questions and then read the solution',
      desc: '3 times a week',
      icon: Icons.code,
      colors: Color(0xFFA44195)),
  Task(
      title: 'Run 5km a day',
      desc: '4 times a week',
      icon: Icons.directions_run,
      colors: Color(0xFFC5605F)),
  Task(
      title: 'Drink Water',
      desc: 'Everyday',
      icon: Icons.local_drink,
      colors: Color(0xFF7860C9)),
  Task(
      title: 'Meditate for 10 minutes',
      desc: 'Daily',
      icon: Icons.self_improvement,
      colors: Color(0xFF3AAD73)),
  Task(
      title: 'Read 20 pages of a book',
      desc: '3 times a week',
      icon: Icons.menu_book,
      colors: Color(0xFF4197A4)),
  Task(
      title: 'Write in a journal',
      desc: '5 times a week',
      icon: Icons.edit_note,
      colors: Color(0xFFC5BB5F)),
  Task(
      title: 'Cook a healthy meal',
      desc: '3 times a week',
      icon: Icons.restaurant,
      colors: Color(0xFFC5605F)),
  Task(
      title: 'Practice guitar for 30 mins',
      desc: '4 times a week',
      icon: Icons.music_note,
      colors: Color(0xFF316DD6)),
  Task(
      title: 'Walk 10,000 steps',
      desc: 'Daily',
      icon: Icons.directions_walk,
      colors: Color(0xFFA44195)),
  Task(
      title: 'Declutter your workspace',
      desc: 'Once a week',
      icon: Icons.cleaning_services,
      colors: Color(0xFFC5605F)),
  Task(
      title: 'Call a friend or family',
      desc: 'Twice a week',
      icon: Icons.phone,
      colors: Color(0xFF7860C9)),
  Task(
      title: 'Learn a new programming concept',
      desc: '2 times a week',
      icon: Icons.computer,
      colors: Color(0xFF3AAD73)),
];

class HabitsScreen extends StatefulWidget {
  const HabitsScreen({super.key, required this.viewModel});

  final HabitsViewModel viewModel;

  @override
  State<HabitsScreen> createState() => _HabitsScreenState();
}

class _HabitsScreenState extends State<HabitsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          for (var task in tasks)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: BigCard(
                title: task.title,
                desc: task.desc,
                habitIcon: task.icon,
                colors: task.colors,
              ),
            )
        ],
      ),
    );
  }
}

class BigCard extends StatefulWidget {
  const BigCard(
      {super.key,
      required this.title,
      required this.desc,
      required this.habitIcon,
      required this.colors});

  final String? title;
  final String? desc;
  final IconData? habitIcon;
  final Color? colors;

  @override
  State<BigCard> createState() => _BigCardState();
}

class _BigCardState extends State<BigCard> {
  bool isChecked = false;

  // * This is dynamic height finding, but causes extra re-renders.
  // final GlobalKey _cardKey = GlobalKey(); // Step 1: Add a GlobalKey
  // double _calculatedHeight = 0.0; // To store the height of the card

  // @override
  // void initState() {
  //   super.initState();

  //   // Step 2: Use addPostFrameCallback to calculate the height after rendering
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     final contextSize = _cardKey.currentContext?.size; // Get the size
  //     if (contextSize != null) {
  //       setState(() {
  //         _calculatedHeight = contextSize.height; // Save the height
  //       });
  //     }
  //   });
  // }

  // double calcBorderRadius(height) {
  // const double baseBorderRadius = 20.0;
  // const double scalingFactor = 0.08;
  // return baseBorderRadius + (scalingFactor * height);
  // }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    IconData? icon;
    Color color;
    double opacityLevel = 0;

    if (isChecked) {
      icon = Icons.check_rounded;
      color = theme.surfaceMedium;
      opacityLevel = 1;
    } else {
      icon = null;
      color = theme.surfaceLow;
      opacityLevel = 0;
    }

    // * garbage method to detect large boxes
    final isTextTooLong = (widget.title?.length ?? 0) > 23;
    final double newBorderRadius = isTextTooLong ? 32 : 28;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Card(
          // key: _cardKey,
          margin: EdgeInsets.zero,
          shape: SmoothRectangleBorder(
            borderRadius: BorderRadius.circular(newBorderRadius),
            smoothness: 0.6,
            side: BorderSide(
              color: theme.borderLow,
              width: 0.5,
            ),
          ),
          color: widget.colors!.withValues(alpha: 0.4),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              children: [
                Icon(widget.habitIcon,
                    size: 36, color: widget.colors!.withValues(alpha: 0.85)),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.title}',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: theme.foregroundHigh),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${widget.desc}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: theme.foregroundLow),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                IconButton(
                  color: theme.foregroundMedium,
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    size: 36,
                  ),
                ),
                GestureDetector(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: color,
                    ),
                    child: AnimatedOpacity(
                      opacity: opacityLevel,
                      duration: Duration(milliseconds: 100),
                      child: Icon(
                        icon,
                        color: theme.foregroundHigh,
                        size: 36,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(
                      () {
                        isChecked = !isChecked;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
