import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:yume_kitai/ui/core/ui/blur_saturate_filter.dart';
import 'package:yume_kitai/ui/core/ui/popup_menu/popup_menu_item_tile.dart';

import '../../themes/theme_extension.dart';

class PopupMenuContent extends StatelessWidget {
  const PopupMenuContent({
    super.key,
    required this.theme,
    required this.globalPos,
    required this.menuData,
    required AnimationController animationController,
  }) : _animationController = animationController;

  final AppThemeExtension theme;
  final Offset globalPos;
  final List<({String title, IconData icon, bool isDanger})> menuData;
  final AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: globalPos.dy - 50,
      left: globalPos.dx - 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: BackdropFilter(
          filter: blurSaturateFilterPerformance,
          child: Container(
            width: 175,
            decoration: BoxDecoration(
              color: theme.surfaceOverlay.withValues(alpha: 0.8),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: menuData.length,
              separatorBuilder: (BuildContext context, int index) => Divider(
                height: 1,
                thickness: 1,
                color: theme.surfaceMedium,
              ),
              itemBuilder: (BuildContext context, int index) {
                final menuItem = menuData[index];
                final textColor =
                    menuItem.isDanger ? theme.danger : theme.foregroundBright;
                return PopupMenuItemTile(
                  menuItem: menuItem,
                  textColor: textColor,
                );
              },
            ),
          ),
        ),
      )
          .animate(
            controller: _animationController,
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
