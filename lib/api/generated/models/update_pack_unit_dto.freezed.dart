// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_pack_unit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePackUnitDto {

 String? get name; bool? get active;
/// Create a copy of UpdatePackUnitDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePackUnitDtoCopyWith<UpdatePackUnitDto> get copyWith => _$UpdatePackUnitDtoCopyWithImpl<UpdatePackUnitDto>(this as UpdatePackUnitDto, _$identity);

  /// Serializes this UpdatePackUnitDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdatePackUnitDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePackUnitDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdatePackUnitDto;
  return Object.hash(runtimeType,_this.name,_this.active);
}

@override
String toString() {
  final _this = this as UpdatePackUnitDto;
  return 'UpdatePackUnitDto(name: ${_this.name}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $UpdatePackUnitDtoCopyWith<$Res>  {
  factory $UpdatePackUnitDtoCopyWith(UpdatePackUnitDto value, $Res Function(UpdatePackUnitDto) _then) = _$UpdatePackUnitDtoCopyWithImpl;
@useResult
$Res call({
 String? name, bool? active
});




}
/// @nodoc
class _$UpdatePackUnitDtoCopyWithImpl<$Res>
    implements $UpdatePackUnitDtoCopyWith<$Res> {
  _$UpdatePackUnitDtoCopyWithImpl(this._self, this._then);

  final UpdatePackUnitDto _self;
  final $Res Function(UpdatePackUnitDto) _then;

/// Create a copy of UpdatePackUnitDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? active = freezed,}) {
  return _then(UpdatePackUnitDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePackUnitDto].
extension UpdatePackUnitDtoPatterns on UpdatePackUnitDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePackUnitDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePackUnitDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePackUnitDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePackUnitDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePackUnitDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePackUnitDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePackUnitDto() when $default != null:
return $default(_that.name,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdatePackUnitDto():
return $default(_that.name,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePackUnitDto() when $default != null:
return $default(_that.name,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdatePackUnitDto implements UpdatePackUnitDto {
  const _UpdatePackUnitDto({this.name, this.active});
  factory _UpdatePackUnitDto.fromJson(Map<String, dynamic> json) => _$UpdatePackUnitDtoFromJson(json);

@override final  String? name;
@override final  bool? active;

/// Create a copy of UpdatePackUnitDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePackUnitDtoCopyWith<_UpdatePackUnitDto> get copyWith => __$UpdatePackUnitDtoCopyWithImpl<_UpdatePackUnitDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePackUnitDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePackUnitDto&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,active);
}

@override
String toString() {
    return 'UpdatePackUnitDto(name: $name, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdatePackUnitDtoCopyWith<$Res> implements $UpdatePackUnitDtoCopyWith<$Res> {
  factory _$UpdatePackUnitDtoCopyWith(_UpdatePackUnitDto value, $Res Function(_UpdatePackUnitDto) _then) = __$UpdatePackUnitDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, bool? active
});




}
/// @nodoc
class __$UpdatePackUnitDtoCopyWithImpl<$Res>
    implements _$UpdatePackUnitDtoCopyWith<$Res> {
  __$UpdatePackUnitDtoCopyWithImpl(this._self, this._then);

  final _UpdatePackUnitDto _self;
  final $Res Function(_UpdatePackUnitDto) _then;

/// Create a copy of UpdatePackUnitDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? active = freezed,}) {
  return _then(_UpdatePackUnitDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
