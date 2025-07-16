// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../themes/theme_extension.dart';

import 'popup_menu_content.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key});

  @override
  State<PopupMenu> createState() => PopupMenuState();
}

class PopupMenuState extends State<PopupMenu>
    with SingleTickerProviderStateMixin {
  OverlayEntry? _overlayEntry;
  double? menuHeight;
  final GlobalKey _menuKey = GlobalKey();
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      reverseDuration: const Duration(milliseconds: 150),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void showOverlay(
    Offset globalPos,
    List<({String title, IconData icon, bool isDanger})> menuData,
  ) {
    _hideOverlay(); // ? Avoids multiple overlays

    // ? Gets the menuHeight, then caches it
    if (menuHeight == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final box = _menuKey.currentContext!.findRenderObject() as RenderBox;
        menuHeight = box.size.height;
        // ? Rebuilds menuContent with non-null height
        _overlayEntry?.markNeedsBuild();
      });
    }

    // > Part of showOverlay
    _overlayEntry = OverlayEntry(
      builder: (context) {
        final theme = Theme.of(context).extension<AppThemeExtension>()!;

        return Stack(
          children: [
            ModalBarrier(
              color: theme.overlayVeryLow,
              onDismiss: () {
                _hideOverlay();
              },
            ),
            PopupMenuContent(
              animationController: _animationController,
              menuKey: _menuKey,
              menuHeight: menuHeight,
              globalPos: globalPos,
              menuData: menuData,
            ),
          ],
        );
      },
    );
    // ? Opens overlay, always above appshell
    Navigator.of(context, rootNavigator: true).overlay!.insert(_overlayEntry!);
  }

  void _hideOverlay() {
    if (_overlayEntry != null) {
      _animationController.reverse().whenCompleteOrCancel(() {
        _overlayEntry!.remove();
        _overlayEntry = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
