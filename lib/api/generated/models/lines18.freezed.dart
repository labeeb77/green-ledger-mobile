// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines18.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines18 {

 dynamic get quantity; String? get billLineId; String? get productId; String? get packUnitId; dynamic get packCount;/// Amount in paise (₹1 = 100)
 int? get rate;
/// Create a copy of Lines18
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines18CopyWith<Lines18> get copyWith => _$Lines18CopyWithImpl<Lines18>(this as Lines18, _$identity);

  /// Serializes this Lines18 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines18;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines18&&const DeepCollectionEquality().equals(other.quantity, _this.quantity)&&(identical(other.billLineId, _this.billLineId) || other.billLineId == _this.billLineId)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.packUnitId, _this.packUnitId) || other.packUnitId == _this.packUnitId)&&const DeepCollectionEquality().equals(other.packCount, _this.packCount)&&(identical(other.rate, _this.rate) || other.rate == _this.rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines18;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.quantity),_this.billLineId,_this.productId,_this.packUnitId,const DeepCollectionEquality().hash(_this.packCount),_this.rate);
}

@override
String toString() {
  final _this = this as Lines18;
  return 'Lines18(quantity: ${_this.quantity}, billLineId: ${_this.billLineId}, productId: ${_this.productId}, packUnitId: ${_this.packUnitId}, packCount: ${_this.packCount}, rate: ${_this.rate})';
}


}

/// @nodoc
abstract mixin class $Lines18CopyWith<$Res>  {
  factory $Lines18CopyWith(Lines18 value, $Res Function(Lines18) _then) = _$Lines18CopyWithImpl;
@useResult
$Res call({
 dynamic quantity, String? billLineId, String? productId, String? packUnitId, dynamic packCount, int? rate
});




}
/// @nodoc
class _$Lines18CopyWithImpl<$Res>
    implements $Lines18CopyWith<$Res> {
  _$Lines18CopyWithImpl(this._self, this._then);

  final Lines18 _self;
  final $Res Function(Lines18) _then;

/// Create a copy of Lines18
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = freezed,Object? billLineId = freezed,Object? productId = freezed,Object? packUnitId = freezed,Object? packCount = freezed,Object? rate = freezed,}) {
  return _then(Lines18(
quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,billLineId: freezed == billLineId ? _self.billLineId : billLineId // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines18].
extension Lines18Patterns on Lines18 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines18 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines18() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines18 value)  $default,){
final _that = this;
switch (_that) {
case _Lines18():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines18 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines18() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic quantity,  String? billLineId,  String? productId,  String? packUnitId,  dynamic packCount,  int? rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines18() when $default != null:
return $default(_that.quantity,_that.billLineId,_that.productId,_that.packUnitId,_that.packCount,_that.rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic quantity,  String? billLineId,  String? productId,  String? packUnitId,  dynamic packCount,  int? rate)  $default,) {final _that = this;
switch (_that) {
case _Lines18():
return $default(_that.quantity,_that.billLineId,_that.productId,_that.packUnitId,_that.packCount,_that.rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic quantity,  String? billLineId,  String? productId,  String? packUnitId,  dynamic packCount,  int? rate)?  $default,) {final _that = this;
switch (_that) {
case _Lines18() when $default != null:
return $default(_that.quantity,_that.billLineId,_that.productId,_that.packUnitId,_that.packCount,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines18 implements Lines18 {
  const _Lines18({required this.quantity, this.billLineId, this.productId, this.packUnitId, this.packCount, this.rate});
  factory _Lines18.fromJson(Map<String, dynamic> json) => _$Lines18FromJson(json);

@override final  dynamic quantity;
@override final  String? billLineId;
@override final  String? productId;
@override final  String? packUnitId;
@override final  dynamic packCount;
/// Amount in paise (₹1 = 100)
@override final  int? rate;

/// Create a copy of Lines18
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines18CopyWith<_Lines18> get copyWith => __$Lines18CopyWithImpl<_Lines18>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines18ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines18&&const DeepCollectionEquality().equals(other.quantity, quantity)&&(identical(other.billLineId, billLineId) || other.billLineId == billLineId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&const DeepCollectionEquality().equals(other.packCount, packCount)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(quantity),billLineId,productId,packUnitId,const DeepCollectionEquality().hash(packCount),rate);
}

@override
String toString() {
    return 'Lines18(quantity: $quantity, billLineId: $billLineId, productId: $productId, packUnitId: $packUnitId, packCount: $packCount, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$Lines18CopyWith<$Res> implements $Lines18CopyWith<$Res> {
  factory _$Lines18CopyWith(_Lines18 value, $Res Function(_Lines18) _then) = __$Lines18CopyWithImpl;
@override @useResult
$Res call({
 dynamic quantity, String? billLineId, String? productId, String? packUnitId, dynamic packCount, int? rate
});




}
/// @nodoc
class __$Lines18CopyWithImpl<$Res>
    implements _$Lines18CopyWith<$Res> {
  __$Lines18CopyWithImpl(this._self, this._then);

  final _Lines18 _self;
  final $Res Function(_Lines18) _then;

/// Create a copy of Lines18
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantity = freezed,Object? billLineId = freezed,Object? productId = freezed,Object? packUnitId = freezed,Object? packCount = freezed,Object? rate = freezed,}) {
  return _then(_Lines18(
quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,billLineId: freezed == billLineId ? _self.billLineId : billLineId // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
