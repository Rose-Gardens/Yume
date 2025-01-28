// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
      habitId: (json['habitId'] as num).toInt(),
      habitTitle: json['habitTitle'] as String,
      habitFreq: json['habitFreq'] as String,
      habitDesc: json['habitDesc'] as String,
      habitColor: json['habitColor'] as String,
      habitIcon: json['habitIcon'] as String,
    );

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      'habitId': instance.habitId,
      'habitTitle': instance.habitTitle,
      'habitFreq': instance.habitFreq,
      'habitDesc': instance.habitDesc,
      'habitColor': instance.habitColor,
      'habitIcon': instance.habitIcon,
    };
