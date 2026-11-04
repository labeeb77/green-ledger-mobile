// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'low_stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LowStock {

 String get productId; String get name; String get stockUnit; String get quantity; String get lowStockLevel;
/// Create a copy of LowStock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LowStockCopyWith<LowStock> get copyWith => _$LowStockCopyWithImpl<LowStock>(this as LowStock, _$identity);

  /// Serializes this LowStock to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LowStock;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LowStock&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.stockUnit, _this.stockUnit) || other.stockUnit == _this.stockUnit)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.lowStockLevel, _this.lowStockLevel) || other.lowStockLevel == _this.lowStockLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LowStock;
  return Object.hash(runtimeType,_this.productId,_this.name,_this.stockUnit,_this.quantity,_this.lowStockLevel);
}

@override
String toString() {
  final _this = this as LowStock;
  return 'LowStock(productId: ${_this.productId}, name: ${_this.name}, stockUnit: ${_this.stockUnit}, quantity: ${_this.quantity}, lowStockLevel: ${_this.lowStockLevel})';
}


}

/// @nodoc
abstract mixin class $LowStockCopyWith<$Res>  {
  factory $LowStockCopyWith(LowStock value, $Res Function(LowStock) _then) = _$LowStockCopyWithImpl;
@useResult
$Res call({
 String productId, String name, String stockUnit, String quantity, String lowStockLevel
});




}
/// @nodoc
class _$LowStockCopyWithImpl<$Res>
    implements $LowStockCopyWith<$Res> {
  _$LowStockCopyWithImpl(this._self, this._then);

  final LowStock _self;
  final $Res Function(LowStock) _then;

/// Create a copy of LowStock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? name = null,Object? stockUnit = null,Object? quantity = null,Object? lowStockLevel = null,}) {
  return _then(LowStock(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,lowStockLevel: null == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LowStock].
extension LowStockPatterns on LowStock {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LowStock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LowStock() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LowStock value)  $default,){
final _that = this;
switch (_that) {
case _LowStock():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LowStock value)?  $default,){
final _that = this;
switch (_that) {
case _LowStock() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String name,  String stockUnit,  String quantity,  String lowStockLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LowStock() when $default != null:
return $default(_that.productId,_that.name,_that.stockUnit,_that.quantity,_that.lowStockLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String name,  String stockUnit,  String quantity,  String lowStockLevel)  $default,) {final _that = this;
switch (_that) {
case _LowStock():
return $default(_that.productId,_that.name,_that.stockUnit,_that.quantity,_that.lowStockLevel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String name,  String stockUnit,  String quantity,  String lowStockLevel)?  $default,) {final _that = this;
switch (_that) {
case _LowStock() when $default != null:
return $default(_that.productId,_that.name,_that.stockUnit,_that.quantity,_that.lowStockLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LowStock implements LowStock {
  const _LowStock({required this.productId, required this.name, required this.stockUnit, required this.quantity, required this.lowStockLevel});
  factory _LowStock.fromJson(Map<String, dynamic> json) => _$LowStockFromJson(json);

@override final  String productId;
@override final  String name;
@override final  String stockUnit;
@override final  String quantity;
@override final  String lowStockLevel;

/// Create a copy of LowStock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LowStockCopyWith<_LowStock> get copyWith => __$LowStockCopyWithImpl<_LowStock>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LowStockToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LowStock&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.stockUnit, stockUnit) || other.stockUnit == stockUnit)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.lowStockLevel, lowStockLevel) || other.lowStockLevel == lowStockLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,name,stockUnit,quantity,lowStockLevel);
}

@override
String toString() {
    return 'LowStock(productId: $productId, name: $name, stockUnit: $stockUnit, quantity: $quantity, lowStockLevel: $lowStockLevel)';
}


}

/// @nodoc
abstract mixin class _$LowStockCopyWith<$Res> implements $LowStockCopyWith<$Res> {
  factory _$LowStockCopyWith(_LowStock value, $Res Function(_LowStock) _then) = __$LowStockCopyWithImpl;
@override @useResult
$Res call({
 String productId, String name, String stockUnit, String quantity, String lowStockLevel
});




}
/// @nodoc
class __$LowStockCopyWithImpl<$Res>
    implements _$LowStockCopyWith<$Res> {
  __$LowStockCopyWithImpl(this._self, this._then);

  final _LowStock _self;
  final $Res Function(_LowStock) _then;

/// Create a copy of LowStock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? name = null,Object? stockUnit = null,Object? quantity = null,Object? lowStockLevel = null,}) {
  return _then(_LowStock(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,lowStockLevel: null == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
