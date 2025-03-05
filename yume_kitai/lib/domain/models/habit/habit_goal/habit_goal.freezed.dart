// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HabitGoal _$HabitGoalFromJson(Map<String, dynamic> json) {
  return _HabitGoal.fromJson(json);
}

/// @nodoc
mixin _$HabitGoal {
  /// The primary-key / id of each Habit goal entry. e.g. "2"
  int get habitGoalId => throw _privateConstructorUsedError;

  /// The target amount of the Habit goal. e.g. "10000"
  int get target => throw _privateConstructorUsedError;

  /// The current amount of the Habit goal. e.g. "4532"
  int get currentAmount => throw _privateConstructorUsedError;

  /// The unit of the Habit goal. e.g. "steps"
  String get unit => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  int get habitId => throw _privateConstructorUsedError;

  /// Serializes this HabitGoal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HabitGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitGoalCopyWith<HabitGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitGoalCopyWith<$Res> {
  factory $HabitGoalCopyWith(HabitGoal value, $Res Function(HabitGoal) then) =
      _$HabitGoalCopyWithImpl<$Res, HabitGoal>;
  @useResult
  $Res call(
      {int habitGoalId,
      int target,
      int currentAmount,
      String unit,
      int habitId});
}

/// @nodoc
class _$HabitGoalCopyWithImpl<$Res, $Val extends HabitGoal>
    implements $HabitGoalCopyWith<$Res> {
  _$HabitGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitGoalId = null,
    Object? target = null,
    Object? currentAmount = null,
    Object? unit = null,
    Object? habitId = null,
  }) {
    return _then(_value.copyWith(
      habitGoalId: null == habitGoalId
          ? _value.habitGoalId
          : habitGoalId // ignore: cast_nullable_to_non_nullable
              as int,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int,
      currentAmount: null == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitGoalImplCopyWith<$Res>
    implements $HabitGoalCopyWith<$Res> {
  factory _$$HabitGoalImplCopyWith(
          _$HabitGoalImpl value, $Res Function(_$HabitGoalImpl) then) =
      __$$HabitGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int habitGoalId,
      int target,
      int currentAmount,
      String unit,
      int habitId});
}

/// @nodoc
class __$$HabitGoalImplCopyWithImpl<$Res>
    extends _$HabitGoalCopyWithImpl<$Res, _$HabitGoalImpl>
    implements _$$HabitGoalImplCopyWith<$Res> {
  __$$HabitGoalImplCopyWithImpl(
      _$HabitGoalImpl _value, $Res Function(_$HabitGoalImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitGoalId = null,
    Object? target = null,
    Object? currentAmount = null,
    Object? unit = null,
    Object? habitId = null,
  }) {
    return _then(_$HabitGoalImpl(
      habitGoalId: null == habitGoalId
          ? _value.habitGoalId
          : habitGoalId // ignore: cast_nullable_to_non_nullable
              as int,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int,
      currentAmount: null == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
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
class _$HabitGoalImpl implements _HabitGoal {
  const _$HabitGoalImpl(
      {required this.habitGoalId,
      required this.target,
      required this.currentAmount,
      required this.unit,
      required this.habitId});

  factory _$HabitGoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitGoalImplFromJson(json);

  /// The primary-key / id of each Habit goal entry. e.g. "2"
  @override
  final int habitGoalId;

  /// The target amount of the Habit goal. e.g. "10000"
  @override
  final int target;

  /// The current amount of the Habit goal. e.g. "4532"
  @override
  final int currentAmount;

  /// The unit of the Habit goal. e.g. "steps"
  @override
  final String unit;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  final int habitId;

  @override
  String toString() {
    return 'HabitGoal(habitGoalId: $habitGoalId, target: $target, currentAmount: $currentAmount, unit: $unit, habitId: $habitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitGoalImpl &&
            (identical(other.habitGoalId, habitGoalId) ||
                other.habitGoalId == habitGoalId) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.currentAmount, currentAmount) ||
                other.currentAmount == currentAmount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.habitId, habitId) || other.habitId == habitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, habitGoalId, target, currentAmount, unit, habitId);

  /// Create a copy of HabitGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitGoalImplCopyWith<_$HabitGoalImpl> get copyWith =>
      __$$HabitGoalImplCopyWithImpl<_$HabitGoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitGoalImplToJson(
      this,
    );
  }
}

abstract class _HabitGoal implements HabitGoal {
  const factory _HabitGoal(
      {required final int habitGoalId,
      required final int target,
      required final int currentAmount,
      required final String unit,
      required final int habitId}) = _$HabitGoalImpl;

  factory _HabitGoal.fromJson(Map<String, dynamic> json) =
      _$HabitGoalImpl.fromJson;

  /// The primary-key / id of each Habit goal entry. e.g. "2"
  @override
  int get habitGoalId;

  /// The target amount of the Habit goal. e.g. "10000"
  @override
  int get target;

  /// The current amount of the Habit goal. e.g. "4532"
  @override
  int get currentAmount;

  /// The unit of the Habit goal. e.g. "steps"
  @override
  String get unit;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  int get habitId;

  /// Create a copy of HabitGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitGoalImplCopyWith<_$HabitGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
