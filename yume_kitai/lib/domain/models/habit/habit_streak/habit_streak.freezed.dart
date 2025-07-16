// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_streak.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HabitStreak _$HabitStreakFromJson(Map<String, dynamic> json) {
  return _HabitStreak.fromJson(json);
}

/// @nodoc
mixin _$HabitStreak {
  /// The primary-key / id of each Habit streak entry. e.g. "2"
  int get habitStreakId => throw _privateConstructorUsedError;

  /// The current streak value of a Habit. e.g. "12"
  int get current => throw _privateConstructorUsedError;

  /// The best steak value of a Habit. e.g. "45"
  int get best => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  int get habitId => throw _privateConstructorUsedError;

  /// Serializes this HabitStreak to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HabitStreak
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitStreakCopyWith<HabitStreak> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitStreakCopyWith<$Res> {
  factory $HabitStreakCopyWith(
    HabitStreak value,
    $Res Function(HabitStreak) then,
  ) = _$HabitStreakCopyWithImpl<$Res, HabitStreak>;
  @useResult
  $Res call({int habitStreakId, int current, int best, int habitId});
}

/// @nodoc
class _$HabitStreakCopyWithImpl<$Res, $Val extends HabitStreak>
    implements $HabitStreakCopyWith<$Res> {
  _$HabitStreakCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitStreak
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitStreakId = null,
    Object? current = null,
    Object? best = null,
    Object? habitId = null,
  }) {
    return _then(
      _value.copyWith(
            habitStreakId: null == habitStreakId
                ? _value.habitStreakId
                : habitStreakId // ignore: cast_nullable_to_non_nullable
                      as int,
            current: null == current
                ? _value.current
                : current // ignore: cast_nullable_to_non_nullable
                      as int,
            best: null == best
                ? _value.best
                : best // ignore: cast_nullable_to_non_nullable
                      as int,
            habitId: null == habitId
                ? _value.habitId
                : habitId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HabitStreakImplCopyWith<$Res>
    implements $HabitStreakCopyWith<$Res> {
  factory _$$HabitStreakImplCopyWith(
    _$HabitStreakImpl value,
    $Res Function(_$HabitStreakImpl) then,
  ) = __$$HabitStreakImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int habitStreakId, int current, int best, int habitId});
}

/// @nodoc
class __$$HabitStreakImplCopyWithImpl<$Res>
    extends _$HabitStreakCopyWithImpl<$Res, _$HabitStreakImpl>
    implements _$$HabitStreakImplCopyWith<$Res> {
  __$$HabitStreakImplCopyWithImpl(
    _$HabitStreakImpl _value,
    $Res Function(_$HabitStreakImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HabitStreak
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitStreakId = null,
    Object? current = null,
    Object? best = null,
    Object? habitId = null,
  }) {
    return _then(
      _$HabitStreakImpl(
        habitStreakId: null == habitStreakId
            ? _value.habitStreakId
            : habitStreakId // ignore: cast_nullable_to_non_nullable
                  as int,
        current: null == current
            ? _value.current
            : current // ignore: cast_nullable_to_non_nullable
                  as int,
        best: null == best
            ? _value.best
            : best // ignore: cast_nullable_to_non_nullable
                  as int,
        habitId: null == habitId
            ? _value.habitId
            : habitId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitStreakImpl implements _HabitStreak {
  const _$HabitStreakImpl({
    required this.habitStreakId,
    required this.current,
    required this.best,
    required this.habitId,
  });

  factory _$HabitStreakImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitStreakImplFromJson(json);

  /// The primary-key / id of each Habit streak entry. e.g. "2"
  @override
  final int habitStreakId;

  /// The current streak value of a Habit. e.g. "12"
  @override
  final int current;

  /// The best steak value of a Habit. e.g. "45"
  @override
  final int best;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  final int habitId;

  @override
  String toString() {
    return 'HabitStreak(habitStreakId: $habitStreakId, current: $current, best: $best, habitId: $habitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitStreakImpl &&
            (identical(other.habitStreakId, habitStreakId) ||
                other.habitStreakId == habitStreakId) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.best, best) || other.best == best) &&
            (identical(other.habitId, habitId) || other.habitId == habitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, habitStreakId, current, best, habitId);

  /// Create a copy of HabitStreak
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitStreakImplCopyWith<_$HabitStreakImpl> get copyWith =>
      __$$HabitStreakImplCopyWithImpl<_$HabitStreakImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitStreakImplToJson(this);
  }
}

abstract class _HabitStreak implements HabitStreak {
  const factory _HabitStreak({
    required final int habitStreakId,
    required final int current,
    required final int best,
    required final int habitId,
  }) = _$HabitStreakImpl;

  factory _HabitStreak.fromJson(Map<String, dynamic> json) =
      _$HabitStreakImpl.fromJson;

  /// The primary-key / id of each Habit streak entry. e.g. "2"
  @override
  int get habitStreakId;

  /// The current streak value of a Habit. e.g. "12"
  @override
  int get current;

  /// The best steak value of a Habit. e.g. "45"
  @override
  int get best;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  int get habitId;

  /// Create a copy of HabitStreak
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitStreakImplCopyWith<_$HabitStreakImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
