// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chrono_label_autostart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChronoLabelAutostartImpl _$$ChronoLabelAutostartImplFromJson(
        Map<String, dynamic> json) =>
    _$ChronoLabelAutostartImpl(
      chronoLabelAutostartId: (json['chronoLabelAutostartId'] as num).toInt(),
      startAt: DateTime.parse(json['startAt'] as String),
      endAt: json['endAt'] == null
          ? null
          : DateTime.parse(json['endAt'] as String),
      startVacationOn: json['startVacationOn'] == null
          ? null
          : DateTime.parse(json['startVacationOn'] as String),
      endVacationOn: json['endVacationOn'] == null
          ? null
          : DateTime.parse(json['endVacationOn'] as String),
      chronoLabelId: (json['chronoLabelId'] as num).toInt(),
    );

Map<String, dynamic> _$$ChronoLabelAutostartImplToJson(
        _$ChronoLabelAutostartImpl instance) =>
    <String, dynamic>{
      'chronoLabelAutostartId': instance.chronoLabelAutostartId,
      'startAt': instance.startAt.toIso8601String(),
      'endAt': instance.endAt?.toIso8601String(),
      'startVacationOn': instance.startVacationOn?.toIso8601String(),
      'endVacationOn': instance.endVacationOn?.toIso8601String(),
      'chronoLabelId': instance.chronoLabelId,
    };
