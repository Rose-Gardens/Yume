// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_freq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitFreqImpl _$$HabitFreqImplFromJson(Map<String, dynamic> json) =>
    _$HabitFreqImpl(
      habitFreqId: (json['habitFreqId'] as num).toInt(),
      type: json['type'] as String,
      repeatValue: json['repeatValue'] as String,
      habitId: (json['habitId'] as num).toInt(),
    );

Map<String, dynamic> _$$HabitFreqImplToJson(_$HabitFreqImpl instance) =>
    <String, dynamic>{
      'habitFreqId': instance.habitFreqId,
      'type': instance.type,
      'repeatValue': instance.repeatValue,
      'habitId': instance.habitId,
    };
