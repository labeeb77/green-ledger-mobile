// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserDto {

 String? get name; UpdateUserDtoRole? get role; bool? get active;
/// Create a copy of UpdateUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserDtoCopyWith<UpdateUserDto> get copyWith => _$UpdateUserDtoCopyWithImpl<UpdateUserDto>(this as UpdateUserDto, _$identity);

  /// Serializes this UpdateUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdateUserDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdateUserDto;
  return Object.hash(runtimeType,_this.name,_this.role,_this.active);
}

@override
String toString() {
  final _this = this as UpdateUserDto;
  return 'UpdateUserDto(name: ${_this.name}, role: ${_this.role}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $UpdateUserDtoCopyWith<$Res>  {
  factory $UpdateUserDtoCopyWith(UpdateUserDto value, $Res Function(UpdateUserDto) _then) = _$UpdateUserDtoCopyWithImpl;
@useResult
$Res call({
 String? name, UpdateUserDtoRole? role, bool? active
});




}
/// @nodoc
class _$UpdateUserDtoCopyWithImpl<$Res>
    implements $UpdateUserDtoCopyWith<$Res> {
  _$UpdateUserDtoCopyWithImpl(this._self, this._then);

  final UpdateUserDto _self;
  final $Res Function(UpdateUserDto) _then;

/// Create a copy of UpdateUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? role = freezed,Object? active = freezed,}) {
  return _then(UpdateUserDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UpdateUserDtoRole?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateUserDto].
extension UpdateUserDtoPatterns on UpdateUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  UpdateUserDtoRole? role,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUserDto() when $default != null:
return $default(_that.name,_that.role,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  UpdateUserDtoRole? role,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdateUserDto():
return $default(_that.name,_that.role,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  UpdateUserDtoRole? role,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUserDto() when $default != null:
return $default(_that.name,_that.role,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateUserDto implements UpdateUserDto {
  const _UpdateUserDto({this.name, this.role, this.active});
  factory _UpdateUserDto.fromJson(Map<String, dynamic> json) => _$UpdateUserDtoFromJson(json);

@override final  String? name;
@override final  UpdateUserDtoRole? role;
@override final  bool? active;

/// Create a copy of UpdateUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserDtoCopyWith<_UpdateUserDto> get copyWith => __$UpdateUserDtoCopyWithImpl<_UpdateUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserDto&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,role,active);
}

@override
String toString() {
    return 'UpdateUserDto(name: $name, role: $role, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserDtoCopyWith<$Res> implements $UpdateUserDtoCopyWith<$Res> {
  factory _$UpdateUserDtoCopyWith(_UpdateUserDto value, $Res Function(_UpdateUserDto) _then) = __$UpdateUserDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, UpdateUserDtoRole? role, bool? active
});




}
/// @nodoc
class __$UpdateUserDtoCopyWithImpl<$Res>
    implements _$UpdateUserDtoCopyWith<$Res> {
  __$UpdateUserDtoCopyWithImpl(this._self, this._then);

  final _UpdateUserDto _self;
  final $Res Function(_UpdateUserDto) _then;

/// Create a copy of UpdateUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? role = freezed,Object? active = freezed,}) {
  return _then(_UpdateUserDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UpdateUserDtoRole?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
