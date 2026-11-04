// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDtoOutput {

 String get id; String get nameEn; String? get nameMl; String? get category; ProductDtoOutputStockUnit get stockUnit; int? get minimumRate; String? get lowStockLevel; bool get active; List<PackUnits> get packUnits; List<Grades> get grades;
/// Create a copy of ProductDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDtoOutputCopyWith<ProductDtoOutput> get copyWith => _$ProductDtoOutputCopyWithImpl<ProductDtoOutput>(this as ProductDtoOutput, _$identity);

  /// Serializes this ProductDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.nameEn, _this.nameEn) || other.nameEn == _this.nameEn)&&(identical(other.nameMl, _this.nameMl) || other.nameMl == _this.nameMl)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.stockUnit, _this.stockUnit) || other.stockUnit == _this.stockUnit)&&(identical(other.minimumRate, _this.minimumRate) || other.minimumRate == _this.minimumRate)&&(identical(other.lowStockLevel, _this.lowStockLevel) || other.lowStockLevel == _this.lowStockLevel)&&(identical(other.active, _this.active) || other.active == _this.active)&&const DeepCollectionEquality().equals(other.packUnits, _this.packUnits)&&const DeepCollectionEquality().equals(other.grades, _this.grades));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.nameEn,_this.nameMl,_this.category,_this.stockUnit,_this.minimumRate,_this.lowStockLevel,_this.active,const DeepCollectionEquality().hash(_this.packUnits),const DeepCollectionEquality().hash(_this.grades));
}

@override
String toString() {
  final _this = this as ProductDtoOutput;
  return 'ProductDtoOutput(id: ${_this.id}, nameEn: ${_this.nameEn}, nameMl: ${_this.nameMl}, category: ${_this.category}, stockUnit: ${_this.stockUnit}, minimumRate: ${_this.minimumRate}, lowStockLevel: ${_this.lowStockLevel}, active: ${_this.active}, packUnits: ${_this.packUnits}, grades: ${_this.grades})';
}


}

/// @nodoc
abstract mixin class $ProductDtoOutputCopyWith<$Res>  {
  factory $ProductDtoOutputCopyWith(ProductDtoOutput value, $Res Function(ProductDtoOutput) _then) = _$ProductDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String nameEn, String? nameMl, String? category, ProductDtoOutputStockUnit stockUnit, int? minimumRate, String? lowStockLevel, bool active, List<PackUnits> packUnits, List<Grades> grades
});




}
/// @nodoc
class _$ProductDtoOutputCopyWithImpl<$Res>
    implements $ProductDtoOutputCopyWith<$Res> {
  _$ProductDtoOutputCopyWithImpl(this._self, this._then);

  final ProductDtoOutput _self;
  final $Res Function(ProductDtoOutput) _then;

/// Create a copy of ProductDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameEn = null,Object? nameMl = freezed,Object? category = freezed,Object? stockUnit = null,Object? minimumRate = freezed,Object? lowStockLevel = freezed,Object? active = null,Object? packUnits = null,Object? grades = null,}) {
  return _then(ProductDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,nameMl: freezed == nameMl ? _self.nameMl : nameMl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as ProductDtoOutputStockUnit,minimumRate: freezed == minimumRate ? _self.minimumRate : minimumRate // ignore: cast_nullable_to_non_nullable
as int?,lowStockLevel: freezed == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,packUnits: null == packUnits ? _self.packUnits : packUnits // ignore: cast_nullable_to_non_nullable
as List<PackUnits>,grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as List<Grades>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDtoOutput].
extension ProductDtoOutputPatterns on ProductDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ProductDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameEn,  String? nameMl,  String? category,  ProductDtoOutputStockUnit stockUnit,  int? minimumRate,  String? lowStockLevel,  bool active,  List<PackUnits> packUnits,  List<Grades> grades)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDtoOutput() when $default != null:
return $default(_that.id,_that.nameEn,_that.nameMl,_that.category,_that.stockUnit,_that.minimumRate,_that.lowStockLevel,_that.active,_that.packUnits,_that.grades);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameEn,  String? nameMl,  String? category,  ProductDtoOutputStockUnit stockUnit,  int? minimumRate,  String? lowStockLevel,  bool active,  List<PackUnits> packUnits,  List<Grades> grades)  $default,) {final _that = this;
switch (_that) {
case _ProductDtoOutput():
return $default(_that.id,_that.nameEn,_that.nameMl,_that.category,_that.stockUnit,_that.minimumRate,_that.lowStockLevel,_that.active,_that.packUnits,_that.grades);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameEn,  String? nameMl,  String? category,  ProductDtoOutputStockUnit stockUnit,  int? minimumRate,  String? lowStockLevel,  bool active,  List<PackUnits> packUnits,  List<Grades> grades)?  $default,) {final _that = this;
switch (_that) {
case _ProductDtoOutput() when $default != null:
return $default(_that.id,_that.nameEn,_that.nameMl,_that.category,_that.stockUnit,_that.minimumRate,_that.lowStockLevel,_that.active,_that.packUnits,_that.grades);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDtoOutput implements ProductDtoOutput {
  const _ProductDtoOutput({required this.id, required this.nameEn, required this.nameMl, required this.category, required this.stockUnit, required this.minimumRate, required this.lowStockLevel, required this.active, required  List<PackUnits> packUnits, required  List<Grades> grades}): _packUnits = packUnits,_grades = grades;
  factory _ProductDtoOutput.fromJson(Map<String, dynamic> json) => _$ProductDtoOutputFromJson(json);

@override final  String id;
@override final  String nameEn;
@override final  String? nameMl;
@override final  String? category;
@override final  ProductDtoOutputStockUnit stockUnit;
@override final  int? minimumRate;
@override final  String? lowStockLevel;
@override final  bool active;
 final  List<PackUnits> _packUnits;
@override List<PackUnits> get packUnits {
  if (_packUnits is EqualUnmodifiableListView) return _packUnits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packUnits);
}

 final  List<Grades> _grades;
@override List<Grades> get grades {
  if (_grades is EqualUnmodifiableListView) return _grades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grades);
}


/// Create a copy of ProductDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDtoOutputCopyWith<_ProductDtoOutput> get copyWith => __$ProductDtoOutputCopyWithImpl<_ProductDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameMl, nameMl) || other.nameMl == nameMl)&&(identical(other.category, category) || other.category == category)&&(identical(other.stockUnit, stockUnit) || other.stockUnit == stockUnit)&&(identical(other.minimumRate, minimumRate) || other.minimumRate == minimumRate)&&(identical(other.lowStockLevel, lowStockLevel) || other.lowStockLevel == lowStockLevel)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.packUnits, _packUnits)&&const DeepCollectionEquality().equals(other.grades, _grades));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,nameEn,nameMl,category,stockUnit,minimumRate,lowStockLevel,active,const DeepCollectionEquality().hash(_packUnits),const DeepCollectionEquality().hash(_grades));
}

@override
String toString() {
    return 'ProductDtoOutput(id: $id, nameEn: $nameEn, nameMl: $nameMl, category: $category, stockUnit: $stockUnit, minimumRate: $minimumRate, lowStockLevel: $lowStockLevel, active: $active, packUnits: $packUnits, grades: $grades)';
}


}

/// @nodoc
abstract mixin class _$ProductDtoOutputCopyWith<$Res> implements $ProductDtoOutputCopyWith<$Res> {
  factory _$ProductDtoOutputCopyWith(_ProductDtoOutput value, $Res Function(_ProductDtoOutput) _then) = __$ProductDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameEn, String? nameMl, String? category, ProductDtoOutputStockUnit stockUnit, int? minimumRate, String? lowStockLevel, bool active, List<PackUnits> packUnits, List<Grades> grades
});




}
/// @nodoc
class __$ProductDtoOutputCopyWithImpl<$Res>
    implements _$ProductDtoOutputCopyWith<$Res> {
  __$ProductDtoOutputCopyWithImpl(this._self, this._then);

  final _ProductDtoOutput _self;
  final $Res Function(_ProductDtoOutput) _then;

/// Create a copy of ProductDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameEn = null,Object? nameMl = freezed,Object? category = freezed,Object? stockUnit = null,Object? minimumRate = freezed,Object? lowStockLevel = freezed,Object? active = null,Object? packUnits = null,Object? grades = null,}) {
  return _then(_ProductDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,nameMl: freezed == nameMl ? _self.nameMl : nameMl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as ProductDtoOutputStockUnit,minimumRate: freezed == minimumRate ? _self.minimumRate : minimumRate // ignore: cast_nullable_to_non_nullable
as int?,lowStockLevel: freezed == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,packUnits: null == packUnits ? _self._packUnits : packUnits // ignore: cast_nullable_to_non_nullable
as List<PackUnits>,grades: null == grades ? _self._grades : grades // ignore: cast_nullable_to_non_nullable
as List<Grades>,
  ));
}


}

// dart format on
