// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Rates {

 String get productId; String? get packUnitId;/// Amount in paise (₹1 = 100)
 int? get rate;
/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatesCopyWith<Rates> get copyWith => _$RatesCopyWithImpl<Rates>(this as Rates, _$identity);

  /// Serializes this Rates to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Rates;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rates&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.packUnitId, _this.packUnitId) || other.packUnitId == _this.packUnitId)&&(identical(other.rate, _this.rate) || other.rate == _this.rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Rates;
  return Object.hash(runtimeType,_this.productId,_this.packUnitId,_this.rate);
}

@override
String toString() {
  final _this = this as Rates;
  return 'Rates(productId: ${_this.productId}, packUnitId: ${_this.packUnitId}, rate: ${_this.rate})';
}


}

/// @nodoc
abstract mixin class $RatesCopyWith<$Res>  {
  factory $RatesCopyWith(Rates value, $Res Function(Rates) _then) = _$RatesCopyWithImpl;
@useResult
$Res call({
 String productId, String? packUnitId, int? rate
});




}
/// @nodoc
class _$RatesCopyWithImpl<$Res>
    implements $RatesCopyWith<$Res> {
  _$RatesCopyWithImpl(this._self, this._then);

  final Rates _self;
  final $Res Function(Rates) _then;

/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? packUnitId = freezed,Object? rate = freezed,}) {
  return _then(Rates(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Rates].
extension RatesPatterns on Rates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rates value)  $default,){
final _that = this;
switch (_that) {
case _Rates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rates value)?  $default,){
final _that = this;
switch (_that) {
case _Rates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String? packUnitId,  int? rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rates() when $default != null:
return $default(_that.productId,_that.packUnitId,_that.rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String? packUnitId,  int? rate)  $default,) {final _that = this;
switch (_that) {
case _Rates():
return $default(_that.productId,_that.packUnitId,_that.rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String? packUnitId,  int? rate)?  $default,) {final _that = this;
switch (_that) {
case _Rates() when $default != null:
return $default(_that.productId,_that.packUnitId,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Rates implements Rates {
  const _Rates({required this.productId, required this.packUnitId, required this.rate});
  factory _Rates.fromJson(Map<String, dynamic> json) => _$RatesFromJson(json);

@override final  String productId;
@override final  String? packUnitId;
/// Amount in paise (₹1 = 100)
@override final  int? rate;

/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatesCopyWith<_Rates> get copyWith => __$RatesCopyWithImpl<_Rates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RatesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rates&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,packUnitId,rate);
}

@override
String toString() {
    return 'Rates(productId: $productId, packUnitId: $packUnitId, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$RatesCopyWith<$Res> implements $RatesCopyWith<$Res> {
  factory _$RatesCopyWith(_Rates value, $Res Function(_Rates) _then) = __$RatesCopyWithImpl;
@override @useResult
$Res call({
 String productId, String? packUnitId, int? rate
});




}
/// @nodoc
class __$RatesCopyWithImpl<$Res>
    implements _$RatesCopyWith<$Res> {
  __$RatesCopyWithImpl(this._self, this._then);

  final _Rates _self;
  final $Res Function(_Rates) _then;

/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? packUnitId = freezed,Object? rate = freezed,}) {
  return _then(_Rates(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
