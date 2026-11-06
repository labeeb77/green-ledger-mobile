// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allocations3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Allocations3 {

 String get billId;/// Amount in paise (₹1 = 100)
 int get amount;
/// Create a copy of Allocations3
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Allocations3CopyWith<Allocations3> get copyWith => _$Allocations3CopyWithImpl<Allocations3>(this as Allocations3, _$identity);

  /// Serializes this Allocations3 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Allocations3;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Allocations3&&(identical(other.billId, _this.billId) || other.billId == _this.billId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Allocations3;
  return Object.hash(runtimeType,_this.billId,_this.amount);
}

@override
String toString() {
  final _this = this as Allocations3;
  return 'Allocations3(billId: ${_this.billId}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $Allocations3CopyWith<$Res>  {
  factory $Allocations3CopyWith(Allocations3 value, $Res Function(Allocations3) _then) = _$Allocations3CopyWithImpl;
@useResult
$Res call({
 String billId, int amount
});




}
/// @nodoc
class _$Allocations3CopyWithImpl<$Res>
    implements $Allocations3CopyWith<$Res> {
  _$Allocations3CopyWithImpl(this._self, this._then);

  final Allocations3 _self;
  final $Res Function(Allocations3) _then;

/// Create a copy of Allocations3
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? billId = null,Object? amount = null,}) {
  return _then(Allocations3(
billId: null == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Allocations3].
extension Allocations3Patterns on Allocations3 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Allocations3 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Allocations3() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Allocations3 value)  $default,){
final _that = this;
switch (_that) {
case _Allocations3():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Allocations3 value)?  $default,){
final _that = this;
switch (_that) {
case _Allocations3() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String billId,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Allocations3() when $default != null:
return $default(_that.billId,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String billId,  int amount)  $default,) {final _that = this;
switch (_that) {
case _Allocations3():
return $default(_that.billId,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String billId,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _Allocations3() when $default != null:
return $default(_that.billId,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Allocations3 implements Allocations3 {
  const _Allocations3({required this.billId, required this.amount});
  factory _Allocations3.fromJson(Map<String, dynamic> json) => _$Allocations3FromJson(json);

@override final  String billId;
/// Amount in paise (₹1 = 100)
@override final  int amount;

/// Create a copy of Allocations3
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Allocations3CopyWith<_Allocations3> get copyWith => __$Allocations3CopyWithImpl<_Allocations3>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Allocations3ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Allocations3&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,billId,amount);
}

@override
String toString() {
    return 'Allocations3(billId: $billId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$Allocations3CopyWith<$Res> implements $Allocations3CopyWith<$Res> {
  factory _$Allocations3CopyWith(_Allocations3 value, $Res Function(_Allocations3) _then) = __$Allocations3CopyWithImpl;
@override @useResult
$Res call({
 String billId, int amount
});




}
/// @nodoc
class __$Allocations3CopyWithImpl<$Res>
    implements _$Allocations3CopyWith<$Res> {
  __$Allocations3CopyWithImpl(this._self, this._then);

  final _Allocations3 _self;
  final $Res Function(_Allocations3) _then;

/// Create a copy of Allocations3
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? billId = null,Object? amount = null,}) {
  return _then(_Allocations3(
billId: null == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
