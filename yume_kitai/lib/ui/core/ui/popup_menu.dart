import 'package:flutter/material.dart';
import 'package:yume_kitai/ui/core/ui/blur_saturate_filter.dart';

import '../themes/theme_extension.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key});

  @override
  State<PopupMenu> createState() => PopupMenuState();
}

class PopupMenuState extends State<PopupMenu>
    with SingleTickerProviderStateMixin {
  OverlayEntry? _overlayEntry;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    super.initState();
  }

  void showOverlay(Offset globalPos) {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }

    // > Part of showOverlay
    _overlayEntry = OverlayEntry(
      builder: (context) {
        final theme = Theme.of(context).extension<AppThemeExtension>()!;
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              ModalBarrier(
                onDismiss: () {
                  _hideOverlay();
                },
              ),
              Positioned(
                top: globalPos.dy,
                left: globalPos.dx,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: BackdropFilter(
                    filter: blurSaturateFilter,
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          color: theme.surfaceOverlay.withValues(alpha: 0.25)),
                      child: const Text("HIIIIIIIIIIIIIIIII"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
