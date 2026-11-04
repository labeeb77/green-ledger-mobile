// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateUserDto {

 String get name; String get phone; CreateUserDtoRole get role;
/// Create a copy of CreateUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserDtoCopyWith<CreateUserDto> get copyWith => _$CreateUserDtoCopyWithImpl<CreateUserDto>(this as CreateUserDto, _$identity);

  /// Serializes this CreateUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateUserDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.role, _this.role) || other.role == _this.role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateUserDto;
  return Object.hash(runtimeType,_this.name,_this.phone,_this.role);
}

@override
String toString() {
  final _this = this as CreateUserDto;
  return 'CreateUserDto(name: ${_this.name}, phone: ${_this.phone}, role: ${_this.role})';
}


}

/// @nodoc
abstract mixin class $CreateUserDtoCopyWith<$Res>  {
  factory $CreateUserDtoCopyWith(CreateUserDto value, $Res Function(CreateUserDto) _then) = _$CreateUserDtoCopyWithImpl;
@useResult
$Res call({
 String name, String phone, CreateUserDtoRole role
});




}
/// @nodoc
class _$CreateUserDtoCopyWithImpl<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  _$CreateUserDtoCopyWithImpl(this._self, this._then);

  final CreateUserDto _self;
  final $Res Function(CreateUserDto) _then;

/// Create a copy of CreateUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phone = null,Object? role = null,}) {
  return _then(CreateUserDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as CreateUserDtoRole,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateUserDto].
extension CreateUserDtoPatterns on CreateUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateUserDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String phone,  CreateUserDtoRole role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateUserDto() when $default != null:
return $default(_that.name,_that.phone,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String phone,  CreateUserDtoRole role)  $default,) {final _that = this;
switch (_that) {
case _CreateUserDto():
return $default(_that.name,_that.phone,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String phone,  CreateUserDtoRole role)?  $default,) {final _that = this;
switch (_that) {
case _CreateUserDto() when $default != null:
return $default(_that.name,_that.phone,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateUserDto implements CreateUserDto {
  const _CreateUserDto({required this.name, required this.phone, required this.role});
  factory _CreateUserDto.fromJson(Map<String, dynamic> json) => _$CreateUserDtoFromJson(json);

@override final  String name;
@override final  String phone;
@override final  CreateUserDtoRole role;

/// Create a copy of CreateUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUserDtoCopyWith<_CreateUserDto> get copyWith => __$CreateUserDtoCopyWithImpl<_CreateUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserDto&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,phone,role);
}

@override
String toString() {
    return 'CreateUserDto(name: $name, phone: $phone, role: $role)';
}


}

/// @nodoc
abstract mixin class _$CreateUserDtoCopyWith<$Res> implements $CreateUserDtoCopyWith<$Res> {
  factory _$CreateUserDtoCopyWith(_CreateUserDto value, $Res Function(_CreateUserDto) _then) = __$CreateUserDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String phone, CreateUserDtoRole role
});




}
/// @nodoc
class __$CreateUserDtoCopyWithImpl<$Res>
    implements _$CreateUserDtoCopyWith<$Res> {
  __$CreateUserDtoCopyWithImpl(this._self, this._then);

  final _CreateUserDto _self;
  final $Res Function(_CreateUserDto) _then;

/// Create a copy of CreateUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = null,Object? role = null,}) {
  return _then(_CreateUserDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as CreateUserDtoRole,
  ));
}


}

// dart format on
