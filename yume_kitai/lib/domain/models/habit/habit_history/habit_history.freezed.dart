// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HabitHistory _$HabitHistoryFromJson(Map<String, dynamic> json) {
  return _HabitHistory.fromJson(json);
}

/// @nodoc
mixin _$HabitHistory {
  /// The primary-key / id of each Habit history entry. e.g. "2"
  int get habitHistoryId => throw _privateConstructorUsedError;

  /// The date value of when the Habit state was modified. e.g. "2025-12-31"
  String get createdOn => throw _privateConstructorUsedError;

  /// The completion state of the Habit. e.g. "Complete"
  String get completionState => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  int get habitId => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the habit_tag table. e.g. "5"
  int? get habitTagId => throw _privateConstructorUsedError;

  /// Serializes this HabitHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HabitHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitHistoryCopyWith<HabitHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitHistoryCopyWith<$Res> {
  factory $HabitHistoryCopyWith(
          HabitHistory value, $Res Function(HabitHistory) then) =
      _$HabitHistoryCopyWithImpl<$Res, HabitHistory>;
  @useResult
  $Res call(
      {int habitHistoryId,
      String createdOn,
      String completionState,
      int habitId,
      int? habitTagId});
}

/// @nodoc
class _$HabitHistoryCopyWithImpl<$Res, $Val extends HabitHistory>
    implements $HabitHistoryCopyWith<$Res> {
  _$HabitHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitHistoryId = null,
    Object? createdOn = null,
    Object? completionState = null,
    Object? habitId = null,
    Object? habitTagId = freezed,
  }) {
    return _then(_value.copyWith(
      habitHistoryId: null == habitHistoryId
          ? _value.habitHistoryId
          : habitHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      completionState: null == completionState
          ? _value.completionState
          : completionState // ignore: cast_nullable_to_non_nullable
              as String,
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
      habitTagId: freezed == habitTagId
          ? _value.habitTagId
          : habitTagId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitHistoryImplCopyWith<$Res>
    implements $HabitHistoryCopyWith<$Res> {
  factory _$$HabitHistoryImplCopyWith(
          _$HabitHistoryImpl value, $Res Function(_$HabitHistoryImpl) then) =
      __$$HabitHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int habitHistoryId,
      String createdOn,
      String completionState,
      int habitId,
      int? habitTagId});
}

/// @nodoc
class __$$HabitHistoryImplCopyWithImpl<$Res>
    extends _$HabitHistoryCopyWithImpl<$Res, _$HabitHistoryImpl>
    implements _$$HabitHistoryImplCopyWith<$Res> {
  __$$HabitHistoryImplCopyWithImpl(
      _$HabitHistoryImpl _value, $Res Function(_$HabitHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitHistoryId = null,
    Object? createdOn = null,
    Object? completionState = null,
    Object? habitId = null,
    Object? habitTagId = freezed,
  }) {
    return _then(_$HabitHistoryImpl(
      habitHistoryId: null == habitHistoryId
          ? _value.habitHistoryId
          : habitHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      completionState: null == completionState
          ? _value.completionState
          : completionState // ignore: cast_nullable_to_non_nullable
              as String,
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
      habitTagId: freezed == habitTagId
          ? _value.habitTagId
          : habitTagId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitHistoryImpl implements _HabitHistory {
  const _$HabitHistoryImpl(
      {required this.habitHistoryId,
      required this.createdOn,
      required this.completionState,
      required this.habitId,
      required this.habitTagId});

  factory _$HabitHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitHistoryImplFromJson(json);

  /// The primary-key / id of each Habit history entry. e.g. "2"
  @override
  final int habitHistoryId;

  /// The date value of when the Habit state was modified. e.g. "2025-12-31"
  @override
  final String createdOn;

  /// The completion state of the Habit. e.g. "Complete"
  @override
  final String completionState;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  final int habitId;

  /// Foreign Key / PK id of the habit_tag table. e.g. "5"
  @override
  final int? habitTagId;

  @override
  String toString() {
    return 'HabitHistory(habitHistoryId: $habitHistoryId, createdOn: $createdOn, completionState: $completionState, habitId: $habitId, habitTagId: $habitTagId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitHistoryImpl &&
            (identical(other.habitHistoryId, habitHistoryId) ||
                other.habitHistoryId == habitHistoryId) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.completionState, completionState) ||
                other.completionState == completionState) &&
            (identical(other.habitId, habitId) || other.habitId == habitId) &&
            (identical(other.habitTagId, habitTagId) ||
                other.habitTagId == habitTagId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, habitHistoryId, createdOn,
      completionState, habitId, habitTagId);

  /// Create a copy of HabitHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitHistoryImplCopyWith<_$HabitHistoryImpl> get copyWith =>
      __$$HabitHistoryImplCopyWithImpl<_$HabitHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitHistoryImplToJson(
      this,
    );
  }
}

abstract class _HabitHistory implements HabitHistory {
  const factory _HabitHistory(
      {required final int habitHistoryId,
      required final String createdOn,
      required final String completionState,
      required final int habitId,
      required final int? habitTagId}) = _$HabitHistoryImpl;

  factory _HabitHistory.fromJson(Map<String, dynamic> json) =
      _$HabitHistoryImpl.fromJson;

  /// The primary-key / id of each Habit history entry. e.g. "2"
  @override
  int get habitHistoryId;

  /// The date value of when the Habit state was modified. e.g. "2025-12-31"
  @override
  String get createdOn;

  /// The completion state of the Habit. e.g. "Complete"
  @override
  String get completionState;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  int get habitId;

  /// Foreign Key / PK id of the habit_tag table. e.g. "5"
  @override
  int? get habitTagId;

  /// Create a copy of HabitHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitHistoryImplCopyWith<_$HabitHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
