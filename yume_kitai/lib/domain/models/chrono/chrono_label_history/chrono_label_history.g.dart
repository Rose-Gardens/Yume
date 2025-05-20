// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chrono_label_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChronoLabelHistoryImpl _$$ChronoLabelHistoryImplFromJson(
  Map<String, dynamic> json,
) => _$ChronoLabelHistoryImpl(
  chronoLabelHistoryId: (json['chronoLabelHistoryId'] as num).toInt(),
  startedAt: json['startedAt'] == null
      ? null
      : DateTime.parse(json['startedAt'] as String),
  endedAt: json['endedAt'] == null
      ? null
      : DateTime.parse(json['endedAt'] as String),
  timeTracked: json['timeTracked'] as String,
  chronoLabelId: (json['chronoLabelId'] as num).toInt(),
);

Map<String, dynamic> _$$ChronoLabelHistoryImplToJson(
  _$ChronoLabelHistoryImpl instance,
) => <String, dynamic>{
  'chronoLabelHistoryId': instance.chronoLabelHistoryId,
  'startedAt': instance.startedAt?.toIso8601String(),
  'endedAt': instance.endedAt?.toIso8601String(),
  'timeTracked': instance.timeTracked,
  'chronoLabelId': instance.chronoLabelId,
};
