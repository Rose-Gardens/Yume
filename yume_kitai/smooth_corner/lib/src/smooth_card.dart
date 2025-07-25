import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';

class SmoothCard extends Card {
  /// The radius for each corner.
  ///
  /// Negative radius values are clamped to 0.0 by [getInnerPath] and
  /// [getOuterPath].
  ///
  /// If radiuses of X and Y from one corner are not equal, the smallest one will be used.
  final BorderRadius borderRadius;

  /// The smoothness of corners.
  ///
  /// The concept comes from a feature called "corner smoothing" of Figma.
  ///
  /// 0.0 - 1.0
  final double smoothness;

  /// The border outline's color and weight.
  ///
  /// If [side] is [BorderSide.none], which is the default, an outline is not drawn.
  /// Otherwise the outline is centered over the shape's boundary.
  final BorderSide side;

  SmoothCard({
    super.key,
    this.smoothness = 0.6,
    this.borderRadius = BorderRadius.zero,
    this.side = BorderSide.none,
    super.child,
    super.color,
    super.shadowColor,
    super.elevation,
    super.borderOnForeground,
    super.margin,
    super.semanticContainer,
  }) : super(
          clipBehavior: Clip.antiAlias,
          shape: SmoothRectangleBorder(
            side: side,
            borderRadius: borderRadius,
            smoothness: smoothness,
          ),
        );
}
