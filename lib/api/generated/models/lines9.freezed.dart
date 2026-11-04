// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines9.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines9 {

 String get productId; dynamic get quantity; Direction get direction; String? get packUnitId; dynamic get packCount;
/// Create a copy of Lines9
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines9CopyWith<Lines9> get copyWith => _$Lines9CopyWithImpl<Lines9>(this as Lines9, _$identity);

  /// Serializes this Lines9 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines9;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines9&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&const DeepCollectionEquality().equals(other.quantity, _this.quantity)&&(identical(other.direction, _this.direction) || other.direction == _this.direction)&&(identical(other.packUnitId, _this.packUnitId) || other.packUnitId == _this.packUnitId)&&const DeepCollectionEquality().equals(other.packCount, _this.packCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines9;
  return Object.hash(runtimeType,_this.productId,const DeepCollectionEquality().hash(_this.quantity),_this.direction,_this.packUnitId,const DeepCollectionEquality().hash(_this.packCount));
}

@override
String toString() {
  final _this = this as Lines9;
  return 'Lines9(productId: ${_this.productId}, quantity: ${_this.quantity}, direction: ${_this.direction}, packUnitId: ${_this.packUnitId}, packCount: ${_this.packCount})';
}


}

/// @nodoc
abstract mixin class $Lines9CopyWith<$Res>  {
  factory $Lines9CopyWith(Lines9 value, $Res Function(Lines9) _then) = _$Lines9CopyWithImpl;
@useResult
$Res call({
 String productId, dynamic quantity, Direction direction, String? packUnitId, dynamic packCount
});




}
/// @nodoc
class _$Lines9CopyWithImpl<$Res>
    implements $Lines9CopyWith<$Res> {
  _$Lines9CopyWithImpl(this._self, this._then);

  final Lines9 _self;
  final $Res Function(Lines9) _then;

/// Create a copy of Lines9
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? quantity = freezed,Object? direction = null,Object? packUnitId = freezed,Object? packCount = freezed,}) {
  return _then(Lines9(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as Direction,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines9].
extension Lines9Patterns on Lines9 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines9 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines9() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines9 value)  $default,){
final _that = this;
switch (_that) {
case _Lines9():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines9 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines9() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  dynamic quantity,  Direction direction,  String? packUnitId,  dynamic packCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines9() when $default != null:
return $default(_that.productId,_that.quantity,_that.direction,_that.packUnitId,_that.packCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  dynamic quantity,  Direction direction,  String? packUnitId,  dynamic packCount)  $default,) {final _that = this;
switch (_that) {
case _Lines9():
return $default(_that.productId,_that.quantity,_that.direction,_that.packUnitId,_that.packCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  dynamic quantity,  Direction direction,  String? packUnitId,  dynamic packCount)?  $default,) {final _that = this;
switch (_that) {
case _Lines9() when $default != null:
return $default(_that.productId,_that.quantity,_that.direction,_that.packUnitId,_that.packCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines9 implements Lines9 {
  const _Lines9({required this.productId, required this.quantity, required this.direction, this.packUnitId, this.packCount});
  factory _Lines9.fromJson(Map<String, dynamic> json) => _$Lines9FromJson(json);

@override final  String productId;
@override final  dynamic quantity;
@override final  Direction direction;
@override final  String? packUnitId;
@override final  dynamic packCount;

/// Create a copy of Lines9
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines9CopyWith<_Lines9> get copyWith => __$Lines9CopyWithImpl<_Lines9>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines9ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines9&&(identical(other.productId, productId) || other.productId == productId)&&const DeepCollectionEquality().equals(other.quantity, quantity)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&const DeepCollectionEquality().equals(other.packCount, packCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,const DeepCollectionEquality().hash(quantity),direction,packUnitId,const DeepCollectionEquality().hash(packCount));
}

@override
String toString() {
    return 'Lines9(productId: $productId, quantity: $quantity, direction: $direction, packUnitId: $packUnitId, packCount: $packCount)';
}


}

/// @nodoc
abstract mixin class _$Lines9CopyWith<$Res> implements $Lines9CopyWith<$Res> {
  factory _$Lines9CopyWith(_Lines9 value, $Res Function(_Lines9) _then) = __$Lines9CopyWithImpl;
@override @useResult
$Res call({
 String productId, dynamic quantity, Direction direction, String? packUnitId, dynamic packCount
});




}
/// @nodoc
class __$Lines9CopyWithImpl<$Res>
    implements _$Lines9CopyWith<$Res> {
  __$Lines9CopyWithImpl(this._self, this._then);

  final _Lines9 _self;
  final $Res Function(_Lines9) _then;

/// Create a copy of Lines9
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantity = freezed,Object? direction = null,Object? packUnitId = freezed,Object? packCount = freezed,}) {
  return _then(_Lines9(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as Direction,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
