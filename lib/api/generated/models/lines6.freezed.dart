// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines6.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines6 {

 String get productId; dynamic get quantity;/// Amount in paise (₹1 = 100)
 int get rate; String? get packUnitId; dynamic get packCount;
/// Create a copy of Lines6
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines6CopyWith<Lines6> get copyWith => _$Lines6CopyWithImpl<Lines6>(this as Lines6, _$identity);

  /// Serializes this Lines6 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines6;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines6&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&const DeepCollectionEquality().equals(other.quantity, _this.quantity)&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.packUnitId, _this.packUnitId) || other.packUnitId == _this.packUnitId)&&const DeepCollectionEquality().equals(other.packCount, _this.packCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines6;
  return Object.hash(runtimeType,_this.productId,const DeepCollectionEquality().hash(_this.quantity),_this.rate,_this.packUnitId,const DeepCollectionEquality().hash(_this.packCount));
}

@override
String toString() {
  final _this = this as Lines6;
  return 'Lines6(productId: ${_this.productId}, quantity: ${_this.quantity}, rate: ${_this.rate}, packUnitId: ${_this.packUnitId}, packCount: ${_this.packCount})';
}


}

/// @nodoc
abstract mixin class $Lines6CopyWith<$Res>  {
  factory $Lines6CopyWith(Lines6 value, $Res Function(Lines6) _then) = _$Lines6CopyWithImpl;
@useResult
$Res call({
 String productId, dynamic quantity, int rate, String? packUnitId, dynamic packCount
});




}
/// @nodoc
class _$Lines6CopyWithImpl<$Res>
    implements $Lines6CopyWith<$Res> {
  _$Lines6CopyWithImpl(this._self, this._then);

  final Lines6 _self;
  final $Res Function(Lines6) _then;

/// Create a copy of Lines6
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? quantity = freezed,Object? rate = null,Object? packUnitId = freezed,Object? packCount = freezed,}) {
  return _then(Lines6(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines6].
extension Lines6Patterns on Lines6 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines6 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines6() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines6 value)  $default,){
final _that = this;
switch (_that) {
case _Lines6():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines6 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines6() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  dynamic quantity,  int rate,  String? packUnitId,  dynamic packCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines6() when $default != null:
return $default(_that.productId,_that.quantity,_that.rate,_that.packUnitId,_that.packCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  dynamic quantity,  int rate,  String? packUnitId,  dynamic packCount)  $default,) {final _that = this;
switch (_that) {
case _Lines6():
return $default(_that.productId,_that.quantity,_that.rate,_that.packUnitId,_that.packCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  dynamic quantity,  int rate,  String? packUnitId,  dynamic packCount)?  $default,) {final _that = this;
switch (_that) {
case _Lines6() when $default != null:
return $default(_that.productId,_that.quantity,_that.rate,_that.packUnitId,_that.packCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines6 implements Lines6 {
  const _Lines6({required this.productId, required this.quantity, required this.rate, this.packUnitId, this.packCount});
  factory _Lines6.fromJson(Map<String, dynamic> json) => _$Lines6FromJson(json);

@override final  String productId;
@override final  dynamic quantity;
/// Amount in paise (₹1 = 100)
@override final  int rate;
@override final  String? packUnitId;
@override final  dynamic packCount;

/// Create a copy of Lines6
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines6CopyWith<_Lines6> get copyWith => __$Lines6CopyWithImpl<_Lines6>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines6ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines6&&(identical(other.productId, productId) || other.productId == productId)&&const DeepCollectionEquality().equals(other.quantity, quantity)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&const DeepCollectionEquality().equals(other.packCount, packCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,const DeepCollectionEquality().hash(quantity),rate,packUnitId,const DeepCollectionEquality().hash(packCount));
}

@override
String toString() {
    return 'Lines6(productId: $productId, quantity: $quantity, rate: $rate, packUnitId: $packUnitId, packCount: $packCount)';
}


}

/// @nodoc
abstract mixin class _$Lines6CopyWith<$Res> implements $Lines6CopyWith<$Res> {
  factory _$Lines6CopyWith(_Lines6 value, $Res Function(_Lines6) _then) = __$Lines6CopyWithImpl;
@override @useResult
$Res call({
 String productId, dynamic quantity, int rate, String? packUnitId, dynamic packCount
});




}
/// @nodoc
class __$Lines6CopyWithImpl<$Res>
    implements _$Lines6CopyWith<$Res> {
  __$Lines6CopyWithImpl(this._self, this._then);

  final _Lines6 _self;
  final $Res Function(_Lines6) _then;

/// Create a copy of Lines6
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantity = freezed,Object? rate = null,Object? packUnitId = freezed,Object? packCount = freezed,}) {
  return _then(_Lines6(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
