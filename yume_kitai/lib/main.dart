// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'ui/core/themes/app_theme.dart';
import 'routing/router.dart';
import 'main_development.dart' as development;

void main() {
  development.main();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Yume Kitai",
      theme: AppTheme.getDefaultTheme(),
      routerConfig: router(),
    );
  }
}

// class MainAppState extends ChangeNotifier {
//   ThemeData _currentTheme = AppTheme.getDefaultTheme();
//   ThemeData get currentTheme => _currentTheme;

//   void switchTheme(String themeName) {
//     _currentTheme = AppTheme.getTheme(themeName);
//     notifyListeners();
//   }
// }
