import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      reverseDuration: const Duration(milliseconds: 150),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void showOverlay(Offset globalPos) {
    _hideOverlay(); // ? Avoids multiple overlays (I assume)

    // > Part of showOverlay
    _overlayEntry = OverlayEntry(
      builder: (context) {
        final theme = Theme.of(context).extension<AppThemeExtension>()!;
        final screenSize = MediaQuery.of(context).size;

        return SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: Stack(
            children: [
              ModalBarrier(
                onDismiss: () {
                  _hideOverlay();
                },
              ),
              Positioned(
                top: globalPos.dy - 50,
                left: globalPos.dx - 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: BackdropFilter(
                    filter: blurSaturateFilterPerformance,
                    child: Container(
                      width: 0.4 * screenSize.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                          color: theme.surfaceOverlay.withValues(alpha: 0.6)),
                      child: const Column(
                        spacing: 16,
                        // TODO: MAKE FUNCTIONAL
                        children: [
                          Row(
                            children: [
                              Text("Complete"),
                              Spacer(),
                              Icon(Icons.check_circle_outline_outlined)
                            ],
                          ),
                          Row(
                            children: [
                              Text("Skip"),
                              Spacer(),
                              Icon(Icons.skip_next_outlined)
                            ],
                          ),
                          Row(
                            children: [
                              Text("Vacation"),
                              Spacer(),
                              Icon(Icons.houseboat_outlined)
                            ],
                          ),
                          Row(
                            children: [
                              Text("Set Tag"),
                              Spacer(),
                              Icon(Icons.sell_outlined)
                            ],
                          ),
                          Row(
                            children: [
                              Text("Retire"),
                              Spacer(),
                              Icon(Icons.exit_to_app_rounded)
                            ],
                          ),
                          Row(
                            children: [
                              Text("Delete"),
                              Spacer(),
                              Icon(Icons.delete_outline_rounded)
                            ],
                          ),
                        ],
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
      _animationController.reverse().whenCompleteOrCancel(
        () {
          _overlayEntry!.remove();
          _overlayEntry = null;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
