// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chrono_label_reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChronoLabelReminderImpl _$$ChronoLabelReminderImplFromJson(
  Map<String, dynamic> json,
) => _$ChronoLabelReminderImpl(
  chronoLabelReminderId: (json['chronoLabelReminderId'] as num).toInt(),
  type: json['type'] as String,
  remindOn: json['remindOn'] == null
      ? null
      : DateTime.parse(json['remindOn'] as String),
  remindAt: DateTime.parse(json['remindAt'] as String),
  chronoLabelId: (json['chronoLabelId'] as num).toInt(),
);

Map<String, dynamic> _$$ChronoLabelReminderImplToJson(
  _$ChronoLabelReminderImpl instance,
) => <String, dynamic>{
  'chronoLabelReminderId': instance.chronoLabelReminderId,
  'type': instance.type,
  'remindOn': instance.remindOn?.toIso8601String(),
  'remindAt': instance.remindAt.toIso8601String(),
  'chronoLabelId': instance.chronoLabelId,
};
