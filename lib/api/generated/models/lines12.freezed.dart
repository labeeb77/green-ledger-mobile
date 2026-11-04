// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines12.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines12 {

 String get productId;/// Amount in paise (₹1 = 100)
 int get rate; RatePer get ratePer; String? get gradeId; String? get packUnitId; dynamic get packCount; dynamic get quantity;
/// Create a copy of Lines12
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines12CopyWith<Lines12> get copyWith => _$Lines12CopyWithImpl<Lines12>(this as Lines12, _$identity);

  /// Serializes this Lines12 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines12;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines12&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.ratePer, _this.ratePer) || other.ratePer == _this.ratePer)&&(identical(other.gradeId, _this.gradeId) || other.gradeId == _this.gradeId)&&(identical(other.packUnitId, _this.packUnitId) || other.packUnitId == _this.packUnitId)&&const DeepCollectionEquality().equals(other.packCount, _this.packCount)&&const DeepCollectionEquality().equals(other.quantity, _this.quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines12;
  return Object.hash(runtimeType,_this.productId,_this.rate,_this.ratePer,_this.gradeId,_this.packUnitId,const DeepCollectionEquality().hash(_this.packCount),const DeepCollectionEquality().hash(_this.quantity));
}

@override
String toString() {
  final _this = this as Lines12;
  return 'Lines12(productId: ${_this.productId}, rate: ${_this.rate}, ratePer: ${_this.ratePer}, gradeId: ${_this.gradeId}, packUnitId: ${_this.packUnitId}, packCount: ${_this.packCount}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $Lines12CopyWith<$Res>  {
  factory $Lines12CopyWith(Lines12 value, $Res Function(Lines12) _then) = _$Lines12CopyWithImpl;
@useResult
$Res call({
 String productId, int rate, RatePer ratePer, String? gradeId, String? packUnitId, dynamic packCount, dynamic quantity
});




}
/// @nodoc
class _$Lines12CopyWithImpl<$Res>
    implements $Lines12CopyWith<$Res> {
  _$Lines12CopyWithImpl(this._self, this._then);

  final Lines12 _self;
  final $Res Function(Lines12) _then;

/// Create a copy of Lines12
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? rate = null,Object? ratePer = null,Object? gradeId = freezed,Object? packUnitId = freezed,Object? packCount = freezed,Object? quantity = freezed,}) {
  return _then(Lines12(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,ratePer: null == ratePer ? _self.ratePer : ratePer // ignore: cast_nullable_to_non_nullable
as RatePer,gradeId: freezed == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String?,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines12].
extension Lines12Patterns on Lines12 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines12 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines12() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines12 value)  $default,){
final _that = this;
switch (_that) {
case _Lines12():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines12 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines12() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  int rate,  RatePer ratePer,  String? gradeId,  String? packUnitId,  dynamic packCount,  dynamic quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines12() when $default != null:
return $default(_that.productId,_that.rate,_that.ratePer,_that.gradeId,_that.packUnitId,_that.packCount,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  int rate,  RatePer ratePer,  String? gradeId,  String? packUnitId,  dynamic packCount,  dynamic quantity)  $default,) {final _that = this;
switch (_that) {
case _Lines12():
return $default(_that.productId,_that.rate,_that.ratePer,_that.gradeId,_that.packUnitId,_that.packCount,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  int rate,  RatePer ratePer,  String? gradeId,  String? packUnitId,  dynamic packCount,  dynamic quantity)?  $default,) {final _that = this;
switch (_that) {
case _Lines12() when $default != null:
return $default(_that.productId,_that.rate,_that.ratePer,_that.gradeId,_that.packUnitId,_that.packCount,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines12 implements Lines12 {
  const _Lines12({required this.productId, required this.rate, this.ratePer = RatePer.stockUnit, this.gradeId, this.packUnitId, this.packCount, this.quantity});
  factory _Lines12.fromJson(Map<String, dynamic> json) => _$Lines12FromJson(json);

@override final  String productId;
/// Amount in paise (₹1 = 100)
@override final  int rate;
@override@JsonKey() final  RatePer ratePer;
@override final  String? gradeId;
@override final  String? packUnitId;
@override final  dynamic packCount;
@override final  dynamic quantity;

/// Create a copy of Lines12
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines12CopyWith<_Lines12> get copyWith => __$Lines12CopyWithImpl<_Lines12>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines12ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines12&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.ratePer, ratePer) || other.ratePer == ratePer)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&const DeepCollectionEquality().equals(other.packCount, packCount)&&const DeepCollectionEquality().equals(other.quantity, quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,rate,ratePer,gradeId,packUnitId,const DeepCollectionEquality().hash(packCount),const DeepCollectionEquality().hash(quantity));
}

@override
String toString() {
    return 'Lines12(productId: $productId, rate: $rate, ratePer: $ratePer, gradeId: $gradeId, packUnitId: $packUnitId, packCount: $packCount, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$Lines12CopyWith<$Res> implements $Lines12CopyWith<$Res> {
  factory _$Lines12CopyWith(_Lines12 value, $Res Function(_Lines12) _then) = __$Lines12CopyWithImpl;
@override @useResult
$Res call({
 String productId, int rate, RatePer ratePer, String? gradeId, String? packUnitId, dynamic packCount, dynamic quantity
});




}
/// @nodoc
class __$Lines12CopyWithImpl<$Res>
    implements _$Lines12CopyWith<$Res> {
  __$Lines12CopyWithImpl(this._self, this._then);

  final _Lines12 _self;
  final $Res Function(_Lines12) _then;

/// Create a copy of Lines12
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? rate = null,Object? ratePer = null,Object? gradeId = freezed,Object? packUnitId = freezed,Object? packCount = freezed,Object? quantity = freezed,}) {
  return _then(_Lines12(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,ratePer: null == ratePer ? _self.ratePer : ratePer // ignore: cast_nullable_to_non_nullable
as RatePer,gradeId: freezed == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String?,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
