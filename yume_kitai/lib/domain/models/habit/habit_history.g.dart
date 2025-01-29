// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitHistoryImpl _$$HabitHistoryImplFromJson(Map<String, dynamic> json) =>
    _$HabitHistoryImpl(
      habitHistoryId: (json['habitHistoryId'] as num).toInt(),
      habitHistoryDateTimeStamp: json['habitHistoryDateTimeStamp'] as String,
      habitHistoryState: json['habitHistoryState'] as String,
      habitId: (json['habitId'] as num).toInt(),
    );

Map<String, dynamic> _$$HabitHistoryImplToJson(_$HabitHistoryImpl instance) =>
    <String, dynamic>{
      'habitHistoryId': instance.habitHistoryId,
      'habitHistoryDateTimeStamp': instance.habitHistoryDateTimeStamp,
      'habitHistoryState': instance.habitHistoryState,
      'habitId': instance.habitId,
    };
