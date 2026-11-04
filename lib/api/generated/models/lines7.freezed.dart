// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines7.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines7 {

 String get id; Product5 get product; PackUnit4? get packUnit; String? get packCount; String get quantity; WastageReason? get wastageReason; int? get unitCost; int? get value;
/// Create a copy of Lines7
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines7CopyWith<Lines7> get copyWith => _$Lines7CopyWithImpl<Lines7>(this as Lines7, _$identity);

  /// Serializes this Lines7 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines7;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines7&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.packUnit, _this.packUnit) || other.packUnit == _this.packUnit)&&(identical(other.packCount, _this.packCount) || other.packCount == _this.packCount)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.wastageReason, _this.wastageReason) || other.wastageReason == _this.wastageReason)&&(identical(other.unitCost, _this.unitCost) || other.unitCost == _this.unitCost)&&(identical(other.value, _this.value) || other.value == _this.value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines7;
  return Object.hash(runtimeType,_this.id,_this.product,_this.packUnit,_this.packCount,_this.quantity,_this.wastageReason,_this.unitCost,_this.value);
}

@override
String toString() {
  final _this = this as Lines7;
  return 'Lines7(id: ${_this.id}, product: ${_this.product}, packUnit: ${_this.packUnit}, packCount: ${_this.packCount}, quantity: ${_this.quantity}, wastageReason: ${_this.wastageReason}, unitCost: ${_this.unitCost}, value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $Lines7CopyWith<$Res>  {
  factory $Lines7CopyWith(Lines7 value, $Res Function(Lines7) _then) = _$Lines7CopyWithImpl;
@useResult
$Res call({
 String id, Product5 product, PackUnit4? packUnit, String? packCount, String quantity, WastageReason? wastageReason, int? unitCost, int? value
});


$Product5CopyWith<$Res> get product;$PackUnit4CopyWith<$Res>? get packUnit;

}
/// @nodoc
class _$Lines7CopyWithImpl<$Res>
    implements $Lines7CopyWith<$Res> {
  _$Lines7CopyWithImpl(this._self, this._then);

  final Lines7 _self;
  final $Res Function(Lines7) _then;

/// Create a copy of Lines7
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? product = null,Object? packUnit = freezed,Object? packCount = freezed,Object? quantity = null,Object? wastageReason = freezed,Object? unitCost = freezed,Object? value = freezed,}) {
  return _then(Lines7(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product5,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit4?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,wastageReason: freezed == wastageReason ? _self.wastageReason : wastageReason // ignore: cast_nullable_to_non_nullable
as WastageReason?,unitCost: freezed == unitCost ? _self.unitCost : unitCost // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Lines7
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product5CopyWith<$Res> get product {
  
  return $Product5CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines7
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit4CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit4CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}


/// Adds pattern-matching-related methods to [Lines7].
extension Lines7Patterns on Lines7 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines7 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines7() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines7 value)  $default,){
final _that = this;
switch (_that) {
case _Lines7():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines7 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines7() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Product5 product,  PackUnit4? packUnit,  String? packCount,  String quantity,  WastageReason? wastageReason,  int? unitCost,  int? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines7() when $default != null:
return $default(_that.id,_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.wastageReason,_that.unitCost,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Product5 product,  PackUnit4? packUnit,  String? packCount,  String quantity,  WastageReason? wastageReason,  int? unitCost,  int? value)  $default,) {final _that = this;
switch (_that) {
case _Lines7():
return $default(_that.id,_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.wastageReason,_that.unitCost,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Product5 product,  PackUnit4? packUnit,  String? packCount,  String quantity,  WastageReason? wastageReason,  int? unitCost,  int? value)?  $default,) {final _that = this;
switch (_that) {
case _Lines7() when $default != null:
return $default(_that.id,_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.wastageReason,_that.unitCost,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines7 implements Lines7 {
  const _Lines7({required this.id, required this.product, required this.packUnit, required this.packCount, required this.quantity, required this.wastageReason, required this.unitCost, required this.value});
  factory _Lines7.fromJson(Map<String, dynamic> json) => _$Lines7FromJson(json);

@override final  String id;
@override final  Product5 product;
@override final  PackUnit4? packUnit;
@override final  String? packCount;
@override final  String quantity;
@override final  WastageReason? wastageReason;
@override final  int? unitCost;
@override final  int? value;

/// Create a copy of Lines7
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines7CopyWith<_Lines7> get copyWith => __$Lines7CopyWithImpl<_Lines7>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines7ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines7&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.packUnit, packUnit) || other.packUnit == packUnit)&&(identical(other.packCount, packCount) || other.packCount == packCount)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.wastageReason, wastageReason) || other.wastageReason == wastageReason)&&(identical(other.unitCost, unitCost) || other.unitCost == unitCost)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,product,packUnit,packCount,quantity,wastageReason,unitCost,value);
}

@override
String toString() {
    return 'Lines7(id: $id, product: $product, packUnit: $packUnit, packCount: $packCount, quantity: $quantity, wastageReason: $wastageReason, unitCost: $unitCost, value: $value)';
}


}

/// @nodoc
abstract mixin class _$Lines7CopyWith<$Res> implements $Lines7CopyWith<$Res> {
  factory _$Lines7CopyWith(_Lines7 value, $Res Function(_Lines7) _then) = __$Lines7CopyWithImpl;
@override @useResult
$Res call({
 String id, Product5 product, PackUnit4? packUnit, String? packCount, String quantity, WastageReason? wastageReason, int? unitCost, int? value
});


@override $Product5CopyWith<$Res> get product;@override $PackUnit4CopyWith<$Res>? get packUnit;

}
/// @nodoc
class __$Lines7CopyWithImpl<$Res>
    implements _$Lines7CopyWith<$Res> {
  __$Lines7CopyWithImpl(this._self, this._then);

  final _Lines7 _self;
  final $Res Function(_Lines7) _then;

/// Create a copy of Lines7
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? product = null,Object? packUnit = freezed,Object? packCount = freezed,Object? quantity = null,Object? wastageReason = freezed,Object? unitCost = freezed,Object? value = freezed,}) {
  return _then(_Lines7(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product5,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit4?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,wastageReason: freezed == wastageReason ? _self.wastageReason : wastageReason // ignore: cast_nullable_to_non_nullable
as WastageReason?,unitCost: freezed == unitCost ? _self.unitCost : unitCost // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Lines7
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product5CopyWith<$Res> get product {
  
  return $Product5CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines7
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit4CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit4CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}

// dart format on
