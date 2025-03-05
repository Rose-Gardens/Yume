// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitReminderImpl _$$HabitReminderImplFromJson(Map<String, dynamic> json) =>
    _$HabitReminderImpl(
      habitReminderId: (json['habitReminderId'] as num).toInt(),
      type: json['type'] as String,
      remindOn: json['remindOn'] == null
          ? null
          : DateTime.parse(json['remindOn'] as String),
      remindAt: DateTime.parse(json['remindAt'] as String),
      habitId: (json['habitId'] as num).toInt(),
    );

Map<String, dynamic> _$$HabitReminderImplToJson(_$HabitReminderImpl instance) =>
    <String, dynamic>{
      'habitReminderId': instance.habitReminderId,
      'type': instance.type,
      'remindOn': instance.remindOn?.toIso8601String(),
      'remindAt': instance.remindAt.toIso8601String(),
      'habitId': instance.habitId,
    };
