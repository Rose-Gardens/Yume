// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitHistoryImpl _$$HabitHistoryImplFromJson(Map<String, dynamic> json) =>
    _$HabitHistoryImpl(
      habitHistoryId: (json['habitHistoryId'] as num).toInt(),
      createdOn: json['createdOn'] as String,
      completionState: json['completionState'] as String,
      habitId: (json['habitId'] as num).toInt(),
      habitTagId: (json['habitTagId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$HabitHistoryImplToJson(_$HabitHistoryImpl instance) =>
    <String, dynamic>{
      'habitHistoryId': instance.habitHistoryId,
      'createdOn': instance.createdOn,
      'completionState': instance.completionState,
      'habitId': instance.habitId,
      'habitTagId': instance.habitTagId,
    };
