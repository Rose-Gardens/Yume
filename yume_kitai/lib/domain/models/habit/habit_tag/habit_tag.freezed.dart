// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HabitTag _$HabitTagFromJson(Map<String, dynamic> json) {
  return _HabitTag.fromJson(json);
}

/// @nodoc
mixin _$HabitTag {
  /// The primary-key / id of each Habit tag entry. e.g. "2"
  int get habitTagId => throw _privateConstructorUsedError;

  /// The title of the Habit tag. e.g. "Design Work"
  String get title => throw _privateConstructorUsedError;

  /// The color hex value of the Habit tag. e.g. "FF7a3dbb"
  String? get color => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  int get habitId => throw _privateConstructorUsedError;

  /// Serializes this HabitTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HabitTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitTagCopyWith<HabitTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitTagCopyWith<$Res> {
  factory $HabitTagCopyWith(HabitTag value, $Res Function(HabitTag) then) =
      _$HabitTagCopyWithImpl<$Res, HabitTag>;
  @useResult
  $Res call({int habitTagId, String title, String? color, int habitId});
}

/// @nodoc
class _$HabitTagCopyWithImpl<$Res, $Val extends HabitTag>
    implements $HabitTagCopyWith<$Res> {
  _$HabitTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitTagId = null,
    Object? title = null,
    Object? color = freezed,
    Object? habitId = null,
  }) {
    return _then(_value.copyWith(
      habitTagId: null == habitTagId
          ? _value.habitTagId
          : habitTagId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitTagImplCopyWith<$Res>
    implements $HabitTagCopyWith<$Res> {
  factory _$$HabitTagImplCopyWith(
          _$HabitTagImpl value, $Res Function(_$HabitTagImpl) then) =
      __$$HabitTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int habitTagId, String title, String? color, int habitId});
}

/// @nodoc
class __$$HabitTagImplCopyWithImpl<$Res>
    extends _$HabitTagCopyWithImpl<$Res, _$HabitTagImpl>
    implements _$$HabitTagImplCopyWith<$Res> {
  __$$HabitTagImplCopyWithImpl(
      _$HabitTagImpl _value, $Res Function(_$HabitTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitTagId = null,
    Object? title = null,
    Object? color = freezed,
    Object? habitId = null,
  }) {
    return _then(_$HabitTagImpl(
      habitTagId: null == habitTagId
          ? _value.habitTagId
          : habitTagId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitTagImpl implements _HabitTag {
  const _$HabitTagImpl(
      {required this.habitTagId,
      required this.title,
      required this.color,
      required this.habitId});

  factory _$HabitTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitTagImplFromJson(json);

  /// The primary-key / id of each Habit tag entry. e.g. "2"
  @override
  final int habitTagId;

  /// The title of the Habit tag. e.g. "Design Work"
  @override
  final String title;

  /// The color hex value of the Habit tag. e.g. "FF7a3dbb"
  @override
  final String? color;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  final int habitId;

  @override
  String toString() {
    return 'HabitTag(habitTagId: $habitTagId, title: $title, color: $color, habitId: $habitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitTagImpl &&
            (identical(other.habitTagId, habitTagId) ||
                other.habitTagId == habitTagId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.habitId, habitId) || other.habitId == habitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, habitTagId, title, color, habitId);

  /// Create a copy of HabitTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitTagImplCopyWith<_$HabitTagImpl> get copyWith =>
      __$$HabitTagImplCopyWithImpl<_$HabitTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitTagImplToJson(
      this,
    );
  }
}

abstract class _HabitTag implements HabitTag {
  const factory _HabitTag(
      {required final int habitTagId,
      required final String title,
      required final String? color,
      required final int habitId}) = _$HabitTagImpl;

  factory _HabitTag.fromJson(Map<String, dynamic> json) =
      _$HabitTagImpl.fromJson;

  /// The primary-key / id of each Habit tag entry. e.g. "2"
  @override
  int get habitTagId;

  /// The title of the Habit tag. e.g. "Design Work"
  @override
  String get title;

  /// The color hex value of the Habit tag. e.g. "FF7a3dbb"
  @override
  String? get color;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  int get habitId;

  /// Create a copy of HabitTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitTagImplCopyWith<_$HabitTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
