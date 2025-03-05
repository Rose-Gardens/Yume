// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitTagImpl _$$HabitTagImplFromJson(Map<String, dynamic> json) =>
    _$HabitTagImpl(
      habitTagId: (json['habitTagId'] as num).toInt(),
      title: json['title'] as String,
      color: json['color'] as String?,
      habitId: (json['habitId'] as num).toInt(),
    );

Map<String, dynamic> _$$HabitTagImplToJson(_$HabitTagImpl instance) =>
    <String, dynamic>{
      'habitTagId': instance.habitTagId,
      'title': instance.title,
      'color': instance.color,
      'habitId': instance.habitId,
    };
