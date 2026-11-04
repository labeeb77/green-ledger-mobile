// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProductDto {

 String? get nameEn; String? get nameMl; String? get category;/// Amount in paise (₹1 = 100)
 int? get minimumRate; dynamic get lowStockLevel; bool? get active;
/// Create a copy of UpdateProductDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProductDtoCopyWith<UpdateProductDto> get copyWith => _$UpdateProductDtoCopyWithImpl<UpdateProductDto>(this as UpdateProductDto, _$identity);

  /// Serializes this UpdateProductDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdateProductDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProductDto&&(identical(other.nameEn, _this.nameEn) || other.nameEn == _this.nameEn)&&(identical(other.nameMl, _this.nameMl) || other.nameMl == _this.nameMl)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.minimumRate, _this.minimumRate) || other.minimumRate == _this.minimumRate)&&const DeepCollectionEquality().equals(other.lowStockLevel, _this.lowStockLevel)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdateProductDto;
  return Object.hash(runtimeType,_this.nameEn,_this.nameMl,_this.category,_this.minimumRate,const DeepCollectionEquality().hash(_this.lowStockLevel),_this.active);
}

@override
String toString() {
  final _this = this as UpdateProductDto;
  return 'UpdateProductDto(nameEn: ${_this.nameEn}, nameMl: ${_this.nameMl}, category: ${_this.category}, minimumRate: ${_this.minimumRate}, lowStockLevel: ${_this.lowStockLevel}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $UpdateProductDtoCopyWith<$Res>  {
  factory $UpdateProductDtoCopyWith(UpdateProductDto value, $Res Function(UpdateProductDto) _then) = _$UpdateProductDtoCopyWithImpl;
@useResult
$Res call({
 String? nameEn, String? nameMl, String? category, int? minimumRate, dynamic lowStockLevel, bool? active
});




}
/// @nodoc
class _$UpdateProductDtoCopyWithImpl<$Res>
    implements $UpdateProductDtoCopyWith<$Res> {
  _$UpdateProductDtoCopyWithImpl(this._self, this._then);

  final UpdateProductDto _self;
  final $Res Function(UpdateProductDto) _then;

/// Create a copy of UpdateProductDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nameEn = freezed,Object? nameMl = freezed,Object? category = freezed,Object? minimumRate = freezed,Object? lowStockLevel = freezed,Object? active = freezed,}) {
  return _then(UpdateProductDto(
nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,nameMl: freezed == nameMl ? _self.nameMl : nameMl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,minimumRate: freezed == minimumRate ? _self.minimumRate : minimumRate // ignore: cast_nullable_to_non_nullable
as int?,lowStockLevel: freezed == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as dynamic,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProductDto].
extension UpdateProductDtoPatterns on UpdateProductDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProductDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProductDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProductDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProductDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProductDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProductDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? nameEn,  String? nameMl,  String? category,  int? minimumRate,  dynamic lowStockLevel,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProductDto() when $default != null:
return $default(_that.nameEn,_that.nameMl,_that.category,_that.minimumRate,_that.lowStockLevel,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? nameEn,  String? nameMl,  String? category,  int? minimumRate,  dynamic lowStockLevel,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdateProductDto():
return $default(_that.nameEn,_that.nameMl,_that.category,_that.minimumRate,_that.lowStockLevel,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? nameEn,  String? nameMl,  String? category,  int? minimumRate,  dynamic lowStockLevel,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProductDto() when $default != null:
return $default(_that.nameEn,_that.nameMl,_that.category,_that.minimumRate,_that.lowStockLevel,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProductDto implements UpdateProductDto {
  const _UpdateProductDto({this.nameEn, this.nameMl, this.category, this.minimumRate, this.lowStockLevel, this.active});
  factory _UpdateProductDto.fromJson(Map<String, dynamic> json) => _$UpdateProductDtoFromJson(json);

@override final  String? nameEn;
@override final  String? nameMl;
@override final  String? category;
/// Amount in paise (₹1 = 100)
@override final  int? minimumRate;
@override final  dynamic lowStockLevel;
@override final  bool? active;

/// Create a copy of UpdateProductDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProductDtoCopyWith<_UpdateProductDto> get copyWith => __$UpdateProductDtoCopyWithImpl<_UpdateProductDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProductDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProductDto&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameMl, nameMl) || other.nameMl == nameMl)&&(identical(other.category, category) || other.category == category)&&(identical(other.minimumRate, minimumRate) || other.minimumRate == minimumRate)&&const DeepCollectionEquality().equals(other.lowStockLevel, lowStockLevel)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,nameEn,nameMl,category,minimumRate,const DeepCollectionEquality().hash(lowStockLevel),active);
}

@override
String toString() {
    return 'UpdateProductDto(nameEn: $nameEn, nameMl: $nameMl, category: $category, minimumRate: $minimumRate, lowStockLevel: $lowStockLevel, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateProductDtoCopyWith<$Res> implements $UpdateProductDtoCopyWith<$Res> {
  factory _$UpdateProductDtoCopyWith(_UpdateProductDto value, $Res Function(_UpdateProductDto) _then) = __$UpdateProductDtoCopyWithImpl;
@override @useResult
$Res call({
 String? nameEn, String? nameMl, String? category, int? minimumRate, dynamic lowStockLevel, bool? active
});




}
/// @nodoc
class __$UpdateProductDtoCopyWithImpl<$Res>
    implements _$UpdateProductDtoCopyWith<$Res> {
  __$UpdateProductDtoCopyWithImpl(this._self, this._then);

  final _UpdateProductDto _self;
  final $Res Function(_UpdateProductDto) _then;

/// Create a copy of UpdateProductDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nameEn = freezed,Object? nameMl = freezed,Object? category = freezed,Object? minimumRate = freezed,Object? lowStockLevel = freezed,Object? active = freezed,}) {
  return _then(_UpdateProductDto(
nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,nameMl: freezed == nameMl ? _self.nameMl : nameMl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,minimumRate: freezed == minimumRate ? _self.minimumRate : minimumRate // ignore: cast_nullable_to_non_nullable
as int?,lowStockLevel: freezed == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as dynamic,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
