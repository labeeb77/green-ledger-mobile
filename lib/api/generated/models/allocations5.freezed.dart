// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allocations5.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Allocations5 {

 String get receiptId; String get receiptNumber; int get amount;
/// Create a copy of Allocations5
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Allocations5CopyWith<Allocations5> get copyWith => _$Allocations5CopyWithImpl<Allocations5>(this as Allocations5, _$identity);

  /// Serializes this Allocations5 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Allocations5;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Allocations5&&(identical(other.receiptId, _this.receiptId) || other.receiptId == _this.receiptId)&&(identical(other.receiptNumber, _this.receiptNumber) || other.receiptNumber == _this.receiptNumber)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Allocations5;
  return Object.hash(runtimeType,_this.receiptId,_this.receiptNumber,_this.amount);
}

@override
String toString() {
  final _this = this as Allocations5;
  return 'Allocations5(receiptId: ${_this.receiptId}, receiptNumber: ${_this.receiptNumber}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $Allocations5CopyWith<$Res>  {
  factory $Allocations5CopyWith(Allocations5 value, $Res Function(Allocations5) _then) = _$Allocations5CopyWithImpl;
@useResult
$Res call({
 String receiptId, String receiptNumber, int amount
});




}
/// @nodoc
class _$Allocations5CopyWithImpl<$Res>
    implements $Allocations5CopyWith<$Res> {
  _$Allocations5CopyWithImpl(this._self, this._then);

  final Allocations5 _self;
  final $Res Function(Allocations5) _then;

/// Create a copy of Allocations5
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiptId = null,Object? receiptNumber = null,Object? amount = null,}) {
  return _then(Allocations5(
receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Allocations5].
extension Allocations5Patterns on Allocations5 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Allocations5 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Allocations5() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Allocations5 value)  $default,){
final _that = this;
switch (_that) {
case _Allocations5():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Allocations5 value)?  $default,){
final _that = this;
switch (_that) {
case _Allocations5() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String receiptId,  String receiptNumber,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Allocations5() when $default != null:
return $default(_that.receiptId,_that.receiptNumber,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String receiptId,  String receiptNumber,  int amount)  $default,) {final _that = this;
switch (_that) {
case _Allocations5():
return $default(_that.receiptId,_that.receiptNumber,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String receiptId,  String receiptNumber,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _Allocations5() when $default != null:
return $default(_that.receiptId,_that.receiptNumber,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Allocations5 implements Allocations5 {
  const _Allocations5({required this.receiptId, required this.receiptNumber, required this.amount});
  factory _Allocations5.fromJson(Map<String, dynamic> json) => _$Allocations5FromJson(json);

@override final  String receiptId;
@override final  String receiptNumber;
@override final  int amount;

/// Create a copy of Allocations5
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Allocations5CopyWith<_Allocations5> get copyWith => __$Allocations5CopyWithImpl<_Allocations5>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Allocations5ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Allocations5&&(identical(other.receiptId, receiptId) || other.receiptId == receiptId)&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,receiptId,receiptNumber,amount);
}

@override
String toString() {
    return 'Allocations5(receiptId: $receiptId, receiptNumber: $receiptNumber, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$Allocations5CopyWith<$Res> implements $Allocations5CopyWith<$Res> {
  factory _$Allocations5CopyWith(_Allocations5 value, $Res Function(_Allocations5) _then) = __$Allocations5CopyWithImpl;
@override @useResult
$Res call({
 String receiptId, String receiptNumber, int amount
});




}
/// @nodoc
class __$Allocations5CopyWithImpl<$Res>
    implements _$Allocations5CopyWith<$Res> {
  __$Allocations5CopyWithImpl(this._self, this._then);

  final _Allocations5 _self;
  final $Res Function(_Allocations5) _then;

/// Create a copy of Allocations5
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiptId = null,Object? receiptNumber = null,Object? amount = null,}) {
  return _then(_Allocations5(
receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
