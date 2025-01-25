// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

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

var _tasks = [
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

class HabitsViewModel extends ChangeNotifier {
  HabitsViewModel();

  List<Task> get tasks => _tasks;
  final _log = Logger('HabitsViewModel');
}
