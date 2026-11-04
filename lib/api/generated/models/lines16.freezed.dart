// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines16.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines16 {

 String get orderLineId; dynamic get quantity; bool get complete; dynamic get packCount;
/// Create a copy of Lines16
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines16CopyWith<Lines16> get copyWith => _$Lines16CopyWithImpl<Lines16>(this as Lines16, _$identity);

  /// Serializes this Lines16 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines16;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines16&&(identical(other.orderLineId, _this.orderLineId) || other.orderLineId == _this.orderLineId)&&const DeepCollectionEquality().equals(other.quantity, _this.quantity)&&(identical(other.complete, _this.complete) || other.complete == _this.complete)&&const DeepCollectionEquality().equals(other.packCount, _this.packCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines16;
  return Object.hash(runtimeType,_this.orderLineId,const DeepCollectionEquality().hash(_this.quantity),_this.complete,const DeepCollectionEquality().hash(_this.packCount));
}

@override
String toString() {
  final _this = this as Lines16;
  return 'Lines16(orderLineId: ${_this.orderLineId}, quantity: ${_this.quantity}, complete: ${_this.complete}, packCount: ${_this.packCount})';
}


}

/// @nodoc
abstract mixin class $Lines16CopyWith<$Res>  {
  factory $Lines16CopyWith(Lines16 value, $Res Function(Lines16) _then) = _$Lines16CopyWithImpl;
@useResult
$Res call({
 String orderLineId, dynamic quantity, bool complete, dynamic packCount
});




}
/// @nodoc
class _$Lines16CopyWithImpl<$Res>
    implements $Lines16CopyWith<$Res> {
  _$Lines16CopyWithImpl(this._self, this._then);

  final Lines16 _self;
  final $Res Function(Lines16) _then;

/// Create a copy of Lines16
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderLineId = null,Object? quantity = freezed,Object? complete = null,Object? packCount = freezed,}) {
  return _then(Lines16(
orderLineId: null == orderLineId ? _self.orderLineId : orderLineId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines16].
extension Lines16Patterns on Lines16 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines16 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines16() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines16 value)  $default,){
final _that = this;
switch (_that) {
case _Lines16():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines16 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines16() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderLineId,  dynamic quantity,  bool complete,  dynamic packCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines16() when $default != null:
return $default(_that.orderLineId,_that.quantity,_that.complete,_that.packCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderLineId,  dynamic quantity,  bool complete,  dynamic packCount)  $default,) {final _that = this;
switch (_that) {
case _Lines16():
return $default(_that.orderLineId,_that.quantity,_that.complete,_that.packCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderLineId,  dynamic quantity,  bool complete,  dynamic packCount)?  $default,) {final _that = this;
switch (_that) {
case _Lines16() when $default != null:
return $default(_that.orderLineId,_that.quantity,_that.complete,_that.packCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines16 implements Lines16 {
  const _Lines16({required this.orderLineId, required this.quantity, this.complete = true, this.packCount});
  factory _Lines16.fromJson(Map<String, dynamic> json) => _$Lines16FromJson(json);

@override final  String orderLineId;
@override final  dynamic quantity;
@override@JsonKey() final  bool complete;
@override final  dynamic packCount;

/// Create a copy of Lines16
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines16CopyWith<_Lines16> get copyWith => __$Lines16CopyWithImpl<_Lines16>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines16ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines16&&(identical(other.orderLineId, orderLineId) || other.orderLineId == orderLineId)&&const DeepCollectionEquality().equals(other.quantity, quantity)&&(identical(other.complete, complete) || other.complete == complete)&&const DeepCollectionEquality().equals(other.packCount, packCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,orderLineId,const DeepCollectionEquality().hash(quantity),complete,const DeepCollectionEquality().hash(packCount));
}

@override
String toString() {
    return 'Lines16(orderLineId: $orderLineId, quantity: $quantity, complete: $complete, packCount: $packCount)';
}


}

/// @nodoc
abstract mixin class _$Lines16CopyWith<$Res> implements $Lines16CopyWith<$Res> {
  factory _$Lines16CopyWith(_Lines16 value, $Res Function(_Lines16) _then) = __$Lines16CopyWithImpl;
@override @useResult
$Res call({
 String orderLineId, dynamic quantity, bool complete, dynamic packCount
});




}
/// @nodoc
class __$Lines16CopyWithImpl<$Res>
    implements _$Lines16CopyWith<$Res> {
  __$Lines16CopyWithImpl(this._self, this._then);

  final _Lines16 _self;
  final $Res Function(_Lines16) _then;

/// Create a copy of Lines16
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderLineId = null,Object? quantity = freezed,Object? complete = null,Object? packCount = freezed,}) {
  return _then(_Lines16(
orderLineId: null == orderLineId ? _self.orderLineId : orderLineId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as dynamic,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
