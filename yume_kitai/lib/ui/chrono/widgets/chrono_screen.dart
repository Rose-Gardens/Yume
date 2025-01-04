// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../view_models/chrono_viewmodel.dart';

class ChronoScreen extends StatefulWidget {
  const ChronoScreen({super.key, required this.viewModel});

  final ChronoViewModel viewModel;

  @override
  State<ChronoScreen> createState() => _ChronoScreenState();
}

class _ChronoScreenState extends State<ChronoScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}