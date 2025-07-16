// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HabitReminder _$HabitReminderFromJson(Map<String, dynamic> json) {
  return _HabitReminder.fromJson(json);
}

/// @nodoc
mixin _$HabitReminder {
  /// The primary-key / id of each Habit reminder entry. e.g. "2"
  int get habitReminderId => throw _privateConstructorUsedError;

  /// The type of reminder for the Habit. e.g. "Daily, Monthly"
  String get type => throw _privateConstructorUsedError;

  /// The days / dates Habit should be reminded on. e.g. "Monday, 22nd"
  DateTime? get remindOn => throw _privateConstructorUsedError;

  /// The time Habit should be reminded at. e.g. "17:55"
  DateTime get remindAt => throw _privateConstructorUsedError;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  int get habitId => throw _privateConstructorUsedError;

  /// Serializes this HabitReminder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HabitReminder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitReminderCopyWith<HabitReminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitReminderCopyWith<$Res> {
  factory $HabitReminderCopyWith(
    HabitReminder value,
    $Res Function(HabitReminder) then,
  ) = _$HabitReminderCopyWithImpl<$Res, HabitReminder>;
  @useResult
  $Res call({
    int habitReminderId,
    String type,
    DateTime? remindOn,
    DateTime remindAt,
    int habitId,
  });
}

/// @nodoc
class _$HabitReminderCopyWithImpl<$Res, $Val extends HabitReminder>
    implements $HabitReminderCopyWith<$Res> {
  _$HabitReminderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitReminder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitReminderId = null,
    Object? type = null,
    Object? remindOn = freezed,
    Object? remindAt = null,
    Object? habitId = null,
  }) {
    return _then(
      _value.copyWith(
            habitReminderId: null == habitReminderId
                ? _value.habitReminderId
                : habitReminderId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$HabitReminderImplCopyWith<$Res>
    implements $HabitReminderCopyWith<$Res> {
  factory _$$HabitReminderImplCopyWith(
    _$HabitReminderImpl value,
    $Res Function(_$HabitReminderImpl) then,
  ) = __$$HabitReminderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int habitReminderId,
    String type,
    DateTime? remindOn,
    DateTime remindAt,
    int habitId,
  });
}

/// @nodoc
class __$$HabitReminderImplCopyWithImpl<$Res>
    extends _$HabitReminderCopyWithImpl<$Res, _$HabitReminderImpl>
    implements _$$HabitReminderImplCopyWith<$Res> {
  __$$HabitReminderImplCopyWithImpl(
    _$HabitReminderImpl _value,
    $Res Function(_$HabitReminderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HabitReminder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitReminderId = null,
    Object? type = null,
    Object? remindOn = freezed,
    Object? remindAt = null,
    Object? habitId = null,
  }) {
    return _then(
      _$HabitReminderImpl(
        habitReminderId: null == habitReminderId
            ? _value.habitReminderId
            : habitReminderId // ignore: cast_nullable_to_non_nullable
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
class _$HabitReminderImpl implements _HabitReminder {
  const _$HabitReminderImpl({
    required this.habitReminderId,
    required this.type,
    required this.remindOn,
    required this.remindAt,
    required this.habitId,
  });

  factory _$HabitReminderImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitReminderImplFromJson(json);

  /// The primary-key / id of each Habit reminder entry. e.g. "2"
  @override
  final int habitReminderId;

  /// The type of reminder for the Habit. e.g. "Daily, Monthly"
  @override
  final String type;

  /// The days / dates Habit should be reminded on. e.g. "Monday, 22nd"
  @override
  final DateTime? remindOn;

  /// The time Habit should be reminded at. e.g. "17:55"
  @override
  final DateTime remindAt;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  final int habitId;

  @override
  String toString() {
    return 'HabitReminder(habitReminderId: $habitReminderId, type: $type, remindOn: $remindOn, remindAt: $remindAt, habitId: $habitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitReminderImpl &&
            (identical(other.habitReminderId, habitReminderId) ||
                other.habitReminderId == habitReminderId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.remindOn, remindOn) ||
                other.remindOn == remindOn) &&
            (identical(other.remindAt, remindAt) ||
                other.remindAt == remindAt) &&
            (identical(other.habitId, habitId) || other.habitId == habitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    habitReminderId,
    type,
    remindOn,
    remindAt,
    habitId,
  );

  /// Create a copy of HabitReminder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitReminderImplCopyWith<_$HabitReminderImpl> get copyWith =>
      __$$HabitReminderImplCopyWithImpl<_$HabitReminderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitReminderImplToJson(this);
  }
}

abstract class _HabitReminder implements HabitReminder {
  const factory _HabitReminder({
    required final int habitReminderId,
    required final String type,
    required final DateTime? remindOn,
    required final DateTime remindAt,
    required final int habitId,
  }) = _$HabitReminderImpl;

  factory _HabitReminder.fromJson(Map<String, dynamic> json) =
      _$HabitReminderImpl.fromJson;

  /// The primary-key / id of each Habit reminder entry. e.g. "2"
  @override
  int get habitReminderId;

  /// The type of reminder for the Habit. e.g. "Daily, Monthly"
  @override
  String get type;

  /// The days / dates Habit should be reminded on. e.g. "Monday, 22nd"
  @override
  DateTime? get remindOn;

  /// The time Habit should be reminded at. e.g. "17:55"
  @override
  DateTime get remindAt;

  /// Foreign Key / PK id of the habit table. e.g. "5"
  @override
  int get habitId;

  /// Create a copy of HabitReminder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitReminderImplCopyWith<_$HabitReminderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
