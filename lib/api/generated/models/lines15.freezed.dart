// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines15.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines15 {

 String get productId;/// Amount in paise (₹1 = 100)
 int get rate; RatePer get ratePer; String? get packUnitId; dynamic get packCount; dynamic get quantity;
/// Create a copy of Lines15
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines15CopyWith<Lines15> get copyWith => _$Lines15CopyWithImpl<Lines15>(this as Lines15, _$identity);

  /// Serializes this Lines15 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines15;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines15&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.ratePer, _this.ratePer) || other.ratePer == _this.ratePer)&&(identical(other.packUnitId, _this.packUnitId) || other.packUnitId == _this.packUnitId)&&const DeepCollectionEquality().equals(other.packCount, _this.packCount)&&const DeepCollectionEquality().equals(other.quantity, _this.quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines15;
  return Object.hash(runtimeType,_this.productId,_this.rate,_this.ratePer,_this.packUnitId,const DeepCollectionEquality().hash(_this.packCount),const DeepCollectionEquality().hash(_this.quantity));
}

@override
String toString() {
  final _this = this as Lines15;
  return 'Lines15(productId: ${_this.productId}, rate: ${_this.rate}, ratePer: ${_this.ratePer}, packUnitId: ${_this.packUnitId}, packCount: ${_this.packCount}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $Lines15CopyWith<$Res>  {
  factory $Lines15CopyWith(Lines15 value, $Res Function(Lines15) _then) = _$Lines15CopyWithImpl;
@useResult
$Res call({
 String productId, int rate, RatePer ratePer, String? packUnitId, dynamic packCount, dynamic quantity
});




}
/// @nodoc
class _$Lines15CopyWithImpl<$Res>
    implements $Lines15CopyWith<$Res> {
  _$Lines15CopyWithImpl(this._self, this._then);

  final Lines15 _self;
  final $Res Function(Lines15) _then;

/// Create a copy of Lines15
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? rate = null,Object? ratePer = null,Object? packUnitId = freezed,Object? packCount = freezed,Object? quantity = freezed,}) {
  return _then(Lines15(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,ratePer: null == ratePer ? _self.ratePer : ratePer // ignore: cast_nullable_to_non_nullable
as RatePer,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines15].
extension Lines15Patterns on Lines15 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines15 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines15() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines15 value)  $default,){
final _that = this;
switch (_that) {
case _Lines15():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines15 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines15() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  int rate,  RatePer ratePer,  String? packUnitId,  dynamic packCount,  dynamic quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines15() when $default != null:
return $default(_that.productId,_that.rate,_that.ratePer,_that.packUnitId,_that.packCount,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  int rate,  RatePer ratePer,  String? packUnitId,  dynamic packCount,  dynamic quantity)  $default,) {final _that = this;
switch (_that) {
case _Lines15():
return $default(_that.productId,_that.rate,_that.ratePer,_that.packUnitId,_that.packCount,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  int rate,  RatePer ratePer,  String? packUnitId,  dynamic packCount,  dynamic quantity)?  $default,) {final _that = this;
switch (_that) {
case _Lines15() when $default != null:
return $default(_that.productId,_that.rate,_that.ratePer,_that.packUnitId,_that.packCount,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines15 implements Lines15 {
  const _Lines15({required this.productId, required this.rate, this.ratePer = RatePer.stockUnit, this.packUnitId, this.packCount, this.quantity});
  factory _Lines15.fromJson(Map<String, dynamic> json) => _$Lines15FromJson(json);

@override final  String productId;
/// Amount in paise (₹1 = 100)
@override final  int rate;
@override@JsonKey() final  RatePer ratePer;
@override final  String? packUnitId;
@override final  dynamic packCount;
@override final  dynamic quantity;

/// Create a copy of Lines15
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines15CopyWith<_Lines15> get copyWith => __$Lines15CopyWithImpl<_Lines15>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines15ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines15&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.ratePer, ratePer) || other.ratePer == ratePer)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&const DeepCollectionEquality().equals(other.packCount, packCount)&&const DeepCollectionEquality().equals(other.quantity, quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,rate,ratePer,packUnitId,const DeepCollectionEquality().hash(packCount),const DeepCollectionEquality().hash(quantity));
}

@override
String toString() {
    return 'Lines15(productId: $productId, rate: $rate, ratePer: $ratePer, packUnitId: $packUnitId, packCount: $packCount, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$Lines15CopyWith<$Res> implements $Lines15CopyWith<$Res> {
  factory _$Lines15CopyWith(_Lines15 value, $Res Function(_Lines15) _then) = __$Lines15CopyWithImpl;
@override @useResult
$Res call({
 String productId, int rate, RatePer ratePer, String? packUnitId, dynamic packCount, dynamic quantity
});




}
/// @nodoc
class __$Lines15CopyWithImpl<$Res>
    implements _$Lines15CopyWith<$Res> {
  __$Lines15CopyWithImpl(this._self, this._then);

  final _Lines15 _self;
  final $Res Function(_Lines15) _then;

/// Create a copy of Lines15
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? rate = null,Object? ratePer = null,Object? packUnitId = freezed,Object? packCount = freezed,Object? quantity = freezed,}) {
  return _then(_Lines15(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,ratePer: null == ratePer ? _self.ratePer : ratePer // ignore: cast_nullable_to_non_nullable
as RatePer,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
