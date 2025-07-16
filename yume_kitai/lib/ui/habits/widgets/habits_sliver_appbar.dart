// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import './delegates/habits_title_sliver_delegate.dart';

List<Widget> habitsSliverAppbar(BuildContext context) => [
  SliverPersistentHeader(delegate: HabitsTitleSliverDelegate(),)
];
