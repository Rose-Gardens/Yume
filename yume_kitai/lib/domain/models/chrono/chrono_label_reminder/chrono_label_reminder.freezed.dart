// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chrono_label_reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChronoLabelReminder _$ChronoLabelReminderFromJson(Map<String, dynamic> json) {
  return _ChronoLabelReminder.fromJson(json);
}

/// @nodoc
mixin _$ChronoLabelReminder {
  /// The primary-key / id of each Chrono label reminder. e.g. "2"
  int get chronoLabelReminderId => throw _privateConstructorUsedError;

  /// The type of reminder for the label. e.g. "Daily, Monthly"
  String get type => throw _privateConstructorUsedError;

  /// The days / dates the label should be reminded on. e.g. "Monday, 22nd"
  DateTime? get remindOn => throw _privateConstructorUsedError;

  /// The time the label should be reminded at. e.g. "17:55"
  DateTime get remindAt => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  int get chronoLabelId => throw _privateConstructorUsedError;

  /// Serializes this ChronoLabelReminder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChronoLabelReminder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChronoLabelReminderCopyWith<ChronoLabelReminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChronoLabelReminderCopyWith<$Res> {
  factory $ChronoLabelReminderCopyWith(
          ChronoLabelReminder value, $Res Function(ChronoLabelReminder) then) =
      _$ChronoLabelReminderCopyWithImpl<$Res, ChronoLabelReminder>;
  @useResult
  $Res call(
      {int chronoLabelReminderId,
      String type,
      DateTime? remindOn,
      DateTime remindAt,
      int chronoLabelId});
}

/// @nodoc
class _$ChronoLabelReminderCopyWithImpl<$Res, $Val extends ChronoLabelReminder>
    implements $ChronoLabelReminderCopyWith<$Res> {
  _$ChronoLabelReminderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChronoLabelReminder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chronoLabelReminderId = null,
    Object? type = null,
    Object? remindOn = freezed,
    Object? remindAt = null,
    Object? chronoLabelId = null,
  }) {
    return _then(_value.copyWith(
      chronoLabelReminderId: null == chronoLabelReminderId
          ? _value.chronoLabelReminderId
          : chronoLabelReminderId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      remindOn: freezed == remindOn
          ? _value.remindOn
          : remindOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remindAt: null == remindAt
          ? _value.remindAt
          : remindAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      chronoLabelId: null == chronoLabelId
          ? _value.chronoLabelId
          : chronoLabelId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChronoLabelReminderImplCopyWith<$Res>
    implements $ChronoLabelReminderCopyWith<$Res> {
  factory _$$ChronoLabelReminderImplCopyWith(_$ChronoLabelReminderImpl value,
          $Res Function(_$ChronoLabelReminderImpl) then) =
      __$$ChronoLabelReminderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int chronoLabelReminderId,
      String type,
      DateTime? remindOn,
      DateTime remindAt,
      int chronoLabelId});
}

/// @nodoc
class __$$ChronoLabelReminderImplCopyWithImpl<$Res>
    extends _$ChronoLabelReminderCopyWithImpl<$Res, _$ChronoLabelReminderImpl>
    implements _$$ChronoLabelReminderImplCopyWith<$Res> {
  __$$ChronoLabelReminderImplCopyWithImpl(_$ChronoLabelReminderImpl _value,
      $Res Function(_$ChronoLabelReminderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChronoLabelReminder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chronoLabelReminderId = null,
    Object? type = null,
    Object? remindOn = freezed,
    Object? remindAt = null,
    Object? chronoLabelId = null,
  }) {
    return _then(_$ChronoLabelReminderImpl(
      chronoLabelReminderId: null == chronoLabelReminderId
          ? _value.chronoLabelReminderId
          : chronoLabelReminderId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      remindOn: freezed == remindOn
          ? _value.remindOn
          : remindOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remindAt: null == remindAt
          ? _value.remindAt
          : remindAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      chronoLabelId: null == chronoLabelId
          ? _value.chronoLabelId
          : chronoLabelId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChronoLabelReminderImpl implements _ChronoLabelReminder {
  const _$ChronoLabelReminderImpl(
      {required this.chronoLabelReminderId,
      required this.type,
      required this.remindOn,
      required this.remindAt,
      required this.chronoLabelId});

  factory _$ChronoLabelReminderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChronoLabelReminderImplFromJson(json);

  /// The primary-key / id of each Chrono label reminder. e.g. "2"
  @override
  final int chronoLabelReminderId;

  /// The type of reminder for the label. e.g. "Daily, Monthly"
  @override
  final String type;

  /// The days / dates the label should be reminded on. e.g. "Monday, 22nd"
  @override
  final DateTime? remindOn;

  /// The time the label should be reminded at. e.g. "17:55"
  @override
  final DateTime remindAt;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  @override
  final int chronoLabelId;

  @override
  String toString() {
    return 'ChronoLabelReminder(chronoLabelReminderId: $chronoLabelReminderId, type: $type, remindOn: $remindOn, remindAt: $remindAt, chronoLabelId: $chronoLabelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChronoLabelReminderImpl &&
            (identical(other.chronoLabelReminderId, chronoLabelReminderId) ||
                other.chronoLabelReminderId == chronoLabelReminderId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.remindOn, remindOn) ||
                other.remindOn == remindOn) &&
            (identical(other.remindAt, remindAt) ||
                other.remindAt == remindAt) &&
            (identical(other.chronoLabelId, chronoLabelId) ||
                other.chronoLabelId == chronoLabelId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chronoLabelReminderId, type,
      remindOn, remindAt, chronoLabelId);

  /// Create a copy of ChronoLabelReminder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChronoLabelReminderImplCopyWith<_$ChronoLabelReminderImpl> get copyWith =>
      __$$ChronoLabelReminderImplCopyWithImpl<_$ChronoLabelReminderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChronoLabelReminderImplToJson(
      this,
    );
  }
}

abstract class _ChronoLabelReminder implements ChronoLabelReminder {
  const factory _ChronoLabelReminder(
      {required final int chronoLabelReminderId,
      required final String type,
      required final DateTime? remindOn,
      required final DateTime remindAt,
      required final int chronoLabelId}) = _$ChronoLabelReminderImpl;

  factory _ChronoLabelReminder.fromJson(Map<String, dynamic> json) =
      _$ChronoLabelReminderImpl.fromJson;

  /// The primary-key / id of each Chrono label reminder. e.g. "2"
  @override
  int get chronoLabelReminderId;

  /// The type of reminder for the label. e.g. "Daily, Monthly"
  @override
  String get type;

  /// The days / dates the label should be reminded on. e.g. "Monday, 22nd"
  @override
  DateTime? get remindOn;

  /// The time the label should be reminded at. e.g. "17:55"
  @override
  DateTime get remindAt;

  /// Foreign Key / PK id of the Chrono label table. e.g. "5"
  @override
  int get chronoLabelId;

  /// Create a copy of ChronoLabelReminder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChronoLabelReminderImplCopyWith<_$ChronoLabelReminderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
