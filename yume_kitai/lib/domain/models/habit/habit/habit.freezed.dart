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
  @JsonKey(name: 'habit_id')
  int? get habitId => throw _privateConstructorUsedError;

  /// The title of the Habit. e.g. "Run 5k"
  String get title => throw _privateConstructorUsedError;

  /// The group title of the Habit. e.g. "Exercise (Run 5k, Bike 30m)"
  @JsonKey(name: 'group_title')
  String? get groupTitle => throw _privateConstructorUsedError;

  /// The description of the Habit. e.g. "Running 5km to gain fitness"
  String get desc => throw _privateConstructorUsedError;

  /// The color hex value of the Habit. e.g. "FF7a3dbb"
  String get color => throw _privateConstructorUsedError;

  /// The IconData hex codepoint value of the Habit. e.g. "f653"
  String get icon => throw _privateConstructorUsedError;

  /// The bool value on whether the Habit is retired or not. e.g. "true"
  @JsonKey(name: 'is_retired')
  bool get isRetired => throw _privateConstructorUsedError;

  /// The bool value on whether the Habit is *undesirable* or not. e.g. "true"
  @JsonKey(name: 'is_negative')
  bool get isNegative => throw _privateConstructorUsedError;

  /// Foreign-key / PK id of the habit_conditionally_active table. e.g. "5"
  @JsonKey(name: 'habit_conditionallY_active_id')
  int? get habitConditionallyActiveId => throw _privateConstructorUsedError;

  /// Foreign-key / PK id of the chrono_label table. e.g. "5"
  @JsonKey(name: 'chrono_label_id')
  int? get chronoLabelId => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'habit_id') int? habitId,
      String title,
      @JsonKey(name: 'group_title') String? groupTitle,
      String desc,
      String color,
      String icon,
      @JsonKey(name: 'is_retired') bool isRetired,
      @JsonKey(name: 'is_negative') bool isNegative,
      @JsonKey(name: 'habit_conditionallY_active_id')
      int? habitConditionallyActiveId,
      @JsonKey(name: 'chrono_label_id') int? chronoLabelId});
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
    Object? habitId = freezed,
    Object? title = null,
    Object? groupTitle = freezed,
    Object? desc = null,
    Object? color = null,
    Object? icon = null,
    Object? isRetired = null,
    Object? isNegative = null,
    Object? habitConditionallyActiveId = freezed,
    Object? chronoLabelId = freezed,
  }) {
    return _then(_value.copyWith(
      habitId: freezed == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      groupTitle: freezed == groupTitle
          ? _value.groupTitle
          : groupTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      isRetired: null == isRetired
          ? _value.isRetired
          : isRetired // ignore: cast_nullable_to_non_nullable
              as bool,
      isNegative: null == isNegative
          ? _value.isNegative
          : isNegative // ignore: cast_nullable_to_non_nullable
              as bool,
      habitConditionallyActiveId: freezed == habitConditionallyActiveId
          ? _value.habitConditionallyActiveId
          : habitConditionallyActiveId // ignore: cast_nullable_to_non_nullable
              as int?,
      chronoLabelId: freezed == chronoLabelId
          ? _value.chronoLabelId
          : chronoLabelId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: 'habit_id') int? habitId,
      String title,
      @JsonKey(name: 'group_title') String? groupTitle,
      String desc,
      String color,
      String icon,
      @JsonKey(name: 'is_retired') bool isRetired,
      @JsonKey(name: 'is_negative') bool isNegative,
      @JsonKey(name: 'habit_conditionallY_active_id')
      int? habitConditionallyActiveId,
      @JsonKey(name: 'chrono_label_id') int? chronoLabelId});
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
    Object? habitId = freezed,
    Object? title = null,
    Object? groupTitle = freezed,
    Object? desc = null,
    Object? color = null,
    Object? icon = null,
    Object? isRetired = null,
    Object? isNegative = null,
    Object? habitConditionallyActiveId = freezed,
    Object? chronoLabelId = freezed,
  }) {
    return _then(_$HabitImpl(
      habitId: freezed == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      groupTitle: freezed == groupTitle
          ? _value.groupTitle
          : groupTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      isRetired: null == isRetired
          ? _value.isRetired
          : isRetired // ignore: cast_nullable_to_non_nullable
              as bool,
      isNegative: null == isNegative
          ? _value.isNegative
          : isNegative // ignore: cast_nullable_to_non_nullable
              as bool,
      habitConditionallyActiveId: freezed == habitConditionallyActiveId
          ? _value.habitConditionallyActiveId
          : habitConditionallyActiveId // ignore: cast_nullable_to_non_nullable
              as int?,
      chronoLabelId: freezed == chronoLabelId
          ? _value.chronoLabelId
          : chronoLabelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitImpl implements _Habit {
  const _$HabitImpl(
      {@JsonKey(name: 'habit_id') this.habitId,
      required this.title,
      @JsonKey(name: 'group_title') required this.groupTitle,
      required this.desc,
      required this.color,
      required this.icon,
      @JsonKey(name: 'is_retired') required this.isRetired,
      @JsonKey(name: 'is_negative') required this.isNegative,
      @JsonKey(name: 'habit_conditionallY_active_id')
      required this.habitConditionallyActiveId,
      @JsonKey(name: 'chrono_label_id') required this.chronoLabelId});

  factory _$HabitImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitImplFromJson(json);

  /// The primary-key / id of the Habit. e.g. "5"
  @override
  @JsonKey(name: 'habit_id')
  final int? habitId;

  /// The title of the Habit. e.g. "Run 5k"
  @override
  final String title;

  /// The group title of the Habit. e.g. "Exercise (Run 5k, Bike 30m)"
  @override
  @JsonKey(name: 'group_title')
  final String? groupTitle;

  /// The description of the Habit. e.g. "Running 5km to gain fitness"
  @override
  final String desc;

  /// The color hex value of the Habit. e.g. "FF7a3dbb"
  @override
  final String color;

  /// The IconData hex codepoint value of the Habit. e.g. "f653"
  @override
  final String icon;

  /// The bool value on whether the Habit is retired or not. e.g. "true"
  @override
  @JsonKey(name: 'is_retired')
  final bool isRetired;

  /// The bool value on whether the Habit is *undesirable* or not. e.g. "true"
  @override
  @JsonKey(name: 'is_negative')
  final bool isNegative;

  /// Foreign-key / PK id of the habit_conditionally_active table. e.g. "5"
  @override
  @JsonKey(name: 'habit_conditionallY_active_id')
  final int? habitConditionallyActiveId;

  /// Foreign-key / PK id of the chrono_label table. e.g. "5"
  @override
  @JsonKey(name: 'chrono_label_id')
  final int? chronoLabelId;

  @override
  String toString() {
    return 'Habit(habitId: $habitId, title: $title, groupTitle: $groupTitle, desc: $desc, color: $color, icon: $icon, isRetired: $isRetired, isNegative: $isNegative, habitConditionallyActiveId: $habitConditionallyActiveId, chronoLabelId: $chronoLabelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitImpl &&
            (identical(other.habitId, habitId) || other.habitId == habitId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.groupTitle, groupTitle) ||
                other.groupTitle == groupTitle) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.isRetired, isRetired) ||
                other.isRetired == isRetired) &&
            (identical(other.isNegative, isNegative) ||
                other.isNegative == isNegative) &&
            (identical(other.habitConditionallyActiveId,
                    habitConditionallyActiveId) ||
                other.habitConditionallyActiveId ==
                    habitConditionallyActiveId) &&
            (identical(other.chronoLabelId, chronoLabelId) ||
                other.chronoLabelId == chronoLabelId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      habitId,
      title,
      groupTitle,
      desc,
      color,
      icon,
      isRetired,
      isNegative,
      habitConditionallyActiveId,
      chronoLabelId);

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
      {@JsonKey(name: 'habit_id') final int? habitId,
      required final String title,
      @JsonKey(name: 'group_title') required final String? groupTitle,
      required final String desc,
      required final String color,
      required final String icon,
      @JsonKey(name: 'is_retired') required final bool isRetired,
      @JsonKey(name: 'is_negative') required final bool isNegative,
      @JsonKey(name: 'habit_conditionallY_active_id')
      required final int? habitConditionallyActiveId,
      @JsonKey(name: 'chrono_label_id')
      required final int? chronoLabelId}) = _$HabitImpl;

  factory _Habit.fromJson(Map<String, dynamic> json) = _$HabitImpl.fromJson;

  /// The primary-key / id of the Habit. e.g. "5"
  @override
  @JsonKey(name: 'habit_id')
  int? get habitId;

  /// The title of the Habit. e.g. "Run 5k"
  @override
  String get title;

  /// The group title of the Habit. e.g. "Exercise (Run 5k, Bike 30m)"
  @override
  @JsonKey(name: 'group_title')
  String? get groupTitle;

  /// The description of the Habit. e.g. "Running 5km to gain fitness"
  @override
  String get desc;

  /// The color hex value of the Habit. e.g. "FF7a3dbb"
  @override
  String get color;

  /// The IconData hex codepoint value of the Habit. e.g. "f653"
  @override
  String get icon;

  /// The bool value on whether the Habit is retired or not. e.g. "true"
  @override
  @JsonKey(name: 'is_retired')
  bool get isRetired;

  /// The bool value on whether the Habit is *undesirable* or not. e.g. "true"
  @override
  @JsonKey(name: 'is_negative')
  bool get isNegative;

  /// Foreign-key / PK id of the habit_conditionally_active table. e.g. "5"
  @override
  @JsonKey(name: 'habit_conditionallY_active_id')
  int? get habitConditionallyActiveId;

  /// Foreign-key / PK id of the chrono_label table. e.g. "5"
  @override
  @JsonKey(name: 'chrono_label_id')
  int? get chronoLabelId;

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitImplCopyWith<_$HabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
