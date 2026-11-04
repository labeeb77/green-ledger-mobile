// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_price_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePriceGroupDto {

 String get name; CreatePriceGroupDtoAdjustmentType get adjustmentType; int get value;
/// Create a copy of CreatePriceGroupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePriceGroupDtoCopyWith<CreatePriceGroupDto> get copyWith => _$CreatePriceGroupDtoCopyWithImpl<CreatePriceGroupDto>(this as CreatePriceGroupDto, _$identity);

  /// Serializes this CreatePriceGroupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreatePriceGroupDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePriceGroupDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.adjustmentType, _this.adjustmentType) || other.adjustmentType == _this.adjustmentType)&&(identical(other.value, _this.value) || other.value == _this.value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreatePriceGroupDto;
  return Object.hash(runtimeType,_this.name,_this.adjustmentType,_this.value);
}

@override
String toString() {
  final _this = this as CreatePriceGroupDto;
  return 'CreatePriceGroupDto(name: ${_this.name}, adjustmentType: ${_this.adjustmentType}, value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $CreatePriceGroupDtoCopyWith<$Res>  {
  factory $CreatePriceGroupDtoCopyWith(CreatePriceGroupDto value, $Res Function(CreatePriceGroupDto) _then) = _$CreatePriceGroupDtoCopyWithImpl;
@useResult
$Res call({
 String name, CreatePriceGroupDtoAdjustmentType adjustmentType, int value
});




}
/// @nodoc
class _$CreatePriceGroupDtoCopyWithImpl<$Res>
    implements $CreatePriceGroupDtoCopyWith<$Res> {
  _$CreatePriceGroupDtoCopyWithImpl(this._self, this._then);

  final CreatePriceGroupDto _self;
  final $Res Function(CreatePriceGroupDto) _then;

/// Create a copy of CreatePriceGroupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? adjustmentType = null,Object? value = null,}) {
  return _then(CreatePriceGroupDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,adjustmentType: null == adjustmentType ? _self.adjustmentType : adjustmentType // ignore: cast_nullable_to_non_nullable
as CreatePriceGroupDtoAdjustmentType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePriceGroupDto].
extension CreatePriceGroupDtoPatterns on CreatePriceGroupDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePriceGroupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePriceGroupDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePriceGroupDto value)  $default,){
final _that = this;
switch (_that) {
case _CreatePriceGroupDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePriceGroupDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePriceGroupDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  CreatePriceGroupDtoAdjustmentType adjustmentType,  int value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePriceGroupDto() when $default != null:
return $default(_that.name,_that.adjustmentType,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  CreatePriceGroupDtoAdjustmentType adjustmentType,  int value)  $default,) {final _that = this;
switch (_that) {
case _CreatePriceGroupDto():
return $default(_that.name,_that.adjustmentType,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  CreatePriceGroupDtoAdjustmentType adjustmentType,  int value)?  $default,) {final _that = this;
switch (_that) {
case _CreatePriceGroupDto() when $default != null:
return $default(_that.name,_that.adjustmentType,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePriceGroupDto implements CreatePriceGroupDto {
  const _CreatePriceGroupDto({required this.name, required this.adjustmentType, required this.value});
  factory _CreatePriceGroupDto.fromJson(Map<String, dynamic> json) => _$CreatePriceGroupDtoFromJson(json);

@override final  String name;
@override final  CreatePriceGroupDtoAdjustmentType adjustmentType;
@override final  int value;

/// Create a copy of CreatePriceGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePriceGroupDtoCopyWith<_CreatePriceGroupDto> get copyWith => __$CreatePriceGroupDtoCopyWithImpl<_CreatePriceGroupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePriceGroupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePriceGroupDto&&(identical(other.name, name) || other.name == name)&&(identical(other.adjustmentType, adjustmentType) || other.adjustmentType == adjustmentType)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,adjustmentType,value);
}

@override
String toString() {
    return 'CreatePriceGroupDto(name: $name, adjustmentType: $adjustmentType, value: $value)';
}


}

/// @nodoc
abstract mixin class _$CreatePriceGroupDtoCopyWith<$Res> implements $CreatePriceGroupDtoCopyWith<$Res> {
  factory _$CreatePriceGroupDtoCopyWith(_CreatePriceGroupDto value, $Res Function(_CreatePriceGroupDto) _then) = __$CreatePriceGroupDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, CreatePriceGroupDtoAdjustmentType adjustmentType, int value
});




}
/// @nodoc
class __$CreatePriceGroupDtoCopyWithImpl<$Res>
    implements _$CreatePriceGroupDtoCopyWith<$Res> {
  __$CreatePriceGroupDtoCopyWithImpl(this._self, this._then);

  final _CreatePriceGroupDto _self;
  final $Res Function(_CreatePriceGroupDto) _then;

/// Create a copy of CreatePriceGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? adjustmentType = null,Object? value = null,}) {
  return _then(_CreatePriceGroupDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,adjustmentType: null == adjustmentType ? _self.adjustmentType : adjustmentType // ignore: cast_nullable_to_non_nullable
as CreatePriceGroupDtoAdjustmentType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
