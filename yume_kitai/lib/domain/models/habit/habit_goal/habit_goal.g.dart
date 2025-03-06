// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitGoalImpl _$$HabitGoalImplFromJson(Map<String, dynamic> json) =>
    _$HabitGoalImpl(
      habitGoalId: (json['habitGoalId'] as num).toInt(),
      target: (json['target'] as num).toInt(),
      currentAmount: (json['currentAmount'] as num).toInt(),
      unit: json['unit'] as String,
      habitId: (json['habitId'] as num).toInt(),
    );

Map<String, dynamic> _$$HabitGoalImplToJson(_$HabitGoalImpl instance) =>
    <String, dynamic>{
      'habitGoalId': instance.habitGoalId,
      'target': instance.target,
      'currentAmount': instance.currentAmount,
      'unit': instance.unit,
      'habitId': instance.habitId,
    };
