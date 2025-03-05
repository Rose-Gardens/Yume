// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_streak.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitStreakImpl _$$HabitStreakImplFromJson(Map<String, dynamic> json) =>
    _$HabitStreakImpl(
      habitStreakId: (json['habitStreakId'] as num).toInt(),
      current: (json['current'] as num).toInt(),
      best: (json['best'] as num).toInt(),
      habitId: (json['habitId'] as num).toInt(),
    );

Map<String, dynamic> _$$HabitStreakImplToJson(_$HabitStreakImpl instance) =>
    <String, dynamic>{
      'habitStreakId': instance.habitStreakId,
      'current': instance.current,
      'best': instance.best,
      'habitId': instance.habitId,
    };
