// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines5.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines5 {

 Product4 get product; PackUnit3? get packUnit; String? get packCount; String get quantity; int get rate; int get amount;
/// Create a copy of Lines5
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines5CopyWith<Lines5> get copyWith => _$Lines5CopyWithImpl<Lines5>(this as Lines5, _$identity);

  /// Serializes this Lines5 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines5;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines5&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.packUnit, _this.packUnit) || other.packUnit == _this.packUnit)&&(identical(other.packCount, _this.packCount) || other.packCount == _this.packCount)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines5;
  return Object.hash(runtimeType,_this.product,_this.packUnit,_this.packCount,_this.quantity,_this.rate,_this.amount);
}

@override
String toString() {
  final _this = this as Lines5;
  return 'Lines5(product: ${_this.product}, packUnit: ${_this.packUnit}, packCount: ${_this.packCount}, quantity: ${_this.quantity}, rate: ${_this.rate}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $Lines5CopyWith<$Res>  {
  factory $Lines5CopyWith(Lines5 value, $Res Function(Lines5) _then) = _$Lines5CopyWithImpl;
@useResult
$Res call({
 Product4 product, PackUnit3? packUnit, String? packCount, String quantity, int rate, int amount
});


$Product4CopyWith<$Res> get product;$PackUnit3CopyWith<$Res>? get packUnit;

}
/// @nodoc
class _$Lines5CopyWithImpl<$Res>
    implements $Lines5CopyWith<$Res> {
  _$Lines5CopyWithImpl(this._self, this._then);

  final Lines5 _self;
  final $Res Function(Lines5) _then;

/// Create a copy of Lines5
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? packUnit = freezed,Object? packCount = freezed,Object? quantity = null,Object? rate = null,Object? amount = null,}) {
  return _then(Lines5(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product4,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit3?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Lines5
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product4CopyWith<$Res> get product {
  
  return $Product4CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines5
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit3CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit3CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}


/// Adds pattern-matching-related methods to [Lines5].
extension Lines5Patterns on Lines5 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines5 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines5() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines5 value)  $default,){
final _that = this;
switch (_that) {
case _Lines5():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines5 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines5() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Product4 product,  PackUnit3? packUnit,  String? packCount,  String quantity,  int rate,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines5() when $default != null:
return $default(_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.rate,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Product4 product,  PackUnit3? packUnit,  String? packCount,  String quantity,  int rate,  int amount)  $default,) {final _that = this;
switch (_that) {
case _Lines5():
return $default(_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.rate,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Product4 product,  PackUnit3? packUnit,  String? packCount,  String quantity,  int rate,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _Lines5() when $default != null:
return $default(_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.rate,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines5 implements Lines5 {
  const _Lines5({required this.product, required this.packUnit, required this.packCount, required this.quantity, required this.rate, required this.amount});
  factory _Lines5.fromJson(Map<String, dynamic> json) => _$Lines5FromJson(json);

@override final  Product4 product;
@override final  PackUnit3? packUnit;
@override final  String? packCount;
@override final  String quantity;
@override final  int rate;
@override final  int amount;

/// Create a copy of Lines5
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines5CopyWith<_Lines5> get copyWith => __$Lines5CopyWithImpl<_Lines5>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines5ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines5&&(identical(other.product, product) || other.product == product)&&(identical(other.packUnit, packUnit) || other.packUnit == packUnit)&&(identical(other.packCount, packCount) || other.packCount == packCount)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,product,packUnit,packCount,quantity,rate,amount);
}

@override
String toString() {
    return 'Lines5(product: $product, packUnit: $packUnit, packCount: $packCount, quantity: $quantity, rate: $rate, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$Lines5CopyWith<$Res> implements $Lines5CopyWith<$Res> {
  factory _$Lines5CopyWith(_Lines5 value, $Res Function(_Lines5) _then) = __$Lines5CopyWithImpl;
@override @useResult
$Res call({
 Product4 product, PackUnit3? packUnit, String? packCount, String quantity, int rate, int amount
});


@override $Product4CopyWith<$Res> get product;@override $PackUnit3CopyWith<$Res>? get packUnit;

}
/// @nodoc
class __$Lines5CopyWithImpl<$Res>
    implements _$Lines5CopyWith<$Res> {
  __$Lines5CopyWithImpl(this._self, this._then);

  final _Lines5 _self;
  final $Res Function(_Lines5) _then;

/// Create a copy of Lines5
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? packUnit = freezed,Object? packCount = freezed,Object? quantity = null,Object? rate = null,Object? amount = null,}) {
  return _then(_Lines5(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product4,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit3?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Lines5
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product4CopyWith<$Res> get product {
  
  return $Product4CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines5
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit3CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit3CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}

// dart format on
