// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import "package:flutter/material.dart";

import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import 'config/dependencies.dart';
import 'main.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    final time = record.time.toLocal();
    final level = record.level.name;
    final loggerName = record.loggerName;
    final message = record.message;
    String color = '';
    // Adding different colors to log statements
    switch (level) {
      case 'WARNING':
        color = '\x1B[33m'; // yellow
      case 'SEVERE':
        color = '\x1B[31m'; // red
      case 'FINE':
      case 'FINER':
      case 'FINEST':
        color = '\x1B[32m'; // green
      case 'INFO':
        color = '\x1B[36m'; // cyan
      default:
        color = '\x1B[37m'; // white
    }
    debugPrint(
      '$color[$time] [level: $level] [from: $loggerName]: $message\x1B[0m',
    );
  });

  runApp(MultiProvider(providers: providersLocal, child: const MainApp()));
}
