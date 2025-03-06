// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_conditionally_active.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HabitConditionallyActive _$HabitConditionallyActiveFromJson(
    Map<String, dynamic> json) {
  return _HabitConditionallyActive.fromJson(json);
}

/// @nodoc
mixin _$HabitConditionallyActive {
  /// The primary-key / id of each Habit Cond.Act. entry. e.g. "2"
  int get habitConditionallyActiveId => throw _privateConstructorUsedError;

  /// When the Habit will start being active. e.g. "2025-06-25"
  DateTime? get startOn => throw _privateConstructorUsedError;

  /// When the Habit will end being active. e.g. "2025-06-30"
  DateTime? get endOn => throw _privateConstructorUsedError;

  /// When the Habit will deactivate for a vacation / period of time. e.g. "2025-07-25"
  DateTime? get startVacationOn => throw _privateConstructorUsedError;

  /// When the Habit will reactivate from a vacation. e.g. "2025-07-31"
  DateTime? get endVacationOn => throw _privateConstructorUsedError;

  /// Whether the Habit should be shifted to tomorrow. e.g. "true"
  bool get isDeferredToTomorrow => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  int get habitId => throw _privateConstructorUsedError;

  /// Serializes this HabitConditionallyActive to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HabitConditionallyActive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitConditionallyActiveCopyWith<HabitConditionallyActive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitConditionallyActiveCopyWith<$Res> {
  factory $HabitConditionallyActiveCopyWith(HabitConditionallyActive value,
          $Res Function(HabitConditionallyActive) then) =
      _$HabitConditionallyActiveCopyWithImpl<$Res, HabitConditionallyActive>;
  @useResult
  $Res call(
      {int habitConditionallyActiveId,
      DateTime? startOn,
      DateTime? endOn,
      DateTime? startVacationOn,
      DateTime? endVacationOn,
      bool isDeferredToTomorrow,
      int habitId});
}

/// @nodoc
class _$HabitConditionallyActiveCopyWithImpl<$Res,
        $Val extends HabitConditionallyActive>
    implements $HabitConditionallyActiveCopyWith<$Res> {
  _$HabitConditionallyActiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitConditionallyActive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitConditionallyActiveId = null,
    Object? startOn = freezed,
    Object? endOn = freezed,
    Object? startVacationOn = freezed,
    Object? endVacationOn = freezed,
    Object? isDeferredToTomorrow = null,
    Object? habitId = null,
  }) {
    return _then(_value.copyWith(
      habitConditionallyActiveId: null == habitConditionallyActiveId
          ? _value.habitConditionallyActiveId
          : habitConditionallyActiveId // ignore: cast_nullable_to_non_nullable
              as int,
      startOn: freezed == startOn
          ? _value.startOn
          : startOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endOn: freezed == endOn
          ? _value.endOn
          : endOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startVacationOn: freezed == startVacationOn
          ? _value.startVacationOn
          : startVacationOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endVacationOn: freezed == endVacationOn
          ? _value.endVacationOn
          : endVacationOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeferredToTomorrow: null == isDeferredToTomorrow
          ? _value.isDeferredToTomorrow
          : isDeferredToTomorrow // ignore: cast_nullable_to_non_nullable
              as bool,
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitConditionallyActiveImplCopyWith<$Res>
    implements $HabitConditionallyActiveCopyWith<$Res> {
  factory _$$HabitConditionallyActiveImplCopyWith(
          _$HabitConditionallyActiveImpl value,
          $Res Function(_$HabitConditionallyActiveImpl) then) =
      __$$HabitConditionallyActiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int habitConditionallyActiveId,
      DateTime? startOn,
      DateTime? endOn,
      DateTime? startVacationOn,
      DateTime? endVacationOn,
      bool isDeferredToTomorrow,
      int habitId});
}

/// @nodoc
class __$$HabitConditionallyActiveImplCopyWithImpl<$Res>
    extends _$HabitConditionallyActiveCopyWithImpl<$Res,
        _$HabitConditionallyActiveImpl>
    implements _$$HabitConditionallyActiveImplCopyWith<$Res> {
  __$$HabitConditionallyActiveImplCopyWithImpl(
      _$HabitConditionallyActiveImpl _value,
      $Res Function(_$HabitConditionallyActiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitConditionallyActive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitConditionallyActiveId = null,
    Object? startOn = freezed,
    Object? endOn = freezed,
    Object? startVacationOn = freezed,
    Object? endVacationOn = freezed,
    Object? isDeferredToTomorrow = null,
    Object? habitId = null,
  }) {
    return _then(_$HabitConditionallyActiveImpl(
      habitConditionallyActiveId: null == habitConditionallyActiveId
          ? _value.habitConditionallyActiveId
          : habitConditionallyActiveId // ignore: cast_nullable_to_non_nullable
              as int,
      startOn: freezed == startOn
          ? _value.startOn
          : startOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endOn: freezed == endOn
          ? _value.endOn
          : endOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startVacationOn: freezed == startVacationOn
          ? _value.startVacationOn
          : startVacationOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endVacationOn: freezed == endVacationOn
          ? _value.endVacationOn
          : endVacationOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeferredToTomorrow: null == isDeferredToTomorrow
          ? _value.isDeferredToTomorrow
          : isDeferredToTomorrow // ignore: cast_nullable_to_non_nullable
              as bool,
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitConditionallyActiveImpl implements _HabitConditionallyActive {
  const _$HabitConditionallyActiveImpl(
      {required this.habitConditionallyActiveId,
      required this.startOn,
      required this.endOn,
      required this.startVacationOn,
      required this.endVacationOn,
      required this.isDeferredToTomorrow,
      required this.habitId});

  factory _$HabitConditionallyActiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitConditionallyActiveImplFromJson(json);

  /// The primary-key / id of each Habit Cond.Act. entry. e.g. "2"
  @override
  final int habitConditionallyActiveId;

  /// When the Habit will start being active. e.g. "2025-06-25"
  @override
  final DateTime? startOn;

  /// When the Habit will end being active. e.g. "2025-06-30"
  @override
  final DateTime? endOn;

  /// When the Habit will deactivate for a vacation / period of time. e.g. "2025-07-25"
  @override
  final DateTime? startVacationOn;

  /// When the Habit will reactivate from a vacation. e.g. "2025-07-31"
  @override
  final DateTime? endVacationOn;

  /// Whether the Habit should be shifted to tomorrow. e.g. "true"
  @override
  final bool isDeferredToTomorrow;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  final int habitId;

  @override
  String toString() {
    return 'HabitConditionallyActive(habitConditionallyActiveId: $habitConditionallyActiveId, startOn: $startOn, endOn: $endOn, startVacationOn: $startVacationOn, endVacationOn: $endVacationOn, isDeferredToTomorrow: $isDeferredToTomorrow, habitId: $habitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitConditionallyActiveImpl &&
            (identical(other.habitConditionallyActiveId,
                    habitConditionallyActiveId) ||
                other.habitConditionallyActiveId ==
                    habitConditionallyActiveId) &&
            (identical(other.startOn, startOn) || other.startOn == startOn) &&
            (identical(other.endOn, endOn) || other.endOn == endOn) &&
            (identical(other.startVacationOn, startVacationOn) ||
                other.startVacationOn == startVacationOn) &&
            (identical(other.endVacationOn, endVacationOn) ||
                other.endVacationOn == endVacationOn) &&
            (identical(other.isDeferredToTomorrow, isDeferredToTomorrow) ||
                other.isDeferredToTomorrow == isDeferredToTomorrow) &&
            (identical(other.habitId, habitId) || other.habitId == habitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      habitConditionallyActiveId,
      startOn,
      endOn,
      startVacationOn,
      endVacationOn,
      isDeferredToTomorrow,
      habitId);

  /// Create a copy of HabitConditionallyActive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitConditionallyActiveImplCopyWith<_$HabitConditionallyActiveImpl>
      get copyWith => __$$HabitConditionallyActiveImplCopyWithImpl<
          _$HabitConditionallyActiveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitConditionallyActiveImplToJson(
      this,
    );
  }
}

abstract class _HabitConditionallyActive implements HabitConditionallyActive {
  const factory _HabitConditionallyActive(
      {required final int habitConditionallyActiveId,
      required final DateTime? startOn,
      required final DateTime? endOn,
      required final DateTime? startVacationOn,
      required final DateTime? endVacationOn,
      required final bool isDeferredToTomorrow,
      required final int habitId}) = _$HabitConditionallyActiveImpl;

  factory _HabitConditionallyActive.fromJson(Map<String, dynamic> json) =
      _$HabitConditionallyActiveImpl.fromJson;

  /// The primary-key / id of each Habit Cond.Act. entry. e.g. "2"
  @override
  int get habitConditionallyActiveId;

  /// When the Habit will start being active. e.g. "2025-06-25"
  @override
  DateTime? get startOn;

  /// When the Habit will end being active. e.g. "2025-06-30"
  @override
  DateTime? get endOn;

  /// When the Habit will deactivate for a vacation / period of time. e.g. "2025-07-25"
  @override
  DateTime? get startVacationOn;

  /// When the Habit will reactivate from a vacation. e.g. "2025-07-31"
  @override
  DateTime? get endVacationOn;

  /// Whether the Habit should be shifted to tomorrow. e.g. "true"
  @override
  bool get isDeferredToTomorrow;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  int get habitId;

  /// Create a copy of HabitConditionallyActive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitConditionallyActiveImplCopyWith<_$HabitConditionallyActiveImpl>
      get copyWith => throw _privateConstructorUsedError;
}
