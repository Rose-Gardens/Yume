// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'chrono_label_autostart.freezed.dart';
part 'chrono_label_autostart.g.dart';

// ChronoLabelAutostart data is only created when the User sets a label to autostart.
@freezed
class ChronoLabelAutostart with _$ChronoLabelAutostart {
  const factory ChronoLabelAutostart({
    /// The primary-key / id of each Chrono label autostart entry. e.g. "2"
    required int chronoLabelAutostartId,

    /// The time the label should autostart at. e.g. "04:30:00"
    required DateTime startAt,

    /// The time the label should autostop at. e.g. "05:00:00"
    required DateTime? endAt,

    /// The date when autostart should start vacationing (disabled). e.g. "2025-12-25"
    required DateTime? startVacationOn,

    /// The date when autostart should stop vacationing (enabled). e.g. "2025-12-31"
    required DateTime? endVacationOn,

    /// Foreign Key / PK id of the Chrono label table. e.g. "5"
    required int chronoLabelId,
  }) = _ChronoLabelAutostart;

  factory ChronoLabelAutostart.fromJson(Map<String, Object?> json) =>
      _$ChronoLabelAutostartFromJson(json);
}
