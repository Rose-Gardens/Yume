// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:yume_kitai/data/model/settings/settings_item.dart';
import 'package:yume_kitai/ui/settings/data/settings_data.dart';

class SettingsViewModel extends ChangeNotifier {
  SettingsViewModel();

  final _log = Logger('SettingsViewModel');
  final List<SettingsGroup> settingsGroups = settingsData;
}
