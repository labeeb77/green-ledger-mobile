// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines17.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines17 {

 String get id; String? get billLineId; Product10 get product; PackUnit7? get packUnit; String? get packCount; String get quantity; int? get rate; int? get amount; Inspection get inspection; InspectedBy? get inspectedBy; DateTime? get inspectedAt;
/// Create a copy of Lines17
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines17CopyWith<Lines17> get copyWith => _$Lines17CopyWithImpl<Lines17>(this as Lines17, _$identity);

  /// Serializes this Lines17 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines17;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines17&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.billLineId, _this.billLineId) || other.billLineId == _this.billLineId)&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.packUnit, _this.packUnit) || other.packUnit == _this.packUnit)&&(identical(other.packCount, _this.packCount) || other.packCount == _this.packCount)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.inspection, _this.inspection) || other.inspection == _this.inspection)&&(identical(other.inspectedBy, _this.inspectedBy) || other.inspectedBy == _this.inspectedBy)&&(identical(other.inspectedAt, _this.inspectedAt) || other.inspectedAt == _this.inspectedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines17;
  return Object.hash(runtimeType,_this.id,_this.billLineId,_this.product,_this.packUnit,_this.packCount,_this.quantity,_this.rate,_this.amount,_this.inspection,_this.inspectedBy,_this.inspectedAt);
}

@override
String toString() {
  final _this = this as Lines17;
  return 'Lines17(id: ${_this.id}, billLineId: ${_this.billLineId}, product: ${_this.product}, packUnit: ${_this.packUnit}, packCount: ${_this.packCount}, quantity: ${_this.quantity}, rate: ${_this.rate}, amount: ${_this.amount}, inspection: ${_this.inspection}, inspectedBy: ${_this.inspectedBy}, inspectedAt: ${_this.inspectedAt})';
}


}

/// @nodoc
abstract mixin class $Lines17CopyWith<$Res>  {
  factory $Lines17CopyWith(Lines17 value, $Res Function(Lines17) _then) = _$Lines17CopyWithImpl;
@useResult
$Res call({
 String id, String? billLineId, Product10 product, PackUnit7? packUnit, String? packCount, String quantity, int? rate, int? amount, Inspection inspection, InspectedBy? inspectedBy, DateTime? inspectedAt
});


$Product10CopyWith<$Res> get product;$PackUnit7CopyWith<$Res>? get packUnit;$InspectedByCopyWith<$Res>? get inspectedBy;

}
/// @nodoc
class _$Lines17CopyWithImpl<$Res>
    implements $Lines17CopyWith<$Res> {
  _$Lines17CopyWithImpl(this._self, this._then);

  final Lines17 _self;
  final $Res Function(Lines17) _then;

/// Create a copy of Lines17
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? billLineId = freezed,Object? product = null,Object? packUnit = freezed,Object? packCount = freezed,Object? quantity = null,Object? rate = freezed,Object? amount = freezed,Object? inspection = null,Object? inspectedBy = freezed,Object? inspectedAt = freezed,}) {
  return _then(Lines17(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,billLineId: freezed == billLineId ? _self.billLineId : billLineId // ignore: cast_nullable_to_non_nullable
as String?,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product10,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit7?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,inspection: null == inspection ? _self.inspection : inspection // ignore: cast_nullable_to_non_nullable
as Inspection,inspectedBy: freezed == inspectedBy ? _self.inspectedBy : inspectedBy // ignore: cast_nullable_to_non_nullable
as InspectedBy?,inspectedAt: freezed == inspectedAt ? _self.inspectedAt : inspectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Lines17
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product10CopyWith<$Res> get product {
  
  return $Product10CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines17
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit7CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit7CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}/// Create a copy of Lines17
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InspectedByCopyWith<$Res>? get inspectedBy {
    if (_self.inspectedBy == null) {
    return null;
  }

  return $InspectedByCopyWith<$Res>(_self.inspectedBy!, (value) {
    return _then(_self.copyWith(inspectedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [Lines17].
extension Lines17Patterns on Lines17 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines17 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines17() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines17 value)  $default,){
final _that = this;
switch (_that) {
case _Lines17():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines17 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines17() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? billLineId,  Product10 product,  PackUnit7? packUnit,  String? packCount,  String quantity,  int? rate,  int? amount,  Inspection inspection,  InspectedBy? inspectedBy,  DateTime? inspectedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines17() when $default != null:
return $default(_that.id,_that.billLineId,_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.rate,_that.amount,_that.inspection,_that.inspectedBy,_that.inspectedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? billLineId,  Product10 product,  PackUnit7? packUnit,  String? packCount,  String quantity,  int? rate,  int? amount,  Inspection inspection,  InspectedBy? inspectedBy,  DateTime? inspectedAt)  $default,) {final _that = this;
switch (_that) {
case _Lines17():
return $default(_that.id,_that.billLineId,_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.rate,_that.amount,_that.inspection,_that.inspectedBy,_that.inspectedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? billLineId,  Product10 product,  PackUnit7? packUnit,  String? packCount,  String quantity,  int? rate,  int? amount,  Inspection inspection,  InspectedBy? inspectedBy,  DateTime? inspectedAt)?  $default,) {final _that = this;
switch (_that) {
case _Lines17() when $default != null:
return $default(_that.id,_that.billLineId,_that.product,_that.packUnit,_that.packCount,_that.quantity,_that.rate,_that.amount,_that.inspection,_that.inspectedBy,_that.inspectedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines17 implements Lines17 {
  const _Lines17({required this.id, required this.billLineId, required this.product, required this.packUnit, required this.packCount, required this.quantity, required this.rate, required this.amount, required this.inspection, required this.inspectedBy, required this.inspectedAt});
  factory _Lines17.fromJson(Map<String, dynamic> json) => _$Lines17FromJson(json);

@override final  String id;
@override final  String? billLineId;
@override final  Product10 product;
@override final  PackUnit7? packUnit;
@override final  String? packCount;
@override final  String quantity;
@override final  int? rate;
@override final  int? amount;
@override final  Inspection inspection;
@override final  InspectedBy? inspectedBy;
@override final  DateTime? inspectedAt;

/// Create a copy of Lines17
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines17CopyWith<_Lines17> get copyWith => __$Lines17CopyWithImpl<_Lines17>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines17ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines17&&(identical(other.id, id) || other.id == id)&&(identical(other.billLineId, billLineId) || other.billLineId == billLineId)&&(identical(other.product, product) || other.product == product)&&(identical(other.packUnit, packUnit) || other.packUnit == packUnit)&&(identical(other.packCount, packCount) || other.packCount == packCount)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.inspection, inspection) || other.inspection == inspection)&&(identical(other.inspectedBy, inspectedBy) || other.inspectedBy == inspectedBy)&&(identical(other.inspectedAt, inspectedAt) || other.inspectedAt == inspectedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,billLineId,product,packUnit,packCount,quantity,rate,amount,inspection,inspectedBy,inspectedAt);
}

@override
String toString() {
    return 'Lines17(id: $id, billLineId: $billLineId, product: $product, packUnit: $packUnit, packCount: $packCount, quantity: $quantity, rate: $rate, amount: $amount, inspection: $inspection, inspectedBy: $inspectedBy, inspectedAt: $inspectedAt)';
}


}

/// @nodoc
abstract mixin class _$Lines17CopyWith<$Res> implements $Lines17CopyWith<$Res> {
  factory _$Lines17CopyWith(_Lines17 value, $Res Function(_Lines17) _then) = __$Lines17CopyWithImpl;
@override @useResult
$Res call({
 String id, String? billLineId, Product10 product, PackUnit7? packUnit, String? packCount, String quantity, int? rate, int? amount, Inspection inspection, InspectedBy? inspectedBy, DateTime? inspectedAt
});


@override $Product10CopyWith<$Res> get product;@override $PackUnit7CopyWith<$Res>? get packUnit;@override $InspectedByCopyWith<$Res>? get inspectedBy;

}
/// @nodoc
class __$Lines17CopyWithImpl<$Res>
    implements _$Lines17CopyWith<$Res> {
  __$Lines17CopyWithImpl(this._self, this._then);

  final _Lines17 _self;
  final $Res Function(_Lines17) _then;

/// Create a copy of Lines17
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? billLineId = freezed,Object? product = null,Object? packUnit = freezed,Object? packCount = freezed,Object? quantity = null,Object? rate = freezed,Object? amount = freezed,Object? inspection = null,Object? inspectedBy = freezed,Object? inspectedAt = freezed,}) {
  return _then(_Lines17(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,billLineId: freezed == billLineId ? _self.billLineId : billLineId // ignore: cast_nullable_to_non_nullable
as String?,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product10,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit7?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,inspection: null == inspection ? _self.inspection : inspection // ignore: cast_nullable_to_non_nullable
as Inspection,inspectedBy: freezed == inspectedBy ? _self.inspectedBy : inspectedBy // ignore: cast_nullable_to_non_nullable
as InspectedBy?,inspectedAt: freezed == inspectedAt ? _self.inspectedAt : inspectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Lines17
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product10CopyWith<$Res> get product {
  
  return $Product10CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines17
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit7CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit7CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}/// Create a copy of Lines17
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InspectedByCopyWith<$Res>? get inspectedBy {
    if (_self.inspectedBy == null) {
    return null;
  }

  return $InspectedByCopyWith<$Res>(_self.inspectedBy!, (value) {
    return _then(_self.copyWith(inspectedBy: value));
  });
}
}

// dart format on
