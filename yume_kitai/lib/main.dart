// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'main_development.dart' as development;
import 'routing/router.dart';
import 'ui/core/themes/app_theme.dart';

void main() {
  // to load assets
  WidgetsFlutterBinding.ensureInitialized();
  development.main();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      title: "Yume Kitai",
      theme: AppTheme.getDefaultTheme(),
      routerConfig: router,
    );
  }
}

// TODO: change "theme: AppTheme.getDefaultTheme()" above based on user preference
// class MainAppState extends ChangeNotifier {
//   ThemeData _currentTheme = AppTheme.getDefaultTheme();
//   ThemeData get currentTheme => _currentTheme;

//   void switchTheme(String themeName) {
//     _currentTheme = AppTheme.getTheme(themeName);
//     notifyListeners();
//   }
// }
