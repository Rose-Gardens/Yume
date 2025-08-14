// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'sliver_appbar_delegate.dart';

class SliverAppbarContentList extends StatefulWidget {
  const SliverAppbarContentList({super.key, required this.delegate});

  final SliverChildDelegate delegate;

  @override
  State<SliverAppbarContentList> createState() =>
      _SliverAppbarContentListState();
}

class _SliverAppbarContentListState extends State<SliverAppbarContentList>
    with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController;
  final double _minHeight = 0, _maxHeight = 220;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  bool _onScrollEnd(ScrollNotification notification) {
    if (notification is ScrollEndNotification) {
      final ScrollDirection scrollDirection =
          _scrollController.position.userScrollDirection;
      final double offset = _scrollController.offset;
      final double range = _maxHeight - _minHeight;
      final bool betweenRange = offset > 0 && offset < range;
      if (betweenRange && scrollDirection != ScrollDirection.idle) {
        // > controller can only animate to when scroll cond.
        // > is in idle state, which ScrEndNotif is not.
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // * Whether this [State] object is currently in a tree.
          if (mounted) {
            // * Scrolling up is "reverse"
            double snap = 0;
            if (scrollDirection == ScrollDirection.idle) {
              return;
            } else if (scrollDirection == ScrollDirection.forward) {
              snap = _minHeight;
            } else if (scrollDirection == ScrollDirection.reverse) {
              snap = range;
            }
            _scrollController.animateTo(
              snap,
              // TODO: tweak the duration and curve
              // /> Also its not nearly as smooth as it should be
              // /> See Samsung
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
            );
          }
        });
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    // > The earliest place I could add BackdropGroup
    // > for the SliverList content.
    return BackdropGroup(
      child: NotificationListener<ScrollNotification>(
        onNotification: _onScrollEnd,
        child: CustomScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            SliverPersistentHeader(
              delegate: SliverAppbarDelegate(
                minHeight: _minHeight,
                maxHeight: _maxHeight,
              ),
            ),
            SliverPadding(
              // TODO: Make this a hoisted variable
              padding: const EdgeInsets.all(16.0),
              sliver: SliverList(delegate: widget.delegate),
            ),
          ],
        ),
      ),
    );
  }
}
