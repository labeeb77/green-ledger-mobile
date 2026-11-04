// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_row_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockRowDtoOutput {

 String get productId; String get name; String? get nameMl; String get stockUnit; bool get active; String get quantity; List<Packs> get packs; String? get lowStockLevel; bool get lowStock; String get wastageToday;
/// Create a copy of StockRowDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockRowDtoOutputCopyWith<StockRowDtoOutput> get copyWith => _$StockRowDtoOutputCopyWithImpl<StockRowDtoOutput>(this as StockRowDtoOutput, _$identity);

  /// Serializes this StockRowDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StockRowDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockRowDtoOutput&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.nameMl, _this.nameMl) || other.nameMl == _this.nameMl)&&(identical(other.stockUnit, _this.stockUnit) || other.stockUnit == _this.stockUnit)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&const DeepCollectionEquality().equals(other.packs, _this.packs)&&(identical(other.lowStockLevel, _this.lowStockLevel) || other.lowStockLevel == _this.lowStockLevel)&&(identical(other.lowStock, _this.lowStock) || other.lowStock == _this.lowStock)&&(identical(other.wastageToday, _this.wastageToday) || other.wastageToday == _this.wastageToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StockRowDtoOutput;
  return Object.hash(runtimeType,_this.productId,_this.name,_this.nameMl,_this.stockUnit,_this.active,_this.quantity,const DeepCollectionEquality().hash(_this.packs),_this.lowStockLevel,_this.lowStock,_this.wastageToday);
}

@override
String toString() {
  final _this = this as StockRowDtoOutput;
  return 'StockRowDtoOutput(productId: ${_this.productId}, name: ${_this.name}, nameMl: ${_this.nameMl}, stockUnit: ${_this.stockUnit}, active: ${_this.active}, quantity: ${_this.quantity}, packs: ${_this.packs}, lowStockLevel: ${_this.lowStockLevel}, lowStock: ${_this.lowStock}, wastageToday: ${_this.wastageToday})';
}


}

/// @nodoc
abstract mixin class $StockRowDtoOutputCopyWith<$Res>  {
  factory $StockRowDtoOutputCopyWith(StockRowDtoOutput value, $Res Function(StockRowDtoOutput) _then) = _$StockRowDtoOutputCopyWithImpl;
@useResult
$Res call({
 String productId, String name, String? nameMl, String stockUnit, bool active, String quantity, List<Packs> packs, String? lowStockLevel, bool lowStock, String wastageToday
});




}
/// @nodoc
class _$StockRowDtoOutputCopyWithImpl<$Res>
    implements $StockRowDtoOutputCopyWith<$Res> {
  _$StockRowDtoOutputCopyWithImpl(this._self, this._then);

  final StockRowDtoOutput _self;
  final $Res Function(StockRowDtoOutput) _then;

/// Create a copy of StockRowDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? name = null,Object? nameMl = freezed,Object? stockUnit = null,Object? active = null,Object? quantity = null,Object? packs = null,Object? lowStockLevel = freezed,Object? lowStock = null,Object? wastageToday = null,}) {
  return _then(StockRowDtoOutput(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameMl: freezed == nameMl ? _self.nameMl : nameMl // ignore: cast_nullable_to_non_nullable
as String?,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,packs: null == packs ? _self.packs : packs // ignore: cast_nullable_to_non_nullable
as List<Packs>,lowStockLevel: freezed == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as String?,lowStock: null == lowStock ? _self.lowStock : lowStock // ignore: cast_nullable_to_non_nullable
as bool,wastageToday: null == wastageToday ? _self.wastageToday : wastageToday // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StockRowDtoOutput].
extension StockRowDtoOutputPatterns on StockRowDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockRowDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockRowDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockRowDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _StockRowDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockRowDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _StockRowDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String name,  String? nameMl,  String stockUnit,  bool active,  String quantity,  List<Packs> packs,  String? lowStockLevel,  bool lowStock,  String wastageToday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockRowDtoOutput() when $default != null:
return $default(_that.productId,_that.name,_that.nameMl,_that.stockUnit,_that.active,_that.quantity,_that.packs,_that.lowStockLevel,_that.lowStock,_that.wastageToday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String name,  String? nameMl,  String stockUnit,  bool active,  String quantity,  List<Packs> packs,  String? lowStockLevel,  bool lowStock,  String wastageToday)  $default,) {final _that = this;
switch (_that) {
case _StockRowDtoOutput():
return $default(_that.productId,_that.name,_that.nameMl,_that.stockUnit,_that.active,_that.quantity,_that.packs,_that.lowStockLevel,_that.lowStock,_that.wastageToday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String name,  String? nameMl,  String stockUnit,  bool active,  String quantity,  List<Packs> packs,  String? lowStockLevel,  bool lowStock,  String wastageToday)?  $default,) {final _that = this;
switch (_that) {
case _StockRowDtoOutput() when $default != null:
return $default(_that.productId,_that.name,_that.nameMl,_that.stockUnit,_that.active,_that.quantity,_that.packs,_that.lowStockLevel,_that.lowStock,_that.wastageToday);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockRowDtoOutput implements StockRowDtoOutput {
  const _StockRowDtoOutput({required this.productId, required this.name, required this.nameMl, required this.stockUnit, required this.active, required this.quantity, required  List<Packs> packs, required this.lowStockLevel, required this.lowStock, required this.wastageToday}): _packs = packs;
  factory _StockRowDtoOutput.fromJson(Map<String, dynamic> json) => _$StockRowDtoOutputFromJson(json);

@override final  String productId;
@override final  String name;
@override final  String? nameMl;
@override final  String stockUnit;
@override final  bool active;
@override final  String quantity;
 final  List<Packs> _packs;
@override List<Packs> get packs {
  if (_packs is EqualUnmodifiableListView) return _packs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packs);
}

@override final  String? lowStockLevel;
@override final  bool lowStock;
@override final  String wastageToday;

/// Create a copy of StockRowDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockRowDtoOutputCopyWith<_StockRowDtoOutput> get copyWith => __$StockRowDtoOutputCopyWithImpl<_StockRowDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockRowDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockRowDtoOutput&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameMl, nameMl) || other.nameMl == nameMl)&&(identical(other.stockUnit, stockUnit) || other.stockUnit == stockUnit)&&(identical(other.active, active) || other.active == active)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other.packs, _packs)&&(identical(other.lowStockLevel, lowStockLevel) || other.lowStockLevel == lowStockLevel)&&(identical(other.lowStock, lowStock) || other.lowStock == lowStock)&&(identical(other.wastageToday, wastageToday) || other.wastageToday == wastageToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,name,nameMl,stockUnit,active,quantity,const DeepCollectionEquality().hash(_packs),lowStockLevel,lowStock,wastageToday);
}

@override
String toString() {
    return 'StockRowDtoOutput(productId: $productId, name: $name, nameMl: $nameMl, stockUnit: $stockUnit, active: $active, quantity: $quantity, packs: $packs, lowStockLevel: $lowStockLevel, lowStock: $lowStock, wastageToday: $wastageToday)';
}


}

/// @nodoc
abstract mixin class _$StockRowDtoOutputCopyWith<$Res> implements $StockRowDtoOutputCopyWith<$Res> {
  factory _$StockRowDtoOutputCopyWith(_StockRowDtoOutput value, $Res Function(_StockRowDtoOutput) _then) = __$StockRowDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String productId, String name, String? nameMl, String stockUnit, bool active, String quantity, List<Packs> packs, String? lowStockLevel, bool lowStock, String wastageToday
});




}
/// @nodoc
class __$StockRowDtoOutputCopyWithImpl<$Res>
    implements _$StockRowDtoOutputCopyWith<$Res> {
  __$StockRowDtoOutputCopyWithImpl(this._self, this._then);

  final _StockRowDtoOutput _self;
  final $Res Function(_StockRowDtoOutput) _then;

/// Create a copy of StockRowDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? name = null,Object? nameMl = freezed,Object? stockUnit = null,Object? active = null,Object? quantity = null,Object? packs = null,Object? lowStockLevel = freezed,Object? lowStock = null,Object? wastageToday = null,}) {
  return _then(_StockRowDtoOutput(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameMl: freezed == nameMl ? _self.nameMl : nameMl // ignore: cast_nullable_to_non_nullable
as String?,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,packs: null == packs ? _self._packs : packs // ignore: cast_nullable_to_non_nullable
as List<Packs>,lowStockLevel: freezed == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as String?,lowStock: null == lowStock ? _self.lowStock : lowStock // ignore: cast_nullable_to_non_nullable
as bool,wastageToday: null == wastageToday ? _self.wastageToday : wastageToday // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
