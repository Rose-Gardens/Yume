// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
  habitId: (json['habit_id'] as num?)?.toInt(),
  title: json['title'] as String,
  groupTitle: json['group_title'] as String?,
  desc: json['desc'] as String,
  color: json['color'] as String,
  icon: json['icon'] as String,
  isRetired: json['is_retired'] as bool,
  isNegative: json['is_negative'] as bool,
  habitConditionallyActiveId: (json['habit_conditionallY_active_id'] as num?)
      ?.toInt(),
  chronoLabelId: (json['chrono_label_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      'habit_id': instance.habitId,
      'title': instance.title,
      'group_title': instance.groupTitle,
      'desc': instance.desc,
      'color': instance.color,
      'icon': instance.icon,
      'is_retired': instance.isRetired,
      'is_negative': instance.isNegative,
      'habit_conditionallY_active_id': instance.habitConditionallyActiveId,
      'chrono_label_id': instance.chronoLabelId,
    };
