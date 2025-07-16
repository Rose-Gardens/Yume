// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chrono_label_goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChronoLabelGoal _$ChronoLabelGoalFromJson(Map<String, dynamic> json) {
  return _ChronoLabelGoal.fromJson(json);
}

/// @nodoc
mixin _$ChronoLabelGoal {
  /// The primary-key / id of each Chrono label goal. e.g. "2"
  int get chronoLabelGoalId => throw _privateConstructorUsedError;

  /// When the label goal was created. e.g. "2025-05-14"
  DateTime get createdOn => throw _privateConstructorUsedError;

  /// The label goal target. e.g. "01:20:00"
  String get target => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  int get chronoLabelId => throw _privateConstructorUsedError;

  /// Serializes this ChronoLabelGoal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChronoLabelGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChronoLabelGoalCopyWith<ChronoLabelGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChronoLabelGoalCopyWith<$Res> {
  factory $ChronoLabelGoalCopyWith(
    ChronoLabelGoal value,
    $Res Function(ChronoLabelGoal) then,
  ) = _$ChronoLabelGoalCopyWithImpl<$Res, ChronoLabelGoal>;
  @useResult
  $Res call({
    int chronoLabelGoalId,
    DateTime createdOn,
    String target,
    int chronoLabelId,
  });
}

/// @nodoc
class _$ChronoLabelGoalCopyWithImpl<$Res, $Val extends ChronoLabelGoal>
    implements $ChronoLabelGoalCopyWith<$Res> {
  _$ChronoLabelGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChronoLabelGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chronoLabelGoalId = null,
    Object? createdOn = null,
    Object? target = null,
    Object? chronoLabelId = null,
  }) {
    return _then(
      _value.copyWith(
            chronoLabelGoalId: null == chronoLabelGoalId
                ? _value.chronoLabelGoalId
                : chronoLabelGoalId // ignore: cast_nullable_to_non_nullable
                      as int,
            createdOn: null == createdOn
                ? _value.createdOn
                : createdOn // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            target: null == target
                ? _value.target
                : target // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ChronoLabelGoalImplCopyWith<$Res>
    implements $ChronoLabelGoalCopyWith<$Res> {
  factory _$$ChronoLabelGoalImplCopyWith(
    _$ChronoLabelGoalImpl value,
    $Res Function(_$ChronoLabelGoalImpl) then,
  ) = __$$ChronoLabelGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int chronoLabelGoalId,
    DateTime createdOn,
    String target,
    int chronoLabelId,
  });
}

/// @nodoc
class __$$ChronoLabelGoalImplCopyWithImpl<$Res>
    extends _$ChronoLabelGoalCopyWithImpl<$Res, _$ChronoLabelGoalImpl>
    implements _$$ChronoLabelGoalImplCopyWith<$Res> {
  __$$ChronoLabelGoalImplCopyWithImpl(
    _$ChronoLabelGoalImpl _value,
    $Res Function(_$ChronoLabelGoalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChronoLabelGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chronoLabelGoalId = null,
    Object? createdOn = null,
    Object? target = null,
    Object? chronoLabelId = null,
  }) {
    return _then(
      _$ChronoLabelGoalImpl(
        chronoLabelGoalId: null == chronoLabelGoalId
            ? _value.chronoLabelGoalId
            : chronoLabelGoalId // ignore: cast_nullable_to_non_nullable
                  as int,
        createdOn: null == createdOn
            ? _value.createdOn
            : createdOn // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        target: null == target
            ? _value.target
            : target // ignore: cast_nullable_to_non_nullable
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
class _$ChronoLabelGoalImpl implements _ChronoLabelGoal {
  const _$ChronoLabelGoalImpl({
    required this.chronoLabelGoalId,
    required this.createdOn,
    required this.target,
    required this.chronoLabelId,
  });

  factory _$ChronoLabelGoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChronoLabelGoalImplFromJson(json);

  /// The primary-key / id of each Chrono label goal. e.g. "2"
  @override
  final int chronoLabelGoalId;

  /// When the label goal was created. e.g. "2025-05-14"
  @override
  final DateTime createdOn;

  /// The label goal target. e.g. "01:20:00"
  @override
  final String target;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  @override
  final int chronoLabelId;

  @override
  String toString() {
    return 'ChronoLabelGoal(chronoLabelGoalId: $chronoLabelGoalId, createdOn: $createdOn, target: $target, chronoLabelId: $chronoLabelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChronoLabelGoalImpl &&
            (identical(other.chronoLabelGoalId, chronoLabelGoalId) ||
                other.chronoLabelGoalId == chronoLabelGoalId) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.chronoLabelId, chronoLabelId) ||
                other.chronoLabelId == chronoLabelId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    chronoLabelGoalId,
    createdOn,
    target,
    chronoLabelId,
  );

  /// Create a copy of ChronoLabelGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChronoLabelGoalImplCopyWith<_$ChronoLabelGoalImpl> get copyWith =>
      __$$ChronoLabelGoalImplCopyWithImpl<_$ChronoLabelGoalImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChronoLabelGoalImplToJson(this);
  }
}

abstract class _ChronoLabelGoal implements ChronoLabelGoal {
  const factory _ChronoLabelGoal({
    required final int chronoLabelGoalId,
    required final DateTime createdOn,
    required final String target,
    required final int chronoLabelId,
  }) = _$ChronoLabelGoalImpl;

  factory _ChronoLabelGoal.fromJson(Map<String, dynamic> json) =
      _$ChronoLabelGoalImpl.fromJson;

  /// The primary-key / id of each Chrono label goal. e.g. "2"
  @override
  int get chronoLabelGoalId;

  /// When the label goal was created. e.g. "2025-05-14"
  @override
  DateTime get createdOn;

  /// The label goal target. e.g. "01:20:00"
  @override
  String get target;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  @override
  int get chronoLabelId;

  /// Create a copy of ChronoLabelGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChronoLabelGoalImplCopyWith<_$ChronoLabelGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
