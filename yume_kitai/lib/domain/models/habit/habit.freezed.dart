// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Habit _$HabitFromJson(Map<String, dynamic> json) {
  return _Habit.fromJson(json);
}

/// @nodoc
mixin _$Habit {
  /// The primary-key / id of the Habit. e.g. "5"
  int get habitId => throw _privateConstructorUsedError;

  /// The title of the Habit. e.g. "Run 5k"
  String get habitTitle => throw _privateConstructorUsedError;

  /// The frequency value per week (number or csv-days) of the Habit. e.g. "M, T, Th"
  String get habitFreq => throw _privateConstructorUsedError;

  /// The description of the Habit. e.g. "Running 5km to gain fitness"
  String get habitDesc => throw _privateConstructorUsedError;

  /// The color hex value of the Habit. e.g. "0xFF7a3dbb"
  String get habitColor => throw _privateConstructorUsedError;

  /// The icon string value of the Habit. e.g. "Icons.directions_run"
  String get habitIcon => throw _privateConstructorUsedError;

  /// Serializes this Habit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitCopyWith<Habit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCopyWith<$Res> {
  factory $HabitCopyWith(Habit value, $Res Function(Habit) then) =
      _$HabitCopyWithImpl<$Res, Habit>;
  @useResult
  $Res call(
      {int habitId,
      String habitTitle,
      String habitFreq,
      String habitDesc,
      String habitColor,
      String habitIcon});
}

/// @nodoc
class _$HabitCopyWithImpl<$Res, $Val extends Habit>
    implements $HabitCopyWith<$Res> {
  _$HabitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
    Object? habitTitle = null,
    Object? habitFreq = null,
    Object? habitDesc = null,
    Object? habitColor = null,
    Object? habitIcon = null,
  }) {
    return _then(_value.copyWith(
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
      habitTitle: null == habitTitle
          ? _value.habitTitle
          : habitTitle // ignore: cast_nullable_to_non_nullable
              as String,
      habitFreq: null == habitFreq
          ? _value.habitFreq
          : habitFreq // ignore: cast_nullable_to_non_nullable
              as String,
      habitDesc: null == habitDesc
          ? _value.habitDesc
          : habitDesc // ignore: cast_nullable_to_non_nullable
              as String,
      habitColor: null == habitColor
          ? _value.habitColor
          : habitColor // ignore: cast_nullable_to_non_nullable
              as String,
      habitIcon: null == habitIcon
          ? _value.habitIcon
          : habitIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitImplCopyWith<$Res> implements $HabitCopyWith<$Res> {
  factory _$$HabitImplCopyWith(
          _$HabitImpl value, $Res Function(_$HabitImpl) then) =
      __$$HabitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int habitId,
      String habitTitle,
      String habitFreq,
      String habitDesc,
      String habitColor,
      String habitIcon});
}

/// @nodoc
class __$$HabitImplCopyWithImpl<$Res>
    extends _$HabitCopyWithImpl<$Res, _$HabitImpl>
    implements _$$HabitImplCopyWith<$Res> {
  __$$HabitImplCopyWithImpl(
      _$HabitImpl _value, $Res Function(_$HabitImpl) _then)
      : super(_value, _then);

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
    Object? habitTitle = null,
    Object? habitFreq = null,
    Object? habitDesc = null,
    Object? habitColor = null,
    Object? habitIcon = null,
  }) {
    return _then(_$HabitImpl(
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
      habitTitle: null == habitTitle
          ? _value.habitTitle
          : habitTitle // ignore: cast_nullable_to_non_nullable
              as String,
      habitFreq: null == habitFreq
          ? _value.habitFreq
          : habitFreq // ignore: cast_nullable_to_non_nullable
              as String,
      habitDesc: null == habitDesc
          ? _value.habitDesc
          : habitDesc // ignore: cast_nullable_to_non_nullable
              as String,
      habitColor: null == habitColor
          ? _value.habitColor
          : habitColor // ignore: cast_nullable_to_non_nullable
              as String,
      habitIcon: null == habitIcon
          ? _value.habitIcon
          : habitIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitImpl implements _Habit {
  const _$HabitImpl(
      {required this.habitId,
      required this.habitTitle,
      required this.habitFreq,
      required this.habitDesc,
      required this.habitColor,
      required this.habitIcon});

  factory _$HabitImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitImplFromJson(json);

  /// The primary-key / id of the Habit. e.g. "5"
  @override
  final int habitId;

  /// The title of the Habit. e.g. "Run 5k"
  @override
  final String habitTitle;

  /// The frequency value per week (number or csv-days) of the Habit. e.g. "M, T, Th"
  @override
  final String habitFreq;

  /// The description of the Habit. e.g. "Running 5km to gain fitness"
  @override
  final String habitDesc;

  /// The color hex value of the Habit. e.g. "0xFF7a3dbb"
  @override
  final String habitColor;

  /// The icon string value of the Habit. e.g. "Icons.directions_run"
  @override
  final String habitIcon;

  @override
  String toString() {
    return 'Habit(habitId: $habitId, habitTitle: $habitTitle, habitFreq: $habitFreq, habitDesc: $habitDesc, habitColor: $habitColor, habitIcon: $habitIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitImpl &&
            (identical(other.habitId, habitId) || other.habitId == habitId) &&
            (identical(other.habitTitle, habitTitle) ||
                other.habitTitle == habitTitle) &&
            (identical(other.habitFreq, habitFreq) ||
                other.habitFreq == habitFreq) &&
            (identical(other.habitDesc, habitDesc) ||
                other.habitDesc == habitDesc) &&
            (identical(other.habitColor, habitColor) ||
                other.habitColor == habitColor) &&
            (identical(other.habitIcon, habitIcon) ||
                other.habitIcon == habitIcon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, habitId, habitTitle, habitFreq,
      habitDesc, habitColor, habitIcon);

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitImplCopyWith<_$HabitImpl> get copyWith =>
      __$$HabitImplCopyWithImpl<_$HabitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitImplToJson(
      this,
    );
  }
}

abstract class _Habit implements Habit {
  const factory _Habit(
      {required final int habitId,
      required final String habitTitle,
      required final String habitFreq,
      required final String habitDesc,
      required final String habitColor,
      required final String habitIcon}) = _$HabitImpl;

  factory _Habit.fromJson(Map<String, dynamic> json) = _$HabitImpl.fromJson;

  /// The primary-key / id of the Habit. e.g. "5"
  @override
  int get habitId;

  /// The title of the Habit. e.g. "Run 5k"
  @override
  String get habitTitle;

  /// The frequency value per week (number or csv-days) of the Habit. e.g. "M, T, Th"
  @override
  String get habitFreq;

  /// The description of the Habit. e.g. "Running 5km to gain fitness"
  @override
  String get habitDesc;

  /// The color hex value of the Habit. e.g. "0xFF7a3dbb"
  @override
  String get habitColor;

  /// The icon string value of the Habit. e.g. "Icons.directions_run"
  @override
  String get habitIcon;

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitImplCopyWith<_$HabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
