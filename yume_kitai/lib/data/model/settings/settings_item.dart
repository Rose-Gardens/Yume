// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class SettingsItem {
  const SettingsItem({
    required this.title,
    required this.color,
    this.icon,
    this.subtitle,
  });
  final String title;
  final Color color;
  final IconData? icon;
  final String? subtitle;
}

class SettingsGroup {
  const SettingsGroup({required this.title, required this.items});
  final String title;
  final List<SettingsItem> items;
}
