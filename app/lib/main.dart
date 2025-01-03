// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'ui/core/themes/app_theme.dart';
import 'routing/router.dart';
import 'main_development.dart' as development;

// import 'package:provider/provider.dart';
// import 'package:smooth_corner/smooth_corner.dart';
// import 'ui/core/themes/theme_extension.dart';

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
      // routerConfig: router(context.read()),
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    Widget page;
    switch (selectedIndex) {
      case 0:
        page = CardPage();
      case 1:
        page = Placeholder();
      case 2:
        page = Placeholder();
      case 3:
        page = Placeholder();
      default:
        throw UnimplementedError("Page does not exist.");
    }

    return Scaffold(
      body: Builder(
        builder: (context) {
          return Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AppBar(
                    leadingWidth: 48,
                    leading: Image.asset(
                      "assets/images/YumeLogo.png",
                    ),
                    // * Profile Picture
                    actions: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: theme.foregroundHigh,
                              width: 2.0,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/Java.png"),
                            radius: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(child: page),
              SafeArea(
                child: NavigationBar(
                  destinations: [
                    NavigationDestination(
                        icon: Icon(
                          Icons.schedule_rounded,
                        ),
                        label: 'Chrono'),
                    NavigationDestination(
                        icon: Icon(Icons.dashboard_rounded), label: 'Habits'),
                    NavigationDestination(
                        icon: Icon(Icons.area_chart_rounded),
                        label: 'Analytics'),
                    NavigationDestination(
                        icon: Icon(Icons.add_task_rounded), label: 'Tasks'),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(
                      () {
                        selectedIndex = value;
                      },
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<MainAppState>();
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
