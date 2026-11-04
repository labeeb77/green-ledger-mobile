// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_customer_rate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetCustomerRateDto {

 SetCustomerRateDtoMode get mode; int get value;
/// Create a copy of SetCustomerRateDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetCustomerRateDtoCopyWith<SetCustomerRateDto> get copyWith => _$SetCustomerRateDtoCopyWithImpl<SetCustomerRateDto>(this as SetCustomerRateDto, _$identity);

  /// Serializes this SetCustomerRateDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SetCustomerRateDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetCustomerRateDto&&(identical(other.mode, _this.mode) || other.mode == _this.mode)&&(identical(other.value, _this.value) || other.value == _this.value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SetCustomerRateDto;
  return Object.hash(runtimeType,_this.mode,_this.value);
}

@override
String toString() {
  final _this = this as SetCustomerRateDto;
  return 'SetCustomerRateDto(mode: ${_this.mode}, value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $SetCustomerRateDtoCopyWith<$Res>  {
  factory $SetCustomerRateDtoCopyWith(SetCustomerRateDto value, $Res Function(SetCustomerRateDto) _then) = _$SetCustomerRateDtoCopyWithImpl;
@useResult
$Res call({
 SetCustomerRateDtoMode mode, int value
});




}
/// @nodoc
class _$SetCustomerRateDtoCopyWithImpl<$Res>
    implements $SetCustomerRateDtoCopyWith<$Res> {
  _$SetCustomerRateDtoCopyWithImpl(this._self, this._then);

  final SetCustomerRateDto _self;
  final $Res Function(SetCustomerRateDto) _then;

/// Create a copy of SetCustomerRateDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,Object? value = null,}) {
  return _then(SetCustomerRateDto(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as SetCustomerRateDtoMode,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SetCustomerRateDto].
extension SetCustomerRateDtoPatterns on SetCustomerRateDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetCustomerRateDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetCustomerRateDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetCustomerRateDto value)  $default,){
final _that = this;
switch (_that) {
case _SetCustomerRateDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetCustomerRateDto value)?  $default,){
final _that = this;
switch (_that) {
case _SetCustomerRateDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SetCustomerRateDtoMode mode,  int value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetCustomerRateDto() when $default != null:
return $default(_that.mode,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SetCustomerRateDtoMode mode,  int value)  $default,) {final _that = this;
switch (_that) {
case _SetCustomerRateDto():
return $default(_that.mode,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SetCustomerRateDtoMode mode,  int value)?  $default,) {final _that = this;
switch (_that) {
case _SetCustomerRateDto() when $default != null:
return $default(_that.mode,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetCustomerRateDto implements SetCustomerRateDto {
  const _SetCustomerRateDto({required this.mode, required this.value});
  factory _SetCustomerRateDto.fromJson(Map<String, dynamic> json) => _$SetCustomerRateDtoFromJson(json);

@override final  SetCustomerRateDtoMode mode;
@override final  int value;

/// Create a copy of SetCustomerRateDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCustomerRateDtoCopyWith<_SetCustomerRateDto> get copyWith => __$SetCustomerRateDtoCopyWithImpl<_SetCustomerRateDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetCustomerRateDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCustomerRateDto&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,mode,value);
}

@override
String toString() {
    return 'SetCustomerRateDto(mode: $mode, value: $value)';
}


}

/// @nodoc
abstract mixin class _$SetCustomerRateDtoCopyWith<$Res> implements $SetCustomerRateDtoCopyWith<$Res> {
  factory _$SetCustomerRateDtoCopyWith(_SetCustomerRateDto value, $Res Function(_SetCustomerRateDto) _then) = __$SetCustomerRateDtoCopyWithImpl;
@override @useResult
$Res call({
 SetCustomerRateDtoMode mode, int value
});




}
/// @nodoc
class __$SetCustomerRateDtoCopyWithImpl<$Res>
    implements _$SetCustomerRateDtoCopyWith<$Res> {
  __$SetCustomerRateDtoCopyWithImpl(this._self, this._then);

  final _SetCustomerRateDto _self;
  final $Res Function(_SetCustomerRateDto) _then;

/// Create a copy of SetCustomerRateDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,Object? value = null,}) {
  return _then(_SetCustomerRateDto(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as SetCustomerRateDtoMode,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
