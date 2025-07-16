// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chrono_label_autostart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChronoLabelAutostart _$ChronoLabelAutostartFromJson(Map<String, dynamic> json) {
  return _ChronoLabelAutostart.fromJson(json);
}

/// @nodoc
mixin _$ChronoLabelAutostart {
  /// The primary-key / id of each Chrono label autostart entry. e.g. "2"
  int get chronoLabelAutostartId => throw _privateConstructorUsedError;

  /// The time the label should autostart at. e.g. "04:30:00"
  DateTime get startAt => throw _privateConstructorUsedError;

  /// The time the label should autostop at. e.g. "05:00:00"
  DateTime? get endAt => throw _privateConstructorUsedError;

  /// The date when autostart should start vacationing (disabled). e.g. "2025-12-25"
  DateTime? get startVacationOn => throw _privateConstructorUsedError;

  /// The date when autostart should stop vacationing (enabled). e.g. "2025-12-31"
  DateTime? get endVacationOn => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  int get chronoLabelId => throw _privateConstructorUsedError;

  /// Serializes this ChronoLabelAutostart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChronoLabelAutostart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChronoLabelAutostartCopyWith<ChronoLabelAutostart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChronoLabelAutostartCopyWith<$Res> {
  factory $ChronoLabelAutostartCopyWith(
    ChronoLabelAutostart value,
    $Res Function(ChronoLabelAutostart) then,
  ) = _$ChronoLabelAutostartCopyWithImpl<$Res, ChronoLabelAutostart>;
  @useResult
  $Res call({
    int chronoLabelAutostartId,
    DateTime startAt,
    DateTime? endAt,
    DateTime? startVacationOn,
    DateTime? endVacationOn,
    int chronoLabelId,
  });
}

/// @nodoc
class _$ChronoLabelAutostartCopyWithImpl<
  $Res,
  $Val extends ChronoLabelAutostart
>
    implements $ChronoLabelAutostartCopyWith<$Res> {
  _$ChronoLabelAutostartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChronoLabelAutostart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chronoLabelAutostartId = null,
    Object? startAt = null,
    Object? endAt = freezed,
    Object? startVacationOn = freezed,
    Object? endVacationOn = freezed,
    Object? chronoLabelId = null,
  }) {
    return _then(
      _value.copyWith(
            chronoLabelAutostartId: null == chronoLabelAutostartId
                ? _value.chronoLabelAutostartId
                : chronoLabelAutostartId // ignore: cast_nullable_to_non_nullable
                      as int,
            startAt: null == startAt
                ? _value.startAt
                : startAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endAt: freezed == endAt
                ? _value.endAt
                : endAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            startVacationOn: freezed == startVacationOn
                ? _value.startVacationOn
                : startVacationOn // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            endVacationOn: freezed == endVacationOn
                ? _value.endVacationOn
                : endVacationOn // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
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
abstract class _$$ChronoLabelAutostartImplCopyWith<$Res>
    implements $ChronoLabelAutostartCopyWith<$Res> {
  factory _$$ChronoLabelAutostartImplCopyWith(
    _$ChronoLabelAutostartImpl value,
    $Res Function(_$ChronoLabelAutostartImpl) then,
  ) = __$$ChronoLabelAutostartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int chronoLabelAutostartId,
    DateTime startAt,
    DateTime? endAt,
    DateTime? startVacationOn,
    DateTime? endVacationOn,
    int chronoLabelId,
  });
}

/// @nodoc
class __$$ChronoLabelAutostartImplCopyWithImpl<$Res>
    extends _$ChronoLabelAutostartCopyWithImpl<$Res, _$ChronoLabelAutostartImpl>
    implements _$$ChronoLabelAutostartImplCopyWith<$Res> {
  __$$ChronoLabelAutostartImplCopyWithImpl(
    _$ChronoLabelAutostartImpl _value,
    $Res Function(_$ChronoLabelAutostartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChronoLabelAutostart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chronoLabelAutostartId = null,
    Object? startAt = null,
    Object? endAt = freezed,
    Object? startVacationOn = freezed,
    Object? endVacationOn = freezed,
    Object? chronoLabelId = null,
  }) {
    return _then(
      _$ChronoLabelAutostartImpl(
        chronoLabelAutostartId: null == chronoLabelAutostartId
            ? _value.chronoLabelAutostartId
            : chronoLabelAutostartId // ignore: cast_nullable_to_non_nullable
                  as int,
        startAt: null == startAt
            ? _value.startAt
            : startAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endAt: freezed == endAt
            ? _value.endAt
            : endAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        startVacationOn: freezed == startVacationOn
            ? _value.startVacationOn
            : startVacationOn // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        endVacationOn: freezed == endVacationOn
            ? _value.endVacationOn
            : endVacationOn // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
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
class _$ChronoLabelAutostartImpl implements _ChronoLabelAutostart {
  const _$ChronoLabelAutostartImpl({
    required this.chronoLabelAutostartId,
    required this.startAt,
    required this.endAt,
    required this.startVacationOn,
    required this.endVacationOn,
    required this.chronoLabelId,
  });

  factory _$ChronoLabelAutostartImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChronoLabelAutostartImplFromJson(json);

  /// The primary-key / id of each Chrono label autostart entry. e.g. "2"
  @override
  final int chronoLabelAutostartId;

  /// The time the label should autostart at. e.g. "04:30:00"
  @override
  final DateTime startAt;

  /// The time the label should autostop at. e.g. "05:00:00"
  @override
  final DateTime? endAt;

  /// The date when autostart should start vacationing (disabled). e.g. "2025-12-25"
  @override
  final DateTime? startVacationOn;

  /// The date when autostart should stop vacationing (enabled). e.g. "2025-12-31"
  @override
  final DateTime? endVacationOn;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  @override
  final int chronoLabelId;

  @override
  String toString() {
    return 'ChronoLabelAutostart(chronoLabelAutostartId: $chronoLabelAutostartId, startAt: $startAt, endAt: $endAt, startVacationOn: $startVacationOn, endVacationOn: $endVacationOn, chronoLabelId: $chronoLabelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChronoLabelAutostartImpl &&
            (identical(other.chronoLabelAutostartId, chronoLabelAutostartId) ||
                other.chronoLabelAutostartId == chronoLabelAutostartId) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.startVacationOn, startVacationOn) ||
                other.startVacationOn == startVacationOn) &&
            (identical(other.endVacationOn, endVacationOn) ||
                other.endVacationOn == endVacationOn) &&
            (identical(other.chronoLabelId, chronoLabelId) ||
                other.chronoLabelId == chronoLabelId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    chronoLabelAutostartId,
    startAt,
    endAt,
    startVacationOn,
    endVacationOn,
    chronoLabelId,
  );

  /// Create a copy of ChronoLabelAutostart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChronoLabelAutostartImplCopyWith<_$ChronoLabelAutostartImpl>
  get copyWith =>
      __$$ChronoLabelAutostartImplCopyWithImpl<_$ChronoLabelAutostartImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChronoLabelAutostartImplToJson(this);
  }
}

abstract class _ChronoLabelAutostart implements ChronoLabelAutostart {
  const factory _ChronoLabelAutostart({
    required final int chronoLabelAutostartId,
    required final DateTime startAt,
    required final DateTime? endAt,
    required final DateTime? startVacationOn,
    required final DateTime? endVacationOn,
    required final int chronoLabelId,
  }) = _$ChronoLabelAutostartImpl;

  factory _ChronoLabelAutostart.fromJson(Map<String, dynamic> json) =
      _$ChronoLabelAutostartImpl.fromJson;

  /// The primary-key / id of each Chrono label autostart entry. e.g. "2"
  @override
  int get chronoLabelAutostartId;

  /// The time the label should autostart at. e.g. "04:30:00"
  @override
  DateTime get startAt;

  /// The time the label should autostop at. e.g. "05:00:00"
  @override
  DateTime? get endAt;

  /// The date when autostart should start vacationing (disabled). e.g. "2025-12-25"
  @override
  DateTime? get startVacationOn;

  /// The date when autostart should stop vacationing (enabled). e.g. "2025-12-31"
  @override
  DateTime? get endVacationOn;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  @override
  int get chronoLabelId;

  /// Create a copy of ChronoLabelAutostart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChronoLabelAutostartImplCopyWith<_$ChronoLabelAutostartImpl>
  get copyWith => throw _privateConstructorUsedError;
}
