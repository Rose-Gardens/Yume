// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chrono_label_goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChronoLabelGoalImpl _$$ChronoLabelGoalImplFromJson(
  Map<String, dynamic> json,
) => _$ChronoLabelGoalImpl(
  chronoLabelGoalId: (json['chronoLabelGoalId'] as num).toInt(),
  createdOn: DateTime.parse(json['createdOn'] as String),
  target: json['target'] as String,
  chronoLabelId: (json['chronoLabelId'] as num).toInt(),
);

Map<String, dynamic> _$$ChronoLabelGoalImplToJson(
  _$ChronoLabelGoalImpl instance,
) => <String, dynamic>{
  'chronoLabelGoalId': instance.chronoLabelGoalId,
  'createdOn': instance.createdOn.toIso8601String(),
  'target': instance.target,
  'chronoLabelId': instance.chronoLabelId,
};
