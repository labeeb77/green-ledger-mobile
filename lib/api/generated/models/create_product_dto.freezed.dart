// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateProductDto {

 String get nameEn; CreateProductDtoStockUnit get stockUnit; List<String> get grades; String? get nameMl; String? get category;/// Amount in paise (₹1 = 100)
 int? get minimumRate; dynamic get lowStockLevel; List<PackUnits2>? get packUnits;
/// Create a copy of CreateProductDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProductDtoCopyWith<CreateProductDto> get copyWith => _$CreateProductDtoCopyWithImpl<CreateProductDto>(this as CreateProductDto, _$identity);

  /// Serializes this CreateProductDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateProductDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductDto&&(identical(other.nameEn, _this.nameEn) || other.nameEn == _this.nameEn)&&(identical(other.stockUnit, _this.stockUnit) || other.stockUnit == _this.stockUnit)&&const DeepCollectionEquality().equals(other.grades, _this.grades)&&(identical(other.nameMl, _this.nameMl) || other.nameMl == _this.nameMl)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.minimumRate, _this.minimumRate) || other.minimumRate == _this.minimumRate)&&const DeepCollectionEquality().equals(other.lowStockLevel, _this.lowStockLevel)&&const DeepCollectionEquality().equals(other.packUnits, _this.packUnits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateProductDto;
  return Object.hash(runtimeType,_this.nameEn,_this.stockUnit,const DeepCollectionEquality().hash(_this.grades),_this.nameMl,_this.category,_this.minimumRate,const DeepCollectionEquality().hash(_this.lowStockLevel),const DeepCollectionEquality().hash(_this.packUnits));
}

@override
String toString() {
  final _this = this as CreateProductDto;
  return 'CreateProductDto(nameEn: ${_this.nameEn}, stockUnit: ${_this.stockUnit}, grades: ${_this.grades}, nameMl: ${_this.nameMl}, category: ${_this.category}, minimumRate: ${_this.minimumRate}, lowStockLevel: ${_this.lowStockLevel}, packUnits: ${_this.packUnits})';
}


}

/// @nodoc
abstract mixin class $CreateProductDtoCopyWith<$Res>  {
  factory $CreateProductDtoCopyWith(CreateProductDto value, $Res Function(CreateProductDto) _then) = _$CreateProductDtoCopyWithImpl;
@useResult
$Res call({
 String nameEn, CreateProductDtoStockUnit stockUnit, List<String> grades, String? nameMl, String? category, int? minimumRate, dynamic lowStockLevel, List<PackUnits2>? packUnits
});




}
/// @nodoc
class _$CreateProductDtoCopyWithImpl<$Res>
    implements $CreateProductDtoCopyWith<$Res> {
  _$CreateProductDtoCopyWithImpl(this._self, this._then);

  final CreateProductDto _self;
  final $Res Function(CreateProductDto) _then;

/// Create a copy of CreateProductDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nameEn = null,Object? stockUnit = null,Object? grades = null,Object? nameMl = freezed,Object? category = freezed,Object? minimumRate = freezed,Object? lowStockLevel = freezed,Object? packUnits = freezed,}) {
  return _then(CreateProductDto(
nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as CreateProductDtoStockUnit,grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as List<String>,nameMl: freezed == nameMl ? _self.nameMl : nameMl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,minimumRate: freezed == minimumRate ? _self.minimumRate : minimumRate // ignore: cast_nullable_to_non_nullable
as int?,lowStockLevel: freezed == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as dynamic,packUnits: freezed == packUnits ? _self.packUnits : packUnits // ignore: cast_nullable_to_non_nullable
as List<PackUnits2>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateProductDto].
extension CreateProductDtoPatterns on CreateProductDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateProductDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateProductDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateProductDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateProductDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateProductDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateProductDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nameEn,  CreateProductDtoStockUnit stockUnit,  List<String> grades,  String? nameMl,  String? category,  int? minimumRate,  dynamic lowStockLevel,  List<PackUnits2>? packUnits)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateProductDto() when $default != null:
return $default(_that.nameEn,_that.stockUnit,_that.grades,_that.nameMl,_that.category,_that.minimumRate,_that.lowStockLevel,_that.packUnits);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nameEn,  CreateProductDtoStockUnit stockUnit,  List<String> grades,  String? nameMl,  String? category,  int? minimumRate,  dynamic lowStockLevel,  List<PackUnits2>? packUnits)  $default,) {final _that = this;
switch (_that) {
case _CreateProductDto():
return $default(_that.nameEn,_that.stockUnit,_that.grades,_that.nameMl,_that.category,_that.minimumRate,_that.lowStockLevel,_that.packUnits);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nameEn,  CreateProductDtoStockUnit stockUnit,  List<String> grades,  String? nameMl,  String? category,  int? minimumRate,  dynamic lowStockLevel,  List<PackUnits2>? packUnits)?  $default,) {final _that = this;
switch (_that) {
case _CreateProductDto() when $default != null:
return $default(_that.nameEn,_that.stockUnit,_that.grades,_that.nameMl,_that.category,_that.minimumRate,_that.lowStockLevel,_that.packUnits);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateProductDto implements CreateProductDto {
  const _CreateProductDto({required this.nameEn, required this.stockUnit,  List<String> grades = const [], this.nameMl, this.category, this.minimumRate, this.lowStockLevel,  List<PackUnits2>? packUnits}): _grades = grades,_packUnits = packUnits;
  factory _CreateProductDto.fromJson(Map<String, dynamic> json) => _$CreateProductDtoFromJson(json);

@override final  String nameEn;
@override final  CreateProductDtoStockUnit stockUnit;
 final  List<String> _grades;
@override@JsonKey() List<String> get grades {
  if (_grades is EqualUnmodifiableListView) return _grades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grades);
}

@override final  String? nameMl;
@override final  String? category;
/// Amount in paise (₹1 = 100)
@override final  int? minimumRate;
@override final  dynamic lowStockLevel;
 final  List<PackUnits2>? _packUnits;
@override List<PackUnits2>? get packUnits {
  final value = _packUnits;
  if (value == null) return null;
  if (_packUnits is EqualUnmodifiableListView) return _packUnits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CreateProductDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProductDtoCopyWith<_CreateProductDto> get copyWith => __$CreateProductDtoCopyWithImpl<_CreateProductDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateProductDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProductDto&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.stockUnit, stockUnit) || other.stockUnit == stockUnit)&&const DeepCollectionEquality().equals(other.grades, _grades)&&(identical(other.nameMl, nameMl) || other.nameMl == nameMl)&&(identical(other.category, category) || other.category == category)&&(identical(other.minimumRate, minimumRate) || other.minimumRate == minimumRate)&&const DeepCollectionEquality().equals(other.lowStockLevel, lowStockLevel)&&const DeepCollectionEquality().equals(other.packUnits, _packUnits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,nameEn,stockUnit,const DeepCollectionEquality().hash(_grades),nameMl,category,minimumRate,const DeepCollectionEquality().hash(lowStockLevel),const DeepCollectionEquality().hash(_packUnits));
}

@override
String toString() {
    return 'CreateProductDto(nameEn: $nameEn, stockUnit: $stockUnit, grades: $grades, nameMl: $nameMl, category: $category, minimumRate: $minimumRate, lowStockLevel: $lowStockLevel, packUnits: $packUnits)';
}


}

/// @nodoc
abstract mixin class _$CreateProductDtoCopyWith<$Res> implements $CreateProductDtoCopyWith<$Res> {
  factory _$CreateProductDtoCopyWith(_CreateProductDto value, $Res Function(_CreateProductDto) _then) = __$CreateProductDtoCopyWithImpl;
@override @useResult
$Res call({
 String nameEn, CreateProductDtoStockUnit stockUnit, List<String> grades, String? nameMl, String? category, int? minimumRate, dynamic lowStockLevel, List<PackUnits2>? packUnits
});




}
/// @nodoc
class __$CreateProductDtoCopyWithImpl<$Res>
    implements _$CreateProductDtoCopyWith<$Res> {
  __$CreateProductDtoCopyWithImpl(this._self, this._then);

  final _CreateProductDto _self;
  final $Res Function(_CreateProductDto) _then;

/// Create a copy of CreateProductDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nameEn = null,Object? stockUnit = null,Object? grades = null,Object? nameMl = freezed,Object? category = freezed,Object? minimumRate = freezed,Object? lowStockLevel = freezed,Object? packUnits = freezed,}) {
  return _then(_CreateProductDto(
nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as CreateProductDtoStockUnit,grades: null == grades ? _self._grades : grades // ignore: cast_nullable_to_non_nullable
as List<String>,nameMl: freezed == nameMl ? _self.nameMl : nameMl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,minimumRate: freezed == minimumRate ? _self.minimumRate : minimumRate // ignore: cast_nullable_to_non_nullable
as int?,lowStockLevel: freezed == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as dynamic,packUnits: freezed == packUnits ? _self._packUnits : packUnits // ignore: cast_nullable_to_non_nullable
as List<PackUnits2>?,
  ));
}


}

// dart format on
