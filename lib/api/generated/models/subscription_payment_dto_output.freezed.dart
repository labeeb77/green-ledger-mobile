// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_payment_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionPaymentDtoOutput {

 String get id; int get amount; String get paidOn; String get method; String? get reference; String? get notes; String? get extendedTo; DateTime get createdAt;
/// Create a copy of SubscriptionPaymentDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionPaymentDtoOutputCopyWith<SubscriptionPaymentDtoOutput> get copyWith => _$SubscriptionPaymentDtoOutputCopyWithImpl<SubscriptionPaymentDtoOutput>(this as SubscriptionPaymentDtoOutput, _$identity);

  /// Serializes this SubscriptionPaymentDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubscriptionPaymentDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionPaymentDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.paidOn, _this.paidOn) || other.paidOn == _this.paidOn)&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.reference, _this.reference) || other.reference == _this.reference)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.extendedTo, _this.extendedTo) || other.extendedTo == _this.extendedTo)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubscriptionPaymentDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.amount,_this.paidOn,_this.method,_this.reference,_this.notes,_this.extendedTo,_this.createdAt);
}

@override
String toString() {
  final _this = this as SubscriptionPaymentDtoOutput;
  return 'SubscriptionPaymentDtoOutput(id: ${_this.id}, amount: ${_this.amount}, paidOn: ${_this.paidOn}, method: ${_this.method}, reference: ${_this.reference}, notes: ${_this.notes}, extendedTo: ${_this.extendedTo}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $SubscriptionPaymentDtoOutputCopyWith<$Res>  {
  factory $SubscriptionPaymentDtoOutputCopyWith(SubscriptionPaymentDtoOutput value, $Res Function(SubscriptionPaymentDtoOutput) _then) = _$SubscriptionPaymentDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, int amount, String paidOn, String method, String? reference, String? notes, String? extendedTo, DateTime createdAt
});




}
/// @nodoc
class _$SubscriptionPaymentDtoOutputCopyWithImpl<$Res>
    implements $SubscriptionPaymentDtoOutputCopyWith<$Res> {
  _$SubscriptionPaymentDtoOutputCopyWithImpl(this._self, this._then);

  final SubscriptionPaymentDtoOutput _self;
  final $Res Function(SubscriptionPaymentDtoOutput) _then;

/// Create a copy of SubscriptionPaymentDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? paidOn = null,Object? method = null,Object? reference = freezed,Object? notes = freezed,Object? extendedTo = freezed,Object? createdAt = null,}) {
  return _then(SubscriptionPaymentDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paidOn: null == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,extendedTo: freezed == extendedTo ? _self.extendedTo : extendedTo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionPaymentDtoOutput].
extension SubscriptionPaymentDtoOutputPatterns on SubscriptionPaymentDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionPaymentDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionPaymentDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionPaymentDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPaymentDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionPaymentDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPaymentDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int amount,  String paidOn,  String method,  String? reference,  String? notes,  String? extendedTo,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionPaymentDtoOutput() when $default != null:
return $default(_that.id,_that.amount,_that.paidOn,_that.method,_that.reference,_that.notes,_that.extendedTo,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int amount,  String paidOn,  String method,  String? reference,  String? notes,  String? extendedTo,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPaymentDtoOutput():
return $default(_that.id,_that.amount,_that.paidOn,_that.method,_that.reference,_that.notes,_that.extendedTo,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int amount,  String paidOn,  String method,  String? reference,  String? notes,  String? extendedTo,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPaymentDtoOutput() when $default != null:
return $default(_that.id,_that.amount,_that.paidOn,_that.method,_that.reference,_that.notes,_that.extendedTo,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionPaymentDtoOutput implements SubscriptionPaymentDtoOutput {
  const _SubscriptionPaymentDtoOutput({required this.id, required this.amount, required this.paidOn, required this.method, required this.reference, required this.notes, required this.extendedTo, required this.createdAt});
  factory _SubscriptionPaymentDtoOutput.fromJson(Map<String, dynamic> json) => _$SubscriptionPaymentDtoOutputFromJson(json);

@override final  String id;
@override final  int amount;
@override final  String paidOn;
@override final  String method;
@override final  String? reference;
@override final  String? notes;
@override final  String? extendedTo;
@override final  DateTime createdAt;

/// Create a copy of SubscriptionPaymentDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionPaymentDtoOutputCopyWith<_SubscriptionPaymentDtoOutput> get copyWith => __$SubscriptionPaymentDtoOutputCopyWithImpl<_SubscriptionPaymentDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionPaymentDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionPaymentDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.method, method) || other.method == method)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.extendedTo, extendedTo) || other.extendedTo == extendedTo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,amount,paidOn,method,reference,notes,extendedTo,createdAt);
}

@override
String toString() {
    return 'SubscriptionPaymentDtoOutput(id: $id, amount: $amount, paidOn: $paidOn, method: $method, reference: $reference, notes: $notes, extendedTo: $extendedTo, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionPaymentDtoOutputCopyWith<$Res> implements $SubscriptionPaymentDtoOutputCopyWith<$Res> {
  factory _$SubscriptionPaymentDtoOutputCopyWith(_SubscriptionPaymentDtoOutput value, $Res Function(_SubscriptionPaymentDtoOutput) _then) = __$SubscriptionPaymentDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, int amount, String paidOn, String method, String? reference, String? notes, String? extendedTo, DateTime createdAt
});




}
/// @nodoc
class __$SubscriptionPaymentDtoOutputCopyWithImpl<$Res>
    implements _$SubscriptionPaymentDtoOutputCopyWith<$Res> {
  __$SubscriptionPaymentDtoOutputCopyWithImpl(this._self, this._then);

  final _SubscriptionPaymentDtoOutput _self;
  final $Res Function(_SubscriptionPaymentDtoOutput) _then;

/// Create a copy of SubscriptionPaymentDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? paidOn = null,Object? method = null,Object? reference = freezed,Object? notes = freezed,Object? extendedTo = freezed,Object? createdAt = null,}) {
  return _then(_SubscriptionPaymentDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paidOn: null == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,extendedTo: freezed == extendedTo ? _self.extendedTo : extendedTo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
