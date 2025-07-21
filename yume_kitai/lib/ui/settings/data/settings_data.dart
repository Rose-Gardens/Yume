// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:yume_kitai/data/model/settings/settings_item.dart';

const settingsData = <SettingsGroup>[
  SettingsGroup(
    title: "Yume",
    items: [SettingsItem(title: "Yume plus", color: Color(0xFFBB266E))],
  ),
  SettingsGroup(
    title: "Account",
    items: [
      SettingsItem(
        title: "Login",
        color: Color(0xFFA33ACD),
        icon: SFIcons.sf_person_crop_circle,
      ),
    ],
  ),
  SettingsGroup(
    title: "Appearance",
    items: [
      SettingsItem(
        title: "Appearance",
        color: Color(0xFFA33ACD),
        icon: SFIcons.sf_paintpalette_fill,
      ),
    ],
  ),
  SettingsGroup(
    title: "Page Settings",
    items: [
      SettingsItem(
        title: "Chrono",
        color: Color(0xFF277DD9),
        icon: SFIcons.sf_timelapse,
      ),
      SettingsItem(
        title: "Habits",
        color: Color(0xFFD6912B),
        icon: SFIcons.sf_square_3_layers_3d_down_right,
      ),
      SettingsItem(
        title: "Analytics",
        color: Color(0xFF1E9C41),
        icon: SFIcons.sf_chart_bar_xaxis,
      ),
    ],
  ),
  SettingsGroup(
    title: "Data & Backup",
    items: [
      SettingsItem(
        title: "Backup",
        color: Color(0xFF0C6043),
        icon: SFIcons.sf_externaldrive_badge_timemachine,
      ),
      SettingsItem(
        title: "Archive",
        color: Color(0xFF247685),
        icon: SFIcons.sf_archivebox_circle,
      ),
    ],
  ),
  SettingsGroup(
    title: "Support",
    items: [
      SettingsItem(
        title: "Feedback Report",
        color: Color(0xFFA35D1D),
        icon: SFIcons.sf_bubble_left_and_bubble_right,
      ),
      SettingsItem(title: "Follow on BlueSky", color: Color(0xFF1185FE)),
      SettingsItem(
        title: "Support Me",
        color: Color(0xFF9C1E61),
        icon: SFIcons.sf_suit_heart_fill,
      ),
    ],
  ),
  SettingsGroup(
    title: "Legal",
    items: [
      SettingsItem(
        title: "Privacy Policy",
        color: Color(0xFF424242),
        icon: SFIcons.sf_lock_circle_dotted,
      ),
      SettingsItem(
        title: "Terms of Use",
        color: Color(0xFF424242),
        icon: SFIcons.sf_doc_text,
      ),
    ],
  ),
  SettingsGroup(
    title: "About",
    items: [
      SettingsItem(
        title: "About Yume",
        color: Color(0xFF2F446E),
        icon: SFIcons.sf_info_circle,
      ),
    ],
  ),
];
