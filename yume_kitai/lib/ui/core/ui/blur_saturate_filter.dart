// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.
// Modified code from Flutter's CupertinoPopupSurface

import 'dart:ui';

const List<double> darkMatrixHyperSaturate = <double>[
  2.2, -0.76, -0.212, 0.0, 0.3, // red row
  -0.715, 1.8, -0.212, 0.0, 0.3, // green row
  -0.515, -0.56, 2.4, 0.0, 0.3, // blue row
  0.0, 0.0, 0.0, 1.0, 0.0, // alpha row
];

const List<double> darkMatrixOriginalSaturate = <double>[
  1.385, -0.56, -0.112, 0.0, 0.3, //
  -0.315, 1.14, -0.112, 0.0, 0.3, //
  -0.315, -0.56, 1.588, 0.0, 0.3, //
  0.0, 0.0, 0.0, 1.0, 0.0, //
];

final ImageFilter blurSaturateFilter = ImageFilter.compose(
  outer: ImageFilter.blur(sigmaX: 30, sigmaY: 30, tileMode: TileMode.decal),
  inner: const ColorFilter.matrix(darkMatrixOriginalSaturate),
);

final ImageFilter blurSaturateFilterPerformance = ImageFilter.compose(
  outer: ImageFilter.blur(sigmaX: 15, sigmaY: 15, tileMode: TileMode.decal),
  inner: const ColorFilter.matrix(darkMatrixOriginalSaturate),
);

const ImageFilter saturateFilterPerformance = ColorFilter.matrix(
  darkMatrixOriginalSaturate,
);

final ImageFilter hyperBlurSaturateFilter = ImageFilter.compose(
  outer: ImageFilter.blur(sigmaX: 30, sigmaY: 30, tileMode: TileMode.decal),
  inner: const ColorFilter.matrix(darkMatrixHyperSaturate),
);
