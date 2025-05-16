import 'package:flutter/material.dart';

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
    required GlobalKey menuKey,
    required AnimationController animationController,
  })  : _animationController = animationController,
        _menuKey = menuKey;

  final Offset globalPos;
  final GlobalKey _menuKey;
  final double? menuHeight;
  final AnimationController _animationController;
  final List<({String title, IconData icon, bool isDanger})> menuData;

  @override
  State<PopupMenuContent> createState() => _PopupMenuContentState();
}

class _PopupMenuContentState extends State<PopupMenuContent> {
  static const double menuWidth = 175;
  double get topPosition => widget.globalPos.dy - 50;
  double get leftPosition => widget.globalPos.dx - 50;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    return Positioned(
      top: topPosition,
      left: leftPosition,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: BackdropFilter(
          filter: blurSaturateFilterPerformance,
          child: GestureDetector(
            onPanUpdate: (details) {
              if (details.localPosition.dx >= 0 &&
                  details.localPosition.dx <= menuWidth) {
                if (details.localPosition.dy >= 0 &&
                    details.localPosition.dy <=
                        ((widget.menuHeight! - 5) / 6)) {
                  setState(() {
                    selectedIndex = 0;
                  });
                }
              }
            },
            child: Container(
              key: widget._menuKey,
              width: menuWidth,
              decoration: BoxDecoration(
                color: theme.surfaceOverlay.withValues(alpha: 0.8),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: widget.menuData.length,
                separatorBuilder: (BuildContext context, int index) => Divider(
                  height: 1,
                  thickness: 1,
                  color: theme.surfaceMedium,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final menuItem = widget.menuData[index];
                  final textColor = menuItem.isDanger
                      ? theme.danger
                      : theme.foregroundBright;
                  return PopupMenuItemTile(
                    menuItem: menuItem,
                    textColor: textColor,
                    currentIndex: index,
                    selectedIndex: selectedIndex,
                  );
                },
              ),
            ),
          ),
        ),
      )
          .animate(
            controller: widget._animationController,
          )
          .fadeIn(
            duration: 300.ms,
            curve: Curves.easeOutQuint,
            begin: 0,
          )
          .scale(
            duration: 300.ms,
            curve: Curves.easeOutBack,
            begin: const Offset(0.6, 0.6),
          ),
    );
  }
}
