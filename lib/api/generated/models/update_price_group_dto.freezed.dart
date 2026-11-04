// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_price_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePriceGroupDto {

 String? get name; UpdatePriceGroupDtoAdjustmentType? get adjustmentType; int? get value; bool? get active;
/// Create a copy of UpdatePriceGroupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePriceGroupDtoCopyWith<UpdatePriceGroupDto> get copyWith => _$UpdatePriceGroupDtoCopyWithImpl<UpdatePriceGroupDto>(this as UpdatePriceGroupDto, _$identity);

  /// Serializes this UpdatePriceGroupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdatePriceGroupDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePriceGroupDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.adjustmentType, _this.adjustmentType) || other.adjustmentType == _this.adjustmentType)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdatePriceGroupDto;
  return Object.hash(runtimeType,_this.name,_this.adjustmentType,_this.value,_this.active);
}

@override
String toString() {
  final _this = this as UpdatePriceGroupDto;
  return 'UpdatePriceGroupDto(name: ${_this.name}, adjustmentType: ${_this.adjustmentType}, value: ${_this.value}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $UpdatePriceGroupDtoCopyWith<$Res>  {
  factory $UpdatePriceGroupDtoCopyWith(UpdatePriceGroupDto value, $Res Function(UpdatePriceGroupDto) _then) = _$UpdatePriceGroupDtoCopyWithImpl;
@useResult
$Res call({
 String? name, UpdatePriceGroupDtoAdjustmentType? adjustmentType, int? value, bool? active
});




}
/// @nodoc
class _$UpdatePriceGroupDtoCopyWithImpl<$Res>
    implements $UpdatePriceGroupDtoCopyWith<$Res> {
  _$UpdatePriceGroupDtoCopyWithImpl(this._self, this._then);

  final UpdatePriceGroupDto _self;
  final $Res Function(UpdatePriceGroupDto) _then;

/// Create a copy of UpdatePriceGroupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? adjustmentType = freezed,Object? value = freezed,Object? active = freezed,}) {
  return _then(UpdatePriceGroupDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,adjustmentType: freezed == adjustmentType ? _self.adjustmentType : adjustmentType // ignore: cast_nullable_to_non_nullable
as UpdatePriceGroupDtoAdjustmentType?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePriceGroupDto].
extension UpdatePriceGroupDtoPatterns on UpdatePriceGroupDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePriceGroupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePriceGroupDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePriceGroupDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePriceGroupDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePriceGroupDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePriceGroupDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  UpdatePriceGroupDtoAdjustmentType? adjustmentType,  int? value,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePriceGroupDto() when $default != null:
return $default(_that.name,_that.adjustmentType,_that.value,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  UpdatePriceGroupDtoAdjustmentType? adjustmentType,  int? value,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdatePriceGroupDto():
return $default(_that.name,_that.adjustmentType,_that.value,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  UpdatePriceGroupDtoAdjustmentType? adjustmentType,  int? value,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePriceGroupDto() when $default != null:
return $default(_that.name,_that.adjustmentType,_that.value,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdatePriceGroupDto implements UpdatePriceGroupDto {
  const _UpdatePriceGroupDto({this.name, this.adjustmentType, this.value, this.active});
  factory _UpdatePriceGroupDto.fromJson(Map<String, dynamic> json) => _$UpdatePriceGroupDtoFromJson(json);

@override final  String? name;
@override final  UpdatePriceGroupDtoAdjustmentType? adjustmentType;
@override final  int? value;
@override final  bool? active;

/// Create a copy of UpdatePriceGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePriceGroupDtoCopyWith<_UpdatePriceGroupDto> get copyWith => __$UpdatePriceGroupDtoCopyWithImpl<_UpdatePriceGroupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePriceGroupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePriceGroupDto&&(identical(other.name, name) || other.name == name)&&(identical(other.adjustmentType, adjustmentType) || other.adjustmentType == adjustmentType)&&(identical(other.value, value) || other.value == value)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,adjustmentType,value,active);
}

@override
String toString() {
    return 'UpdatePriceGroupDto(name: $name, adjustmentType: $adjustmentType, value: $value, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdatePriceGroupDtoCopyWith<$Res> implements $UpdatePriceGroupDtoCopyWith<$Res> {
  factory _$UpdatePriceGroupDtoCopyWith(_UpdatePriceGroupDto value, $Res Function(_UpdatePriceGroupDto) _then) = __$UpdatePriceGroupDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, UpdatePriceGroupDtoAdjustmentType? adjustmentType, int? value, bool? active
});




}
/// @nodoc
class __$UpdatePriceGroupDtoCopyWithImpl<$Res>
    implements _$UpdatePriceGroupDtoCopyWith<$Res> {
  __$UpdatePriceGroupDtoCopyWithImpl(this._self, this._then);

  final _UpdatePriceGroupDto _self;
  final $Res Function(_UpdatePriceGroupDto) _then;

/// Create a copy of UpdatePriceGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? adjustmentType = freezed,Object? value = freezed,Object? active = freezed,}) {
  return _then(_UpdatePriceGroupDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,adjustmentType: freezed == adjustmentType ? _self.adjustmentType : adjustmentType // ignore: cast_nullable_to_non_nullable
as UpdatePriceGroupDtoAdjustmentType?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
