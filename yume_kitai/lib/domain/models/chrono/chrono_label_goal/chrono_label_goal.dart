// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'chrono_label_goal.freezed.dart';
part 'chrono_label_goal.g.dart';

// ChronoLabelGoal data is only created when the User sets a goal for a label.
@freezed
class ChronoLabelGoal with _$ChronoLabelGoal {
  const factory ChronoLabelGoal({
    /// The primary-key / id of each Chrono label goal. e.g. "2"
    required int chronoLabelGoalId,

    /// When the label goal was created. e.g. "2025-05-14"
    required DateTime createdOn,

    /// The label goal target. e.g. "01:20:00"
    required String target,

    /// Foreign Key / PK id of the Chrono label table. e.g. "5"
    required int chronoLabelId,
  }) = _ChronoLabelGoal;

  factory ChronoLabelGoal.fromJson(Map<String, Object?> json) =>
      _$ChronoLabelGoalFromJson(json);
}
