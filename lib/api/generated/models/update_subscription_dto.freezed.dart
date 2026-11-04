// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_subscription_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateSubscriptionDto {

 UpdateSubscriptionDtoStatus? get status; DateTime? get expiresAt; int? get userLimit; String? get notes;
/// Create a copy of UpdateSubscriptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSubscriptionDtoCopyWith<UpdateSubscriptionDto> get copyWith => _$UpdateSubscriptionDtoCopyWithImpl<UpdateSubscriptionDto>(this as UpdateSubscriptionDto, _$identity);

  /// Serializes this UpdateSubscriptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdateSubscriptionDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSubscriptionDto&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.userLimit, _this.userLimit) || other.userLimit == _this.userLimit)&&(identical(other.notes, _this.notes) || other.notes == _this.notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdateSubscriptionDto;
  return Object.hash(runtimeType,_this.status,_this.expiresAt,_this.userLimit,_this.notes);
}

@override
String toString() {
  final _this = this as UpdateSubscriptionDto;
  return 'UpdateSubscriptionDto(status: ${_this.status}, expiresAt: ${_this.expiresAt}, userLimit: ${_this.userLimit}, notes: ${_this.notes})';
}


}

/// @nodoc
abstract mixin class $UpdateSubscriptionDtoCopyWith<$Res>  {
  factory $UpdateSubscriptionDtoCopyWith(UpdateSubscriptionDto value, $Res Function(UpdateSubscriptionDto) _then) = _$UpdateSubscriptionDtoCopyWithImpl;
@useResult
$Res call({
 UpdateSubscriptionDtoStatus? status, DateTime? expiresAt, int? userLimit, String? notes
});




}
/// @nodoc
class _$UpdateSubscriptionDtoCopyWithImpl<$Res>
    implements $UpdateSubscriptionDtoCopyWith<$Res> {
  _$UpdateSubscriptionDtoCopyWithImpl(this._self, this._then);

  final UpdateSubscriptionDto _self;
  final $Res Function(UpdateSubscriptionDto) _then;

/// Create a copy of UpdateSubscriptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? expiresAt = freezed,Object? userLimit = freezed,Object? notes = freezed,}) {
  return _then(UpdateSubscriptionDto(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UpdateSubscriptionDtoStatus?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userLimit: freezed == userLimit ? _self.userLimit : userLimit // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateSubscriptionDto].
extension UpdateSubscriptionDtoPatterns on UpdateSubscriptionDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateSubscriptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateSubscriptionDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateSubscriptionDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateSubscriptionDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateSubscriptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateSubscriptionDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UpdateSubscriptionDtoStatus? status,  DateTime? expiresAt,  int? userLimit,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateSubscriptionDto() when $default != null:
return $default(_that.status,_that.expiresAt,_that.userLimit,_that.notes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UpdateSubscriptionDtoStatus? status,  DateTime? expiresAt,  int? userLimit,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _UpdateSubscriptionDto():
return $default(_that.status,_that.expiresAt,_that.userLimit,_that.notes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UpdateSubscriptionDtoStatus? status,  DateTime? expiresAt,  int? userLimit,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _UpdateSubscriptionDto() when $default != null:
return $default(_that.status,_that.expiresAt,_that.userLimit,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateSubscriptionDto implements UpdateSubscriptionDto {
  const _UpdateSubscriptionDto({this.status, this.expiresAt, this.userLimit, this.notes});
  factory _UpdateSubscriptionDto.fromJson(Map<String, dynamic> json) => _$UpdateSubscriptionDtoFromJson(json);

@override final  UpdateSubscriptionDtoStatus? status;
@override final  DateTime? expiresAt;
@override final  int? userLimit;
@override final  String? notes;

/// Create a copy of UpdateSubscriptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSubscriptionDtoCopyWith<_UpdateSubscriptionDto> get copyWith => __$UpdateSubscriptionDtoCopyWithImpl<_UpdateSubscriptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateSubscriptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSubscriptionDto&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.userLimit, userLimit) || other.userLimit == userLimit)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,expiresAt,userLimit,notes);
}

@override
String toString() {
    return 'UpdateSubscriptionDto(status: $status, expiresAt: $expiresAt, userLimit: $userLimit, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$UpdateSubscriptionDtoCopyWith<$Res> implements $UpdateSubscriptionDtoCopyWith<$Res> {
  factory _$UpdateSubscriptionDtoCopyWith(_UpdateSubscriptionDto value, $Res Function(_UpdateSubscriptionDto) _then) = __$UpdateSubscriptionDtoCopyWithImpl;
@override @useResult
$Res call({
 UpdateSubscriptionDtoStatus? status, DateTime? expiresAt, int? userLimit, String? notes
});




}
/// @nodoc
class __$UpdateSubscriptionDtoCopyWithImpl<$Res>
    implements _$UpdateSubscriptionDtoCopyWith<$Res> {
  __$UpdateSubscriptionDtoCopyWithImpl(this._self, this._then);

  final _UpdateSubscriptionDto _self;
  final $Res Function(_UpdateSubscriptionDto) _then;

/// Create a copy of UpdateSubscriptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? expiresAt = freezed,Object? userLimit = freezed,Object? notes = freezed,}) {
  return _then(_UpdateSubscriptionDto(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UpdateSubscriptionDtoStatus?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userLimit: freezed == userLimit ? _self.userLimit : userLimit // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
