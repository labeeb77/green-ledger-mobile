// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_push_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterPushTokenDto {

 RegisterPushTokenDtoPlatform get platform; String get token;
/// Create a copy of RegisterPushTokenDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterPushTokenDtoCopyWith<RegisterPushTokenDto> get copyWith => _$RegisterPushTokenDtoCopyWithImpl<RegisterPushTokenDto>(this as RegisterPushTokenDto, _$identity);

  /// Serializes this RegisterPushTokenDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RegisterPushTokenDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterPushTokenDto&&(identical(other.platform, _this.platform) || other.platform == _this.platform)&&(identical(other.token, _this.token) || other.token == _this.token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RegisterPushTokenDto;
  return Object.hash(runtimeType,_this.platform,_this.token);
}

@override
String toString() {
  final _this = this as RegisterPushTokenDto;
  return 'RegisterPushTokenDto(platform: ${_this.platform}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $RegisterPushTokenDtoCopyWith<$Res>  {
  factory $RegisterPushTokenDtoCopyWith(RegisterPushTokenDto value, $Res Function(RegisterPushTokenDto) _then) = _$RegisterPushTokenDtoCopyWithImpl;
@useResult
$Res call({
 RegisterPushTokenDtoPlatform platform, String token
});




}
/// @nodoc
class _$RegisterPushTokenDtoCopyWithImpl<$Res>
    implements $RegisterPushTokenDtoCopyWith<$Res> {
  _$RegisterPushTokenDtoCopyWithImpl(this._self, this._then);

  final RegisterPushTokenDto _self;
  final $Res Function(RegisterPushTokenDto) _then;

/// Create a copy of RegisterPushTokenDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? platform = null,Object? token = null,}) {
  return _then(RegisterPushTokenDto(
platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as RegisterPushTokenDtoPlatform,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterPushTokenDto].
extension RegisterPushTokenDtoPatterns on RegisterPushTokenDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterPushTokenDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterPushTokenDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterPushTokenDto value)  $default,){
final _that = this;
switch (_that) {
case _RegisterPushTokenDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterPushTokenDto value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterPushTokenDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RegisterPushTokenDtoPlatform platform,  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterPushTokenDto() when $default != null:
return $default(_that.platform,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RegisterPushTokenDtoPlatform platform,  String token)  $default,) {final _that = this;
switch (_that) {
case _RegisterPushTokenDto():
return $default(_that.platform,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RegisterPushTokenDtoPlatform platform,  String token)?  $default,) {final _that = this;
switch (_that) {
case _RegisterPushTokenDto() when $default != null:
return $default(_that.platform,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterPushTokenDto implements RegisterPushTokenDto {
  const _RegisterPushTokenDto({required this.platform, required this.token});
  factory _RegisterPushTokenDto.fromJson(Map<String, dynamic> json) => _$RegisterPushTokenDtoFromJson(json);

@override final  RegisterPushTokenDtoPlatform platform;
@override final  String token;

/// Create a copy of RegisterPushTokenDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterPushTokenDtoCopyWith<_RegisterPushTokenDto> get copyWith => __$RegisterPushTokenDtoCopyWithImpl<_RegisterPushTokenDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterPushTokenDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterPushTokenDto&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,platform,token);
}

@override
String toString() {
    return 'RegisterPushTokenDto(platform: $platform, token: $token)';
}


}

/// @nodoc
abstract mixin class _$RegisterPushTokenDtoCopyWith<$Res> implements $RegisterPushTokenDtoCopyWith<$Res> {
  factory _$RegisterPushTokenDtoCopyWith(_RegisterPushTokenDto value, $Res Function(_RegisterPushTokenDto) _then) = __$RegisterPushTokenDtoCopyWithImpl;
@override @useResult
$Res call({
 RegisterPushTokenDtoPlatform platform, String token
});




}
/// @nodoc
class __$RegisterPushTokenDtoCopyWithImpl<$Res>
    implements _$RegisterPushTokenDtoCopyWith<$Res> {
  __$RegisterPushTokenDtoCopyWithImpl(this._self, this._then);

  final _RegisterPushTokenDto _self;
  final $Res Function(_RegisterPushTokenDto) _then;

/// Create a copy of RegisterPushTokenDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? platform = null,Object? token = null,}) {
  return _then(_RegisterPushTokenDto(
platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as RegisterPushTokenDtoPlatform,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
