// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines4.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines4 {

 String get id; String get goodsReceiptLineId; String get receiptNumber; Product3 get product; String get quantity; int get rate; int get amount;
/// Create a copy of Lines4
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines4CopyWith<Lines4> get copyWith => _$Lines4CopyWithImpl<Lines4>(this as Lines4, _$identity);

  /// Serializes this Lines4 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines4;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines4&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.goodsReceiptLineId, _this.goodsReceiptLineId) || other.goodsReceiptLineId == _this.goodsReceiptLineId)&&(identical(other.receiptNumber, _this.receiptNumber) || other.receiptNumber == _this.receiptNumber)&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines4;
  return Object.hash(runtimeType,_this.id,_this.goodsReceiptLineId,_this.receiptNumber,_this.product,_this.quantity,_this.rate,_this.amount);
}

@override
String toString() {
  final _this = this as Lines4;
  return 'Lines4(id: ${_this.id}, goodsReceiptLineId: ${_this.goodsReceiptLineId}, receiptNumber: ${_this.receiptNumber}, product: ${_this.product}, quantity: ${_this.quantity}, rate: ${_this.rate}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $Lines4CopyWith<$Res>  {
  factory $Lines4CopyWith(Lines4 value, $Res Function(Lines4) _then) = _$Lines4CopyWithImpl;
@useResult
$Res call({
 String id, String goodsReceiptLineId, String receiptNumber, Product3 product, String quantity, int rate, int amount
});


$Product3CopyWith<$Res> get product;

}
/// @nodoc
class _$Lines4CopyWithImpl<$Res>
    implements $Lines4CopyWith<$Res> {
  _$Lines4CopyWithImpl(this._self, this._then);

  final Lines4 _self;
  final $Res Function(Lines4) _then;

/// Create a copy of Lines4
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? goodsReceiptLineId = null,Object? receiptNumber = null,Object? product = null,Object? quantity = null,Object? rate = null,Object? amount = null,}) {
  return _then(Lines4(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,goodsReceiptLineId: null == goodsReceiptLineId ? _self.goodsReceiptLineId : goodsReceiptLineId // ignore: cast_nullable_to_non_nullable
as String,receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product3,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Lines4
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product3CopyWith<$Res> get product {
  
  return $Product3CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [Lines4].
extension Lines4Patterns on Lines4 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines4 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines4() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines4 value)  $default,){
final _that = this;
switch (_that) {
case _Lines4():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines4 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines4() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String goodsReceiptLineId,  String receiptNumber,  Product3 product,  String quantity,  int rate,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines4() when $default != null:
return $default(_that.id,_that.goodsReceiptLineId,_that.receiptNumber,_that.product,_that.quantity,_that.rate,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String goodsReceiptLineId,  String receiptNumber,  Product3 product,  String quantity,  int rate,  int amount)  $default,) {final _that = this;
switch (_that) {
case _Lines4():
return $default(_that.id,_that.goodsReceiptLineId,_that.receiptNumber,_that.product,_that.quantity,_that.rate,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String goodsReceiptLineId,  String receiptNumber,  Product3 product,  String quantity,  int rate,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _Lines4() when $default != null:
return $default(_that.id,_that.goodsReceiptLineId,_that.receiptNumber,_that.product,_that.quantity,_that.rate,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines4 implements Lines4 {
  const _Lines4({required this.id, required this.goodsReceiptLineId, required this.receiptNumber, required this.product, required this.quantity, required this.rate, required this.amount});
  factory _Lines4.fromJson(Map<String, dynamic> json) => _$Lines4FromJson(json);

@override final  String id;
@override final  String goodsReceiptLineId;
@override final  String receiptNumber;
@override final  Product3 product;
@override final  String quantity;
@override final  int rate;
@override final  int amount;

/// Create a copy of Lines4
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines4CopyWith<_Lines4> get copyWith => __$Lines4CopyWithImpl<_Lines4>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines4ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines4&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsReceiptLineId, goodsReceiptLineId) || other.goodsReceiptLineId == goodsReceiptLineId)&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,goodsReceiptLineId,receiptNumber,product,quantity,rate,amount);
}

@override
String toString() {
    return 'Lines4(id: $id, goodsReceiptLineId: $goodsReceiptLineId, receiptNumber: $receiptNumber, product: $product, quantity: $quantity, rate: $rate, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$Lines4CopyWith<$Res> implements $Lines4CopyWith<$Res> {
  factory _$Lines4CopyWith(_Lines4 value, $Res Function(_Lines4) _then) = __$Lines4CopyWithImpl;
@override @useResult
$Res call({
 String id, String goodsReceiptLineId, String receiptNumber, Product3 product, String quantity, int rate, int amount
});


@override $Product3CopyWith<$Res> get product;

}
/// @nodoc
class __$Lines4CopyWithImpl<$Res>
    implements _$Lines4CopyWith<$Res> {
  __$Lines4CopyWithImpl(this._self, this._then);

  final _Lines4 _self;
  final $Res Function(_Lines4) _then;

/// Create a copy of Lines4
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? goodsReceiptLineId = null,Object? receiptNumber = null,Object? product = null,Object? quantity = null,Object? rate = null,Object? amount = null,}) {
  return _then(_Lines4(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,goodsReceiptLineId: null == goodsReceiptLineId ? _self.goodsReceiptLineId : goodsReceiptLineId // ignore: cast_nullable_to_non_nullable
as String,receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product3,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Lines4
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product3CopyWith<$Res> get product {
  
  return $Product3CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
