// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines8.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines8 {

 String get productId; dynamic get quantity; Reason get reason; String? get packUnitId; dynamic get packCount;
/// Create a copy of Lines8
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines8CopyWith<Lines8> get copyWith => _$Lines8CopyWithImpl<Lines8>(this as Lines8, _$identity);

  /// Serializes this Lines8 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines8;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines8&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&const DeepCollectionEquality().equals(other.quantity, _this.quantity)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.packUnitId, _this.packUnitId) || other.packUnitId == _this.packUnitId)&&const DeepCollectionEquality().equals(other.packCount, _this.packCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines8;
  return Object.hash(runtimeType,_this.productId,const DeepCollectionEquality().hash(_this.quantity),_this.reason,_this.packUnitId,const DeepCollectionEquality().hash(_this.packCount));
}

@override
String toString() {
  final _this = this as Lines8;
  return 'Lines8(productId: ${_this.productId}, quantity: ${_this.quantity}, reason: ${_this.reason}, packUnitId: ${_this.packUnitId}, packCount: ${_this.packCount})';
}


}

/// @nodoc
abstract mixin class $Lines8CopyWith<$Res>  {
  factory $Lines8CopyWith(Lines8 value, $Res Function(Lines8) _then) = _$Lines8CopyWithImpl;
@useResult
$Res call({
 String productId, dynamic quantity, Reason reason, String? packUnitId, dynamic packCount
});




}
/// @nodoc
class _$Lines8CopyWithImpl<$Res>
    implements $Lines8CopyWith<$Res> {
  _$Lines8CopyWithImpl(this._self, this._then);

  final Lines8 _self;
  final $Res Function(Lines8) _then;

/// Create a copy of Lines8
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? quantity = freezed,Object? reason = null,Object? packUnitId = freezed,Object? packCount = freezed,}) {
  return _then(Lines8(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as Reason,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines8].
extension Lines8Patterns on Lines8 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines8 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines8() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines8 value)  $default,){
final _that = this;
switch (_that) {
case _Lines8():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines8 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines8() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  dynamic quantity,  Reason reason,  String? packUnitId,  dynamic packCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines8() when $default != null:
return $default(_that.productId,_that.quantity,_that.reason,_that.packUnitId,_that.packCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  dynamic quantity,  Reason reason,  String? packUnitId,  dynamic packCount)  $default,) {final _that = this;
switch (_that) {
case _Lines8():
return $default(_that.productId,_that.quantity,_that.reason,_that.packUnitId,_that.packCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  dynamic quantity,  Reason reason,  String? packUnitId,  dynamic packCount)?  $default,) {final _that = this;
switch (_that) {
case _Lines8() when $default != null:
return $default(_that.productId,_that.quantity,_that.reason,_that.packUnitId,_that.packCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines8 implements Lines8 {
  const _Lines8({required this.productId, required this.quantity, required this.reason, this.packUnitId, this.packCount});
  factory _Lines8.fromJson(Map<String, dynamic> json) => _$Lines8FromJson(json);

@override final  String productId;
@override final  dynamic quantity;
@override final  Reason reason;
@override final  String? packUnitId;
@override final  dynamic packCount;

/// Create a copy of Lines8
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines8CopyWith<_Lines8> get copyWith => __$Lines8CopyWithImpl<_Lines8>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines8ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines8&&(identical(other.productId, productId) || other.productId == productId)&&const DeepCollectionEquality().equals(other.quantity, quantity)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&const DeepCollectionEquality().equals(other.packCount, packCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,const DeepCollectionEquality().hash(quantity),reason,packUnitId,const DeepCollectionEquality().hash(packCount));
}

@override
String toString() {
    return 'Lines8(productId: $productId, quantity: $quantity, reason: $reason, packUnitId: $packUnitId, packCount: $packCount)';
}


}

/// @nodoc
abstract mixin class _$Lines8CopyWith<$Res> implements $Lines8CopyWith<$Res> {
  factory _$Lines8CopyWith(_Lines8 value, $Res Function(_Lines8) _then) = __$Lines8CopyWithImpl;
@override @useResult
$Res call({
 String productId, dynamic quantity, Reason reason, String? packUnitId, dynamic packCount
});




}
/// @nodoc
class __$Lines8CopyWithImpl<$Res>
    implements _$Lines8CopyWith<$Res> {
  __$Lines8CopyWithImpl(this._self, this._then);

  final _Lines8 _self;
  final $Res Function(_Lines8) _then;

/// Create a copy of Lines8
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantity = freezed,Object? reason = null,Object? packUnitId = freezed,Object? packCount = freezed,}) {
  return _then(_Lines8(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as Reason,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
