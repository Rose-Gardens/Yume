// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chrono_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChronoLabel _$ChronoLabelFromJson(Map<String, dynamic> json) {
  return _ChronoLabel.fromJson(json);
}

/// @nodoc
mixin _$ChronoLabel {
  /// The primary-key / id of each Chrono label entry. e.g. "2"
  int get chronoLabelId => throw _privateConstructorUsedError;

  /// The title of the label. e.g. "Animation"
  String get title => throw _privateConstructorUsedError;

  /// The group title of the label. e.g. "Coding (Dart, Python)"
  String get groupTitle => throw _privateConstructorUsedError;

  /// The color hex value of the label. e.g. "FF7a3dbb"
  String get color => throw _privateConstructorUsedError;

  /// The bool value on whether the label is *undesirable* or not. e.g. "true"
  bool get isNegative => throw _privateConstructorUsedError;

  /// Serializes this ChronoLabel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChronoLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChronoLabelCopyWith<ChronoLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChronoLabelCopyWith<$Res> {
  factory $ChronoLabelCopyWith(
          ChronoLabel value, $Res Function(ChronoLabel) then) =
      _$ChronoLabelCopyWithImpl<$Res, ChronoLabel>;
  @useResult
  $Res call(
      {int chronoLabelId,
      String title,
      String groupTitle,
      String color,
      bool isNegative});
}

/// @nodoc
class _$ChronoLabelCopyWithImpl<$Res, $Val extends ChronoLabel>
    implements $ChronoLabelCopyWith<$Res> {
  _$ChronoLabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChronoLabel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chronoLabelId = null,
    Object? title = null,
    Object? groupTitle = null,
    Object? color = null,
    Object? isNegative = null,
  }) {
    return _then(_value.copyWith(
      chronoLabelId: null == chronoLabelId
          ? _value.chronoLabelId
          : chronoLabelId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      groupTitle: null == groupTitle
          ? _value.groupTitle
          : groupTitle // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      isNegative: null == isNegative
          ? _value.isNegative
          : isNegative // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChronoLabelImplCopyWith<$Res>
    implements $ChronoLabelCopyWith<$Res> {
  factory _$$ChronoLabelImplCopyWith(
          _$ChronoLabelImpl value, $Res Function(_$ChronoLabelImpl) then) =
      __$$ChronoLabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int chronoLabelId,
      String title,
      String groupTitle,
      String color,
      bool isNegative});
}

/// @nodoc
class __$$ChronoLabelImplCopyWithImpl<$Res>
    extends _$ChronoLabelCopyWithImpl<$Res, _$ChronoLabelImpl>
    implements _$$ChronoLabelImplCopyWith<$Res> {
  __$$ChronoLabelImplCopyWithImpl(
      _$ChronoLabelImpl _value, $Res Function(_$ChronoLabelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChronoLabel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chronoLabelId = null,
    Object? title = null,
    Object? groupTitle = null,
    Object? color = null,
    Object? isNegative = null,
  }) {
    return _then(_$ChronoLabelImpl(
      chronoLabelId: null == chronoLabelId
          ? _value.chronoLabelId
          : chronoLabelId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      groupTitle: null == groupTitle
          ? _value.groupTitle
          : groupTitle // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      isNegative: null == isNegative
          ? _value.isNegative
          : isNegative // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChronoLabelImpl implements _ChronoLabel {
  const _$ChronoLabelImpl(
      {required this.chronoLabelId,
      required this.title,
      required this.groupTitle,
      required this.color,
      required this.isNegative});

  factory _$ChronoLabelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChronoLabelImplFromJson(json);

  /// The primary-key / id of each Chrono label entry. e.g. "2"
  @override
  final int chronoLabelId;

  /// The title of the label. e.g. "Animation"
  @override
  final String title;

  /// The group title of the label. e.g. "Coding (Dart, Python)"
  @override
  final String groupTitle;

  /// The color hex value of the label. e.g. "FF7a3dbb"
  @override
  final String color;

  /// The bool value on whether the label is *undesirable* or not. e.g. "true"
  @override
  final bool isNegative;

  @override
  String toString() {
    return 'ChronoLabel(chronoLabelId: $chronoLabelId, title: $title, groupTitle: $groupTitle, color: $color, isNegative: $isNegative)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChronoLabelImpl &&
            (identical(other.chronoLabelId, chronoLabelId) ||
                other.chronoLabelId == chronoLabelId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.groupTitle, groupTitle) ||
                other.groupTitle == groupTitle) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isNegative, isNegative) ||
                other.isNegative == isNegative));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, chronoLabelId, title, groupTitle, color, isNegative);

  /// Create a copy of ChronoLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChronoLabelImplCopyWith<_$ChronoLabelImpl> get copyWith =>
      __$$ChronoLabelImplCopyWithImpl<_$ChronoLabelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChronoLabelImplToJson(
      this,
    );
  }
}

abstract class _ChronoLabel implements ChronoLabel {
  const factory _ChronoLabel(
      {required final int chronoLabelId,
      required final String title,
      required final String groupTitle,
      required final String color,
      required final bool isNegative}) = _$ChronoLabelImpl;

  factory _ChronoLabel.fromJson(Map<String, dynamic> json) =
      _$ChronoLabelImpl.fromJson;

  /// The primary-key / id of each Chrono label entry. e.g. "2"
  @override
  int get chronoLabelId;

  /// The title of the label. e.g. "Animation"
  @override
  String get title;

  /// The group title of the label. e.g. "Coding (Dart, Python)"
  @override
  String get groupTitle;

  /// The color hex value of the label. e.g. "FF7a3dbb"
  @override
  String get color;

  /// The bool value on whether the label is *undesirable* or not. e.g. "true"
  @override
  bool get isNegative;

  /// Create a copy of ChronoLabel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChronoLabelImplCopyWith<_$ChronoLabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
