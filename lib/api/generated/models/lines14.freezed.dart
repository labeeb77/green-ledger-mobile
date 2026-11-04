// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines14.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines14 {

 String get id; Product9 get product; PackUnit6? get packUnit; String? get packCount; String get quantity; String get dispatchedQuantity; String get pendingQuantity; bool get closed; RatePer get ratePer; int? get rate;
/// Create a copy of Lines14
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines14CopyWith<Lines14> get copyWith => _$Lines14CopyWithImpl<Lines14>(this as Lines14, _$identity);

  /// Serializes this Lines14 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines14;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines14&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.packUnit, _this.packUnit) || other.packUnit == _this.packUnit)&&(identical(other.packCount, _this.packCount) || other.packCount == _this.packCount)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.dispatchedQuantity, _this.dispatchedQuantity) || other.dispatchedQuantity == _this.dispatchedQuantity)&&(identical(other.pendingQuantity, _this.pendingQuantity) || other.pendingQuantity == _this.pendingQuantity)&&(identical(other.closed, _this.closed) || other.closed == _this.closed)&&(identical(other.ratePer, _this.ratePer) || other.ratePer == _this.ratePer)&&(identical(other.rate, _this.rate) || other.rate == _this.rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines14;
  return Object.hash(runtimeType,_this.id,_this.product,_this.packUnit,_this.packCount,_this.quantity,_this.dispatchedQuantity,_this.pendingQuantity,_this.closed,_this.ratePer,_this.rate);
}

@override
String toString() {
  final _this = this as Lines14;
  return 'Lines14(id: ${_this.id}, product: ${_this.product}, packUnit: ${_this.packUnit}, packCount: ${_this.packCount}, quantity: ${_this.quantity}, dispatchedQuantity: ${_this.dispatchedQuantity}, pendingQuantity: ${_this.pendingQuantity}, closed: ${_this.closed}, ratePer: ${_this.ratePer}, rate: ${_this.rate})';
}


}

/// @nodoc
abstract mixin class $Lines14CopyWith<$Res>  {
  factory $Lines14CopyWith(Lines14 value, $Res Function(Lines14) _then) = _$Lines14CopyWithImpl;
@useResult
$Res call({
 String id, Product9 product, PackUnit6? packUnit, String? packCount, String quantity, String dispatchedQuantity, String pendingQuantity, bool closed, RatePer ratePer, int? rate
});


$Product9CopyWith<$Res> get product;$PackUnit6CopyWith<$Res>? get packUnit;

}
/// @nodoc
class _$Lines14CopyWithImpl<$Res>
    implements $Lines14CopyWith<$Res> {
  _$Lines14CopyWithImpl(this._self, this._then);

  final Lines14 _self;
  final $Res Function(Lines14) _then;

/// Create a copy of Lines14
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? product = null,Object? packUnit = freezed,Object? packCount = freezed,Object? quantity = null,Object? dispatchedQuantity = null,Object? pendingQuantity = null,Object? closed = null,Object? ratePer = null,Object? rate = freezed,}) {
  return _then(Lines14(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product9,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit6?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,dispatchedQuantity: null == dispatchedQuantity ? _self.dispatchedQuantity : dispatchedQuantity // ignore: cast_nullable_to_non_nullable
as String,pendingQuantity: null == pendingQuantity ? _self.pendingQuantity : pendingQuantity // ignore: cast_nullable_to_non_nullable
as String,closed: null == closed ? _self.closed : closed // ignore: cast_nullable_to_non_nullable
as bool,ratePer: null == ratePer ? _self.ratePer : ratePer // ignore: cast_nullable_to_non_nullable
as RatePer,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Lines14
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product9CopyWith<$Res> get product {
  
  return $Product9CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines14
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit6CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit6CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}


/// Adds pattern-matching-related methods to [Lines14].
extension Lines14Patterns on Lines14 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines14 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines14() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines14 value)  $default,){
final _that = this;
switch (_that) {
case _Lines14():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines14 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines14() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Product9 product,  PackUnit6? packUnit,  String? packCount,  String quantity,  String dispatchedQuantity,  String pendingQuantity,  bool closed,  RatePer ratePer,  int? rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines14() when $default != null:
return $default(_that.id,_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.dispatchedQuantity,_that.pendingQuantity,_that.closed,_that.ratePer,_that.rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Product9 product,  PackUnit6? packUnit,  String? packCount,  String quantity,  String dispatchedQuantity,  String pendingQuantity,  bool closed,  RatePer ratePer,  int? rate)  $default,) {final _that = this;
switch (_that) {
case _Lines14():
return $default(_that.id,_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.dispatchedQuantity,_that.pendingQuantity,_that.closed,_that.ratePer,_that.rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Product9 product,  PackUnit6? packUnit,  String? packCount,  String quantity,  String dispatchedQuantity,  String pendingQuantity,  bool closed,  RatePer ratePer,  int? rate)?  $default,) {final _that = this;
switch (_that) {
case _Lines14() when $default != null:
return $default(_that.id,_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.dispatchedQuantity,_that.pendingQuantity,_that.closed,_that.ratePer,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines14 implements Lines14 {
  const _Lines14({required this.id, required this.product, required this.packUnit, required this.packCount, required this.quantity, required this.dispatchedQuantity, required this.pendingQuantity, required this.closed, required this.ratePer, required this.rate});
  factory _Lines14.fromJson(Map<String, dynamic> json) => _$Lines14FromJson(json);

@override final  String id;
@override final  Product9 product;
@override final  PackUnit6? packUnit;
@override final  String? packCount;
@override final  String quantity;
@override final  String dispatchedQuantity;
@override final  String pendingQuantity;
@override final  bool closed;
@override final  RatePer ratePer;
@override final  int? rate;

/// Create a copy of Lines14
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines14CopyWith<_Lines14> get copyWith => __$Lines14CopyWithImpl<_Lines14>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines14ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines14&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.packUnit, packUnit) || other.packUnit == packUnit)&&(identical(other.packCount, packCount) || other.packCount == packCount)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.dispatchedQuantity, dispatchedQuantity) || other.dispatchedQuantity == dispatchedQuantity)&&(identical(other.pendingQuantity, pendingQuantity) || other.pendingQuantity == pendingQuantity)&&(identical(other.closed, closed) || other.closed == closed)&&(identical(other.ratePer, ratePer) || other.ratePer == ratePer)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,product,packUnit,packCount,quantity,dispatchedQuantity,pendingQuantity,closed,ratePer,rate);
}

@override
String toString() {
    return 'Lines14(id: $id, product: $product, packUnit: $packUnit, packCount: $packCount, quantity: $quantity, dispatchedQuantity: $dispatchedQuantity, pendingQuantity: $pendingQuantity, closed: $closed, ratePer: $ratePer, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$Lines14CopyWith<$Res> implements $Lines14CopyWith<$Res> {
  factory _$Lines14CopyWith(_Lines14 value, $Res Function(_Lines14) _then) = __$Lines14CopyWithImpl;
@override @useResult
$Res call({
 String id, Product9 product, PackUnit6? packUnit, String? packCount, String quantity, String dispatchedQuantity, String pendingQuantity, bool closed, RatePer ratePer, int? rate
});


@override $Product9CopyWith<$Res> get product;@override $PackUnit6CopyWith<$Res>? get packUnit;

}
/// @nodoc
class __$Lines14CopyWithImpl<$Res>
    implements _$Lines14CopyWith<$Res> {
  __$Lines14CopyWithImpl(this._self, this._then);

  final _Lines14 _self;
  final $Res Function(_Lines14) _then;

/// Create a copy of Lines14
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? product = null,Object? packUnit = freezed,Object? packCount = freezed,Object? quantity = null,Object? dispatchedQuantity = null,Object? pendingQuantity = null,Object? closed = null,Object? ratePer = null,Object? rate = freezed,}) {
  return _then(_Lines14(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product9,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit6?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,dispatchedQuantity: null == dispatchedQuantity ? _self.dispatchedQuantity : dispatchedQuantity // ignore: cast_nullable_to_non_nullable
as String,pendingQuantity: null == pendingQuantity ? _self.pendingQuantity : pendingQuantity // ignore: cast_nullable_to_non_nullable
as String,closed: null == closed ? _self.closed : closed // ignore: cast_nullable_to_non_nullable
as bool,ratePer: null == ratePer ? _self.ratePer : ratePer // ignore: cast_nullable_to_non_nullable
as RatePer,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Lines14
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product9CopyWith<$Res> get product {
  
  return $Product9CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines14
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit6CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit6CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}

// dart format on
