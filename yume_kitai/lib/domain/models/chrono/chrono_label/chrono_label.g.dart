// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chrono_label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChronoLabelImpl _$$ChronoLabelImplFromJson(Map<String, dynamic> json) =>
    _$ChronoLabelImpl(
      chronoLabelId: (json['chronoLabelId'] as num).toInt(),
      title: json['title'] as String,
      groupTitle: json['groupTitle'] as String,
      color: json['color'] as String,
      isNegative: json['isNegative'] as bool,
    );

Map<String, dynamic> _$$ChronoLabelImplToJson(_$ChronoLabelImpl instance) =>
    <String, dynamic>{
      'chronoLabelId': instance.chronoLabelId,
      'title': instance.title,
      'groupTitle': instance.groupTitle,
      'color': instance.color,
      'isNegative': instance.isNegative,
    };
