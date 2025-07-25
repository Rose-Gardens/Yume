// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:yume_kitai/ui/core/ui/blur_saturate_filter.dart';
import 'package:yume_kitai/ui/core/ui/popup_menu/popup_menu_item_tile.dart';

import '../../themes/theme_extension.dart';

class PopupMenuContent extends StatefulWidget {
  const PopupMenuContent({
    super.key,
    required this.globalPos,
    required this.menuData,
    required this.menuHeight,
    required this.theme,
    required GlobalKey menuKey,
    required AnimationController animationController,
  }) : _animationController = animationController,
       _menuKey = menuKey;

  final Offset globalPos;
  final GlobalKey _menuKey;
  final double? menuHeight;
  final AppThemeExtension theme;
  final AnimationController _animationController;
  final List<({String title, IconData icon, bool isDanger})> menuData;

  @override
  State<PopupMenuContent> createState() => _PopupMenuContentState();
}

class _PopupMenuContentState extends State<PopupMenuContent> {
  static const double menuWidth = 175;
  static const Duration animationDuration = Duration(milliseconds: 350);
  static const BorderRadius menuBorderRadius = BorderRadius.all(
    Radius.circular(16.0),
  );
  
  late final double topPosition = widget.globalPos.dy - 50;
  late final double leftPosition = widget.globalPos.dx - 50;
  // > Adding in 1 so that the entire rowHeight is one index
  late final double rowHeight =
      (widget.menuHeight! / widget.menuData.length) + 1;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition,
      left: leftPosition,
      child:
          ClipRRect(
                borderRadius: menuBorderRadius,
                child: BackdropFilter(
                  filter: blurSaturateFilterPerformance,
                  child: GestureDetector(
                    onPanUpdate: (details) {
                      final dx = details.localPosition.dx;
                      final dy = details.localPosition.dy;

                      if (dx >= 0 && dx <= menuWidth) {
                        int? index = (dy / rowHeight).floor();
                        if (dy < 0 || dy > widget.menuHeight!) {
                          index = null;
                        }
                        if (selectedIndex != index) {
                          HapticFeedback.selectionClick();
                        }
                        setState(() {
                          selectedIndex = index;
                        });
                      } else {
                        setState(() {
                          selectedIndex = null;
                        });
                      }
                    },
                    onPanEnd: (details) => setState(() {
                      selectedIndex = null;
                    }),
                    child: Container(
                      key: widget._menuKey,
                      width: menuWidth,
                      decoration: BoxDecoration(
                        color: widget.theme.surfaceOverlay.withValues(alpha: 0.6),
                        borderRadius: menuBorderRadius,
                        border: Border.all(color: widget.theme.borderMedium),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (
                            int index = 0;
                            index < widget.menuData.length;
                            index++
                          ) ...[
                            PopupMenuItemTile(
                              menuItem: widget.menuData[index],
                              isDanger: widget.menuData[index].isDanger,
                              currentIndex: index,
                              selectedIndex: selectedIndex,
                              theme: widget.theme,
                            ),
                            if (index != widget.menuData.length - 1)
                              Divider(
                                indent: 12,
                                endIndent: 12,
                                height: 0,
                                thickness: 0,
                                color: widget.theme.foregroundVeryLow,
                              ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .animate(controller: widget._animationController)
              .fadeIn(
                duration: animationDuration,
                curve: Curves.easeOutQuint,
                begin: 0,
              )
              .scale(
                duration: animationDuration,
                curve: Curves.easeOutBack,
                begin: const Offset(0.6, 0.6),
              ),
    );
  }
}
