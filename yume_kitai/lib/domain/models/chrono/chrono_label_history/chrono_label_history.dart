// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'chrono_label_history.freezed.dart';
part 'chrono_label_history.g.dart';

// ChronoLabelHistory data is only created when the User starts a new timer for a label.
@freezed
class ChronoLabelHistory with _$ChronoLabelHistory {
  const factory ChronoLabelHistory({
    /// The primary-key / id of each Chrono label history entry. e.g. "2"
    required int chronoLabelHistoryId,

    /// When the timer for the label started at. e.g. "2025-12-22 05:35:32"
    required DateTime? startedAt,

    /// When the timer for the label ended at. e.g. "2025-12-22 05:55:22"
    required DateTime? endedAt,

    /// The amount of time tracked for each label history entry. e.g. "13:27:41"
    required String timeTracked,

    /// Foreign Key / PK id of the Chrono label table. e.g. "5"
    required int chronoLabelId,
  }) = _ChronoLabelHistory;

  factory ChronoLabelHistory.fromJson(Map<String, Object?> json) =>
      _$ChronoLabelHistoryFromJson(json);
}
