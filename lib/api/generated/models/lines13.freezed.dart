// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines13.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines13 {

 String get id; Product8 get product; Grade3? get grade; PackUnit5? get packUnit; String? get packCount; String get quantity; RatePer get ratePer; int get rate; int get amount;
/// Create a copy of Lines13
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines13CopyWith<Lines13> get copyWith => _$Lines13CopyWithImpl<Lines13>(this as Lines13, _$identity);

  /// Serializes this Lines13 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines13;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines13&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.grade, _this.grade) || other.grade == _this.grade)&&(identical(other.packUnit, _this.packUnit) || other.packUnit == _this.packUnit)&&(identical(other.packCount, _this.packCount) || other.packCount == _this.packCount)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.ratePer, _this.ratePer) || other.ratePer == _this.ratePer)&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines13;
  return Object.hash(runtimeType,_this.id,_this.product,_this.grade,_this.packUnit,_this.packCount,_this.quantity,_this.ratePer,_this.rate,_this.amount);
}

@override
String toString() {
  final _this = this as Lines13;
  return 'Lines13(id: ${_this.id}, product: ${_this.product}, grade: ${_this.grade}, packUnit: ${_this.packUnit}, packCount: ${_this.packCount}, quantity: ${_this.quantity}, ratePer: ${_this.ratePer}, rate: ${_this.rate}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $Lines13CopyWith<$Res>  {
  factory $Lines13CopyWith(Lines13 value, $Res Function(Lines13) _then) = _$Lines13CopyWithImpl;
@useResult
$Res call({
 String id, Product8 product, Grade3? grade, PackUnit5? packUnit, String? packCount, String quantity, RatePer ratePer, int rate, int amount
});


$Product8CopyWith<$Res> get product;$Grade3CopyWith<$Res>? get grade;$PackUnit5CopyWith<$Res>? get packUnit;

}
/// @nodoc
class _$Lines13CopyWithImpl<$Res>
    implements $Lines13CopyWith<$Res> {
  _$Lines13CopyWithImpl(this._self, this._then);

  final Lines13 _self;
  final $Res Function(Lines13) _then;

/// Create a copy of Lines13
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? product = null,Object? grade = freezed,Object? packUnit = freezed,Object? packCount = freezed,Object? quantity = null,Object? ratePer = null,Object? rate = null,Object? amount = null,}) {
  return _then(Lines13(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product8,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as Grade3?,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit5?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,ratePer: null == ratePer ? _self.ratePer : ratePer // ignore: cast_nullable_to_non_nullable
as RatePer,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Lines13
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product8CopyWith<$Res> get product {
  
  return $Product8CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines13
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Grade3CopyWith<$Res>? get grade {
    if (_self.grade == null) {
    return null;
  }

  return $Grade3CopyWith<$Res>(_self.grade!, (value) {
    return _then(_self.copyWith(grade: value));
  });
}/// Create a copy of Lines13
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit5CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit5CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}


/// Adds pattern-matching-related methods to [Lines13].
extension Lines13Patterns on Lines13 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines13 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines13() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines13 value)  $default,){
final _that = this;
switch (_that) {
case _Lines13():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines13 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines13() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Product8 product,  Grade3? grade,  PackUnit5? packUnit,  String? packCount,  String quantity,  RatePer ratePer,  int rate,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines13() when $default != null:
return $default(_that.id,_that.product,_that.grade,_that.packUnit,_that.packCount,_that.quantity,_that.ratePer,_that.rate,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Product8 product,  Grade3? grade,  PackUnit5? packUnit,  String? packCount,  String quantity,  RatePer ratePer,  int rate,  int amount)  $default,) {final _that = this;
switch (_that) {
case _Lines13():
return $default(_that.id,_that.product,_that.grade,_that.packUnit,_that.packCount,_that.quantity,_that.ratePer,_that.rate,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Product8 product,  Grade3? grade,  PackUnit5? packUnit,  String? packCount,  String quantity,  RatePer ratePer,  int rate,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _Lines13() when $default != null:
return $default(_that.id,_that.product,_that.grade,_that.packUnit,_that.packCount,_that.quantity,_that.ratePer,_that.rate,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines13 implements Lines13 {
  const _Lines13({required this.id, required this.product, required this.grade, required this.packUnit, required this.packCount, required this.quantity, required this.ratePer, required this.rate, required this.amount});
  factory _Lines13.fromJson(Map<String, dynamic> json) => _$Lines13FromJson(json);

@override final  String id;
@override final  Product8 product;
@override final  Grade3? grade;
@override final  PackUnit5? packUnit;
@override final  String? packCount;
@override final  String quantity;
@override final  RatePer ratePer;
@override final  int rate;
@override final  int amount;

/// Create a copy of Lines13
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines13CopyWith<_Lines13> get copyWith => __$Lines13CopyWithImpl<_Lines13>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines13ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines13&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.packUnit, packUnit) || other.packUnit == packUnit)&&(identical(other.packCount, packCount) || other.packCount == packCount)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.ratePer, ratePer) || other.ratePer == ratePer)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,product,grade,packUnit,packCount,quantity,ratePer,rate,amount);
}

@override
String toString() {
    return 'Lines13(id: $id, product: $product, grade: $grade, packUnit: $packUnit, packCount: $packCount, quantity: $quantity, ratePer: $ratePer, rate: $rate, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$Lines13CopyWith<$Res> implements $Lines13CopyWith<$Res> {
  factory _$Lines13CopyWith(_Lines13 value, $Res Function(_Lines13) _then) = __$Lines13CopyWithImpl;
@override @useResult
$Res call({
 String id, Product8 product, Grade3? grade, PackUnit5? packUnit, String? packCount, String quantity, RatePer ratePer, int rate, int amount
});


@override $Product8CopyWith<$Res> get product;@override $Grade3CopyWith<$Res>? get grade;@override $PackUnit5CopyWith<$Res>? get packUnit;

}
/// @nodoc
class __$Lines13CopyWithImpl<$Res>
    implements _$Lines13CopyWith<$Res> {
  __$Lines13CopyWithImpl(this._self, this._then);

  final _Lines13 _self;
  final $Res Function(_Lines13) _then;

/// Create a copy of Lines13
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? product = null,Object? grade = freezed,Object? packUnit = freezed,Object? packCount = freezed,Object? quantity = null,Object? ratePer = null,Object? rate = null,Object? amount = null,}) {
  return _then(_Lines13(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product8,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as Grade3?,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit5?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,ratePer: null == ratePer ? _self.ratePer : ratePer // ignore: cast_nullable_to_non_nullable
as RatePer,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Lines13
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product8CopyWith<$Res> get product {
  
  return $Product8CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines13
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Grade3CopyWith<$Res>? get grade {
    if (_self.grade == null) {
    return null;
  }

  return $Grade3CopyWith<$Res>(_self.grade!, (value) {
    return _then(_self.copyWith(grade: value));
  });
}/// Create a copy of Lines13
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit5CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit5CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}

// dart format on
