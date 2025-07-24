// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';

class SmoothGradientRectangleBorder extends SmoothRectangleBorder {
  const SmoothGradientRectangleBorder({
    required this.gradient,
    super.smoothness = 0.0,
    super.borderRadius = BorderRadius.zero,
    super.side = BorderSide.none,
  });

  final Gradient gradient;

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    if (rect.isEmpty) return;
    switch (side.style) {
      case BorderStyle.none:
        break;
      case BorderStyle.solid:
        final RRect rrect = borderRadius
            .resolve(textDirection)
            .toRRect(rect)
            .deflate(side.width / 2);
        final Path path = getPath(rrect);
        final Paint paint = Paint()
          ..isAntiAlias = true
          ..style = PaintingStyle.stroke
          ..strokeWidth = side.width
          ..shader = gradient.createShader(rect);
        canvas.drawPath(path, paint);
        break;
    }
  }
}
