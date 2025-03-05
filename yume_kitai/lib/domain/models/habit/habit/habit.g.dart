// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
      habitId: (json['habitId'] as num).toInt(),
      title: json['title'] as String,
      groupTitle: json['groupTitle'] as String,
      desc: json['desc'] as String,
      color: json['color'] as String,
      icon: json['icon'] as String,
      isRetired: json['isRetired'] as bool,
      isNegative: json['isNegative'] as bool,
      habitConditionallyActiveId:
          (json['habitConditionallyActiveId'] as num?)?.toInt(),
      chronoLabelId: (json['chronoLabelId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      'habitId': instance.habitId,
      'title': instance.title,
      'groupTitle': instance.groupTitle,
      'desc': instance.desc,
      'color': instance.color,
      'icon': instance.icon,
      'isRetired': instance.isRetired,
      'isNegative': instance.isNegative,
      'habitConditionallyActiveId': instance.habitConditionallyActiveId,
      'chronoLabelId': instance.chronoLabelId,
    };
