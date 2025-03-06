// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_freq.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HabitFreq _$HabitFreqFromJson(Map<String, dynamic> json) {
  return _HabitFreq.fromJson(json);
}

/// @nodoc
mixin _$HabitFreq {
  /// The primary-key / id of each Habit frequency entry. e.g. "2"
  int get habitFreqId => throw _privateConstructorUsedError;

  /// The type of frequency for the Habit. e.g. "Daily, Monthly"
  String get type => throw _privateConstructorUsedError;

  /// The value of the Habit frequency. e.g. "Monday, 22nd"
  String get repeatValue => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  int get habitId => throw _privateConstructorUsedError;

  /// Serializes this HabitFreq to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HabitFreq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitFreqCopyWith<HabitFreq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitFreqCopyWith<$Res> {
  factory $HabitFreqCopyWith(HabitFreq value, $Res Function(HabitFreq) then) =
      _$HabitFreqCopyWithImpl<$Res, HabitFreq>;
  @useResult
  $Res call({int habitFreqId, String type, String repeatValue, int habitId});
}

/// @nodoc
class _$HabitFreqCopyWithImpl<$Res, $Val extends HabitFreq>
    implements $HabitFreqCopyWith<$Res> {
  _$HabitFreqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitFreq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitFreqId = null,
    Object? type = null,
    Object? repeatValue = null,
    Object? habitId = null,
  }) {
    return _then(_value.copyWith(
      habitFreqId: null == habitFreqId
          ? _value.habitFreqId
          : habitFreqId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      repeatValue: null == repeatValue
          ? _value.repeatValue
          : repeatValue // ignore: cast_nullable_to_non_nullable
              as String,
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitFreqImplCopyWith<$Res>
    implements $HabitFreqCopyWith<$Res> {
  factory _$$HabitFreqImplCopyWith(
          _$HabitFreqImpl value, $Res Function(_$HabitFreqImpl) then) =
      __$$HabitFreqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int habitFreqId, String type, String repeatValue, int habitId});
}

/// @nodoc
class __$$HabitFreqImplCopyWithImpl<$Res>
    extends _$HabitFreqCopyWithImpl<$Res, _$HabitFreqImpl>
    implements _$$HabitFreqImplCopyWith<$Res> {
  __$$HabitFreqImplCopyWithImpl(
      _$HabitFreqImpl _value, $Res Function(_$HabitFreqImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitFreq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitFreqId = null,
    Object? type = null,
    Object? repeatValue = null,
    Object? habitId = null,
  }) {
    return _then(_$HabitFreqImpl(
      habitFreqId: null == habitFreqId
          ? _value.habitFreqId
          : habitFreqId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      repeatValue: null == repeatValue
          ? _value.repeatValue
          : repeatValue // ignore: cast_nullable_to_non_nullable
              as String,
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitFreqImpl implements _HabitFreq {
  const _$HabitFreqImpl(
      {required this.habitFreqId,
      required this.type,
      required this.repeatValue,
      required this.habitId});

  factory _$HabitFreqImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitFreqImplFromJson(json);

  /// The primary-key / id of each Habit frequency entry. e.g. "2"
  @override
  final int habitFreqId;

  /// The type of frequency for the Habit. e.g. "Daily, Monthly"
  @override
  final String type;

  /// The value of the Habit frequency. e.g. "Monday, 22nd"
  @override
  final String repeatValue;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  final int habitId;

  @override
  String toString() {
    return 'HabitFreq(habitFreqId: $habitFreqId, type: $type, repeatValue: $repeatValue, habitId: $habitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitFreqImpl &&
            (identical(other.habitFreqId, habitFreqId) ||
                other.habitFreqId == habitFreqId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.repeatValue, repeatValue) ||
                other.repeatValue == repeatValue) &&
            (identical(other.habitId, habitId) || other.habitId == habitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, habitFreqId, type, repeatValue, habitId);

  /// Create a copy of HabitFreq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitFreqImplCopyWith<_$HabitFreqImpl> get copyWith =>
      __$$HabitFreqImplCopyWithImpl<_$HabitFreqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitFreqImplToJson(
      this,
    );
  }
}

abstract class _HabitFreq implements HabitFreq {
  const factory _HabitFreq(
      {required final int habitFreqId,
      required final String type,
      required final String repeatValue,
      required final int habitId}) = _$HabitFreqImpl;

  factory _HabitFreq.fromJson(Map<String, dynamic> json) =
      _$HabitFreqImpl.fromJson;

  /// The primary-key / id of each Habit frequency entry. e.g. "2"
  @override
  int get habitFreqId;

  /// The type of frequency for the Habit. e.g. "Daily, Monthly"
  @override
  String get type;

  /// The value of the Habit frequency. e.g. "Monday, 22nd"
  @override
  String get repeatValue;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  int get habitId;

  /// Create a copy of HabitFreq
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitFreqImplCopyWith<_$HabitFreqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
