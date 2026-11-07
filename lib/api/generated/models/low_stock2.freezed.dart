// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'low_stock2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LowStock2 {

 String get productId; String get name; String get stockUnit; String get quantity; String get lowStockLevel;
/// Create a copy of LowStock2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LowStock2CopyWith<LowStock2> get copyWith => _$LowStock2CopyWithImpl<LowStock2>(this as LowStock2, _$identity);

  /// Serializes this LowStock2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LowStock2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LowStock2&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.stockUnit, _this.stockUnit) || other.stockUnit == _this.stockUnit)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.lowStockLevel, _this.lowStockLevel) || other.lowStockLevel == _this.lowStockLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LowStock2;
  return Object.hash(runtimeType,_this.productId,_this.name,_this.stockUnit,_this.quantity,_this.lowStockLevel);
}

@override
String toString() {
  final _this = this as LowStock2;
  return 'LowStock2(productId: ${_this.productId}, name: ${_this.name}, stockUnit: ${_this.stockUnit}, quantity: ${_this.quantity}, lowStockLevel: ${_this.lowStockLevel})';
}


}

/// @nodoc
abstract mixin class $LowStock2CopyWith<$Res>  {
  factory $LowStock2CopyWith(LowStock2 value, $Res Function(LowStock2) _then) = _$LowStock2CopyWithImpl;
@useResult
$Res call({
 String productId, String name, String stockUnit, String quantity, String lowStockLevel
});




}
/// @nodoc
class _$LowStock2CopyWithImpl<$Res>
    implements $LowStock2CopyWith<$Res> {
  _$LowStock2CopyWithImpl(this._self, this._then);

  final LowStock2 _self;
  final $Res Function(LowStock2) _then;

/// Create a copy of LowStock2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? name = null,Object? stockUnit = null,Object? quantity = null,Object? lowStockLevel = null,}) {
  return _then(LowStock2(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,lowStockLevel: null == lowStockLevel ? _self.lowStockLevel : lowStockLevel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LowStock2].
extension LowStock2Patterns on LowStock2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LowStock2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LowStock2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LowStock2 value)  $default,){
final _that = this;
switch (_that) {
case _LowStock2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LowStock2 value)?  $default,){
final _that = this;
switch (_that) {
case _LowStock2() when $default != null:
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
case _LowStock2() when $default != null:
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
case _LowStock2():
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
case _LowStock2() when $default != null:
return $default(_that.productId,_that.name,_that.stockUnit,_that.quantity,_that.lowStockLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LowStock2 implements LowStock2 {
  const _LowStock2({required this.productId, required this.name, required this.stockUnit, required this.quantity, required this.lowStockLevel});
  factory _LowStock2.fromJson(Map<String, dynamic> json) => _$LowStock2FromJson(json);

@override final  String productId;
@override final  String name;
@override final  String stockUnit;
@override final  String quantity;
@override final  String lowStockLevel;

/// Create a copy of LowStock2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LowStock2CopyWith<_LowStock2> get copyWith => __$LowStock2CopyWithImpl<_LowStock2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LowStock2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LowStock2&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.stockUnit, stockUnit) || other.stockUnit == stockUnit)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.lowStockLevel, lowStockLevel) || other.lowStockLevel == lowStockLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,name,stockUnit,quantity,lowStockLevel);
}

@override
String toString() {
    return 'LowStock2(productId: $productId, name: $name, stockUnit: $stockUnit, quantity: $quantity, lowStockLevel: $lowStockLevel)';
}


}

/// @nodoc
abstract mixin class _$LowStock2CopyWith<$Res> implements $LowStock2CopyWith<$Res> {
  factory _$LowStock2CopyWith(_LowStock2 value, $Res Function(_LowStock2) _then) = __$LowStock2CopyWithImpl;
@override @useResult
$Res call({
 String productId, String name, String stockUnit, String quantity, String lowStockLevel
});




}
/// @nodoc
class __$LowStock2CopyWithImpl<$Res>
    implements _$LowStock2CopyWith<$Res> {
  __$LowStock2CopyWithImpl(this._self, this._then);

  final _LowStock2 _self;
  final $Res Function(_LowStock2) _then;

/// Create a copy of LowStock2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? name = null,Object? stockUnit = null,Object? quantity = null,Object? lowStockLevel = null,}) {
  return _then(_LowStock2(
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
