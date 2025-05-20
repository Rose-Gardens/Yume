// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_conditionally_active.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitConditionallyActiveImpl _$$HabitConditionallyActiveImplFromJson(
  Map<String, dynamic> json,
) => _$HabitConditionallyActiveImpl(
  habitConditionallyActiveId: (json['habitConditionallyActiveId'] as num)
      .toInt(),
  startOn: json['startOn'] == null
      ? null
      : DateTime.parse(json['startOn'] as String),
  endOn: json['endOn'] == null ? null : DateTime.parse(json['endOn'] as String),
  startVacationOn: json['startVacationOn'] == null
      ? null
      : DateTime.parse(json['startVacationOn'] as String),
  endVacationOn: json['endVacationOn'] == null
      ? null
      : DateTime.parse(json['endVacationOn'] as String),
  isDeferredToTomorrow: json['isDeferredToTomorrow'] as bool,
  habitId: (json['habitId'] as num).toInt(),
);

Map<String, dynamic> _$$HabitConditionallyActiveImplToJson(
  _$HabitConditionallyActiveImpl instance,
) => <String, dynamic>{
  'habitConditionallyActiveId': instance.habitConditionallyActiveId,
  'startOn': instance.startOn?.toIso8601String(),
  'endOn': instance.endOn?.toIso8601String(),
  'startVacationOn': instance.startVacationOn?.toIso8601String(),
  'endVacationOn': instance.endVacationOn?.toIso8601String(),
  'isDeferredToTomorrow': instance.isDeferredToTomorrow,
  'habitId': instance.habitId,
};
