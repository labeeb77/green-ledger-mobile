// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allocations6.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Allocations6 {

 String? get billId; String get billNumber; int get amount;
/// Create a copy of Allocations6
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Allocations6CopyWith<Allocations6> get copyWith => _$Allocations6CopyWithImpl<Allocations6>(this as Allocations6, _$identity);

  /// Serializes this Allocations6 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Allocations6;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Allocations6&&(identical(other.billId, _this.billId) || other.billId == _this.billId)&&(identical(other.billNumber, _this.billNumber) || other.billNumber == _this.billNumber)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Allocations6;
  return Object.hash(runtimeType,_this.billId,_this.billNumber,_this.amount);
}

@override
String toString() {
  final _this = this as Allocations6;
  return 'Allocations6(billId: ${_this.billId}, billNumber: ${_this.billNumber}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $Allocations6CopyWith<$Res>  {
  factory $Allocations6CopyWith(Allocations6 value, $Res Function(Allocations6) _then) = _$Allocations6CopyWithImpl;
@useResult
$Res call({
 String? billId, String billNumber, int amount
});




}
/// @nodoc
class _$Allocations6CopyWithImpl<$Res>
    implements $Allocations6CopyWith<$Res> {
  _$Allocations6CopyWithImpl(this._self, this._then);

  final Allocations6 _self;
  final $Res Function(Allocations6) _then;

/// Create a copy of Allocations6
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? billId = freezed,Object? billNumber = null,Object? amount = null,}) {
  return _then(Allocations6(
billId: freezed == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as String?,billNumber: null == billNumber ? _self.billNumber : billNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Allocations6].
extension Allocations6Patterns on Allocations6 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Allocations6 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Allocations6() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Allocations6 value)  $default,){
final _that = this;
switch (_that) {
case _Allocations6():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Allocations6 value)?  $default,){
final _that = this;
switch (_that) {
case _Allocations6() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? billId,  String billNumber,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Allocations6() when $default != null:
return $default(_that.billId,_that.billNumber,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? billId,  String billNumber,  int amount)  $default,) {final _that = this;
switch (_that) {
case _Allocations6():
return $default(_that.billId,_that.billNumber,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? billId,  String billNumber,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _Allocations6() when $default != null:
return $default(_that.billId,_that.billNumber,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Allocations6 implements Allocations6 {
  const _Allocations6({required this.billId, required this.billNumber, required this.amount});
  factory _Allocations6.fromJson(Map<String, dynamic> json) => _$Allocations6FromJson(json);

@override final  String? billId;
@override final  String billNumber;
@override final  int amount;

/// Create a copy of Allocations6
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Allocations6CopyWith<_Allocations6> get copyWith => __$Allocations6CopyWithImpl<_Allocations6>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Allocations6ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Allocations6&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.billNumber, billNumber) || other.billNumber == billNumber)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,billId,billNumber,amount);
}

@override
String toString() {
    return 'Allocations6(billId: $billId, billNumber: $billNumber, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$Allocations6CopyWith<$Res> implements $Allocations6CopyWith<$Res> {
  factory _$Allocations6CopyWith(_Allocations6 value, $Res Function(_Allocations6) _then) = __$Allocations6CopyWithImpl;
@override @useResult
$Res call({
 String? billId, String billNumber, int amount
});




}
/// @nodoc
class __$Allocations6CopyWithImpl<$Res>
    implements _$Allocations6CopyWith<$Res> {
  __$Allocations6CopyWithImpl(this._self, this._then);

  final _Allocations6 _self;
  final $Res Function(_Allocations6) _then;

/// Create a copy of Allocations6
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? billId = freezed,Object? billNumber = null,Object? amount = null,}) {
  return _then(_Allocations6(
billId: freezed == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as String?,billNumber: null == billNumber ? _self.billNumber : billNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
