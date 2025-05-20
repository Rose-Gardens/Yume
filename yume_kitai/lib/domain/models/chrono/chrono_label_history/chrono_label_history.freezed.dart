// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chrono_label_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChronoLabelHistory _$ChronoLabelHistoryFromJson(Map<String, dynamic> json) {
  return _ChronoLabelHistory.fromJson(json);
}

/// @nodoc
mixin _$ChronoLabelHistory {
  /// The primary-key / id of each Chrono label history entry. e.g. "2"
  int get chronoLabelHistoryId => throw _privateConstructorUsedError;

  /// When the timer for the label started at. e.g. "2025-12-22 05:35:32"
  DateTime? get startedAt => throw _privateConstructorUsedError;

  /// When the timer for the label ended at. e.g. "2025-12-22 05:55:22"
  DateTime? get endedAt => throw _privateConstructorUsedError;

  /// The amount of time tracked for each label history entry. e.g. "13:27:41"
  String get timeTracked => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  int get chronoLabelId => throw _privateConstructorUsedError;

  /// Serializes this ChronoLabelHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChronoLabelHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChronoLabelHistoryCopyWith<ChronoLabelHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChronoLabelHistoryCopyWith<$Res> {
  factory $ChronoLabelHistoryCopyWith(
    ChronoLabelHistory value,
    $Res Function(ChronoLabelHistory) then,
  ) = _$ChronoLabelHistoryCopyWithImpl<$Res, ChronoLabelHistory>;
  @useResult
  $Res call({
    int chronoLabelHistoryId,
    DateTime? startedAt,
    DateTime? endedAt,
    String timeTracked,
    int chronoLabelId,
  });
}

/// @nodoc
class _$ChronoLabelHistoryCopyWithImpl<$Res, $Val extends ChronoLabelHistory>
    implements $ChronoLabelHistoryCopyWith<$Res> {
  _$ChronoLabelHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChronoLabelHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chronoLabelHistoryId = null,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? timeTracked = null,
    Object? chronoLabelId = null,
  }) {
    return _then(
      _value.copyWith(
            chronoLabelHistoryId: null == chronoLabelHistoryId
                ? _value.chronoLabelHistoryId
                : chronoLabelHistoryId // ignore: cast_nullable_to_non_nullable
                      as int,
            startedAt: freezed == startedAt
                ? _value.startedAt
                : startedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            endedAt: freezed == endedAt
                ? _value.endedAt
                : endedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            timeTracked: null == timeTracked
                ? _value.timeTracked
                : timeTracked // ignore: cast_nullable_to_non_nullable
                      as String,
            chronoLabelId: null == chronoLabelId
                ? _value.chronoLabelId
                : chronoLabelId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChronoLabelHistoryImplCopyWith<$Res>
    implements $ChronoLabelHistoryCopyWith<$Res> {
  factory _$$ChronoLabelHistoryImplCopyWith(
    _$ChronoLabelHistoryImpl value,
    $Res Function(_$ChronoLabelHistoryImpl) then,
  ) = __$$ChronoLabelHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int chronoLabelHistoryId,
    DateTime? startedAt,
    DateTime? endedAt,
    String timeTracked,
    int chronoLabelId,
  });
}

/// @nodoc
class __$$ChronoLabelHistoryImplCopyWithImpl<$Res>
    extends _$ChronoLabelHistoryCopyWithImpl<$Res, _$ChronoLabelHistoryImpl>
    implements _$$ChronoLabelHistoryImplCopyWith<$Res> {
  __$$ChronoLabelHistoryImplCopyWithImpl(
    _$ChronoLabelHistoryImpl _value,
    $Res Function(_$ChronoLabelHistoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChronoLabelHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chronoLabelHistoryId = null,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? timeTracked = null,
    Object? chronoLabelId = null,
  }) {
    return _then(
      _$ChronoLabelHistoryImpl(
        chronoLabelHistoryId: null == chronoLabelHistoryId
            ? _value.chronoLabelHistoryId
            : chronoLabelHistoryId // ignore: cast_nullable_to_non_nullable
                  as int,
        startedAt: freezed == startedAt
            ? _value.startedAt
            : startedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        endedAt: freezed == endedAt
            ? _value.endedAt
            : endedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        timeTracked: null == timeTracked
            ? _value.timeTracked
            : timeTracked // ignore: cast_nullable_to_non_nullable
                  as String,
        chronoLabelId: null == chronoLabelId
            ? _value.chronoLabelId
            : chronoLabelId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChronoLabelHistoryImpl implements _ChronoLabelHistory {
  const _$ChronoLabelHistoryImpl({
    required this.chronoLabelHistoryId,
    required this.startedAt,
    required this.endedAt,
    required this.timeTracked,
    required this.chronoLabelId,
  });

  factory _$ChronoLabelHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChronoLabelHistoryImplFromJson(json);

  /// The primary-key / id of each Chrono label history entry. e.g. "2"
  @override
  final int chronoLabelHistoryId;

  /// When the timer for the label started at. e.g. "2025-12-22 05:35:32"
  @override
  final DateTime? startedAt;

  /// When the timer for the label ended at. e.g. "2025-12-22 05:55:22"
  @override
  final DateTime? endedAt;

  /// The amount of time tracked for each label history entry. e.g. "13:27:41"
  @override
  final String timeTracked;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  @override
  final int chronoLabelId;

  @override
  String toString() {
    return 'ChronoLabelHistory(chronoLabelHistoryId: $chronoLabelHistoryId, startedAt: $startedAt, endedAt: $endedAt, timeTracked: $timeTracked, chronoLabelId: $chronoLabelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChronoLabelHistoryImpl &&
            (identical(other.chronoLabelHistoryId, chronoLabelHistoryId) ||
                other.chronoLabelHistoryId == chronoLabelHistoryId) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.timeTracked, timeTracked) ||
                other.timeTracked == timeTracked) &&
            (identical(other.chronoLabelId, chronoLabelId) ||
                other.chronoLabelId == chronoLabelId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    chronoLabelHistoryId,
    startedAt,
    endedAt,
    timeTracked,
    chronoLabelId,
  );

  /// Create a copy of ChronoLabelHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChronoLabelHistoryImplCopyWith<_$ChronoLabelHistoryImpl> get copyWith =>
      __$$ChronoLabelHistoryImplCopyWithImpl<_$ChronoLabelHistoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChronoLabelHistoryImplToJson(this);
  }
}

abstract class _ChronoLabelHistory implements ChronoLabelHistory {
  const factory _ChronoLabelHistory({
    required final int chronoLabelHistoryId,
    required final DateTime? startedAt,
    required final DateTime? endedAt,
    required final String timeTracked,
    required final int chronoLabelId,
  }) = _$ChronoLabelHistoryImpl;

  factory _ChronoLabelHistory.fromJson(Map<String, dynamic> json) =
      _$ChronoLabelHistoryImpl.fromJson;

  /// The primary-key / id of each Chrono label history entry. e.g. "2"
  @override
  int get chronoLabelHistoryId;

  /// When the timer for the label started at. e.g. "2025-12-22 05:35:32"
  @override
  DateTime? get startedAt;

  /// When the timer for the label ended at. e.g. "2025-12-22 05:55:22"
  @override
  DateTime? get endedAt;

  /// The amount of time tracked for each label history entry. e.g. "13:27:41"
  @override
  String get timeTracked;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  @override
  int get chronoLabelId;

  /// Create a copy of ChronoLabelHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChronoLabelHistoryImplCopyWith<_$ChronoLabelHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
