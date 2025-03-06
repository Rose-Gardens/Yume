// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'chrono_label_reminder.freezed.dart';
part 'chrono_label_reminder.g.dart';

// ChronoLabelReminder data is only created when the User sets a reminder for a label.
@freezed
class ChronoLabelReminder with _$ChronoLabelReminder {
  const factory ChronoLabelReminder({
    /// The primary-key / id of each Chrono label reminder. e.g. "2"
    required int chronoLabelReminderId,

    /// The type of reminder for the label. e.g. "Daily, Monthly"
    required String type,

    /// The days / dates the label should be reminded on. e.g. "Monday, 22nd"
    required DateTime? remindOn,

    /// The time the label should be reminded at. e.g. "17:55"
    required DateTime remindAt,

    /// Foreign Key / PK id of the Chrono label table. e.g. "5"
    required int chronoLabelId,
  }) = _ChronoLabelReminder;

  factory ChronoLabelReminder.fromJson(Map<String, Object?> json) =>
      _$ChronoLabelReminderFromJson(json);
}
