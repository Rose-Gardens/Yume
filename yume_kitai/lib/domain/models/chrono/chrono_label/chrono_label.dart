// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'chrono_label.freezed.dart';
part 'chrono_label.g.dart';

@freezed
class ChronoLabel with _$ChronoLabel {
  const factory ChronoLabel({
    /// The primary-key / id of each Chrono label entry. e.g. "2"
    required int chronoLabelId,

    /// The title of the label. e.g. "Animation"
    required String title,

    /// The group title of the label. e.g. "Coding (Dart, Python)"
    required String groupTitle,

    /// The color hex value of the label. e.g. "FF7a3dbb"
    required String color,

    /// The bool value on whether the label is *undesirable* or not. e.g. "true"
    required bool isNegative,
  }) = _ChronoLabel;

  factory ChronoLabel.fromJson(Map<String, Object?> json) =>
      _$ChronoLabelFromJson(json);
}
