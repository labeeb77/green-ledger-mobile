// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_pack_unit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePackUnitDto {

 String get name; CreatePackUnitDtoSizeType get sizeType; dynamic get size;
/// Create a copy of CreatePackUnitDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePackUnitDtoCopyWith<CreatePackUnitDto> get copyWith => _$CreatePackUnitDtoCopyWithImpl<CreatePackUnitDto>(this as CreatePackUnitDto, _$identity);

  /// Serializes this CreatePackUnitDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreatePackUnitDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePackUnitDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.sizeType, _this.sizeType) || other.sizeType == _this.sizeType)&&const DeepCollectionEquality().equals(other.size, _this.size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreatePackUnitDto;
  return Object.hash(runtimeType,_this.name,_this.sizeType,const DeepCollectionEquality().hash(_this.size));
}

@override
String toString() {
  final _this = this as CreatePackUnitDto;
  return 'CreatePackUnitDto(name: ${_this.name}, sizeType: ${_this.sizeType}, size: ${_this.size})';
}


}

/// @nodoc
abstract mixin class $CreatePackUnitDtoCopyWith<$Res>  {
  factory $CreatePackUnitDtoCopyWith(CreatePackUnitDto value, $Res Function(CreatePackUnitDto) _then) = _$CreatePackUnitDtoCopyWithImpl;
@useResult
$Res call({
 String name, CreatePackUnitDtoSizeType sizeType, dynamic size
});




}
/// @nodoc
class _$CreatePackUnitDtoCopyWithImpl<$Res>
    implements $CreatePackUnitDtoCopyWith<$Res> {
  _$CreatePackUnitDtoCopyWithImpl(this._self, this._then);

  final CreatePackUnitDto _self;
  final $Res Function(CreatePackUnitDto) _then;

/// Create a copy of CreatePackUnitDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? sizeType = null,Object? size = freezed,}) {
  return _then(CreatePackUnitDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeType: null == sizeType ? _self.sizeType : sizeType // ignore: cast_nullable_to_non_nullable
as CreatePackUnitDtoSizeType,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePackUnitDto].
extension CreatePackUnitDtoPatterns on CreatePackUnitDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePackUnitDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePackUnitDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePackUnitDto value)  $default,){
final _that = this;
switch (_that) {
case _CreatePackUnitDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePackUnitDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePackUnitDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  CreatePackUnitDtoSizeType sizeType,  dynamic size)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePackUnitDto() when $default != null:
return $default(_that.name,_that.sizeType,_that.size);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  CreatePackUnitDtoSizeType sizeType,  dynamic size)  $default,) {final _that = this;
switch (_that) {
case _CreatePackUnitDto():
return $default(_that.name,_that.sizeType,_that.size);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  CreatePackUnitDtoSizeType sizeType,  dynamic size)?  $default,) {final _that = this;
switch (_that) {
case _CreatePackUnitDto() when $default != null:
return $default(_that.name,_that.sizeType,_that.size);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePackUnitDto implements CreatePackUnitDto {
  const _CreatePackUnitDto({required this.name, required this.sizeType, this.size});
  factory _CreatePackUnitDto.fromJson(Map<String, dynamic> json) => _$CreatePackUnitDtoFromJson(json);

@override final  String name;
@override final  CreatePackUnitDtoSizeType sizeType;
@override final  dynamic size;

/// Create a copy of CreatePackUnitDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePackUnitDtoCopyWith<_CreatePackUnitDto> get copyWith => __$CreatePackUnitDtoCopyWithImpl<_CreatePackUnitDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePackUnitDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePackUnitDto&&(identical(other.name, name) || other.name == name)&&(identical(other.sizeType, sizeType) || other.sizeType == sizeType)&&const DeepCollectionEquality().equals(other.size, size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,sizeType,const DeepCollectionEquality().hash(size));
}

@override
String toString() {
    return 'CreatePackUnitDto(name: $name, sizeType: $sizeType, size: $size)';
}


}

/// @nodoc
abstract mixin class _$CreatePackUnitDtoCopyWith<$Res> implements $CreatePackUnitDtoCopyWith<$Res> {
  factory _$CreatePackUnitDtoCopyWith(_CreatePackUnitDto value, $Res Function(_CreatePackUnitDto) _then) = __$CreatePackUnitDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, CreatePackUnitDtoSizeType sizeType, dynamic size
});




}
/// @nodoc
class __$CreatePackUnitDtoCopyWithImpl<$Res>
    implements _$CreatePackUnitDtoCopyWith<$Res> {
  __$CreatePackUnitDtoCopyWithImpl(this._self, this._then);

  final _CreatePackUnitDto _self;
  final $Res Function(_CreatePackUnitDto) _then;

/// Create a copy of CreatePackUnitDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sizeType = null,Object? size = freezed,}) {
  return _then(_CreatePackUnitDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeType: null == sizeType ? _self.sizeType : sizeType // ignore: cast_nullable_to_non_nullable
as CreatePackUnitDtoSizeType,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
