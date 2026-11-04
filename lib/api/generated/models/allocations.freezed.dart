// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allocations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Allocations {

 CreditType get creditType; String get creditId; String get creditNumber; String? get billId; String get billNumber; int get amount;
/// Create a copy of Allocations
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllocationsCopyWith<Allocations> get copyWith => _$AllocationsCopyWithImpl<Allocations>(this as Allocations, _$identity);

  /// Serializes this Allocations to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Allocations;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Allocations&&(identical(other.creditType, _this.creditType) || other.creditType == _this.creditType)&&(identical(other.creditId, _this.creditId) || other.creditId == _this.creditId)&&(identical(other.creditNumber, _this.creditNumber) || other.creditNumber == _this.creditNumber)&&(identical(other.billId, _this.billId) || other.billId == _this.billId)&&(identical(other.billNumber, _this.billNumber) || other.billNumber == _this.billNumber)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Allocations;
  return Object.hash(runtimeType,_this.creditType,_this.creditId,_this.creditNumber,_this.billId,_this.billNumber,_this.amount);
}

@override
String toString() {
  final _this = this as Allocations;
  return 'Allocations(creditType: ${_this.creditType}, creditId: ${_this.creditId}, creditNumber: ${_this.creditNumber}, billId: ${_this.billId}, billNumber: ${_this.billNumber}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $AllocationsCopyWith<$Res>  {
  factory $AllocationsCopyWith(Allocations value, $Res Function(Allocations) _then) = _$AllocationsCopyWithImpl;
@useResult
$Res call({
 CreditType creditType, String creditId, String creditNumber, String? billId, String billNumber, int amount
});




}
/// @nodoc
class _$AllocationsCopyWithImpl<$Res>
    implements $AllocationsCopyWith<$Res> {
  _$AllocationsCopyWithImpl(this._self, this._then);

  final Allocations _self;
  final $Res Function(Allocations) _then;

/// Create a copy of Allocations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? creditType = null,Object? creditId = null,Object? creditNumber = null,Object? billId = freezed,Object? billNumber = null,Object? amount = null,}) {
  return _then(Allocations(
creditType: null == creditType ? _self.creditType : creditType // ignore: cast_nullable_to_non_nullable
as CreditType,creditId: null == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String,creditNumber: null == creditNumber ? _self.creditNumber : creditNumber // ignore: cast_nullable_to_non_nullable
as String,billId: freezed == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as String?,billNumber: null == billNumber ? _self.billNumber : billNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Allocations].
extension AllocationsPatterns on Allocations {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Allocations value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Allocations() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Allocations value)  $default,){
final _that = this;
switch (_that) {
case _Allocations():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Allocations value)?  $default,){
final _that = this;
switch (_that) {
case _Allocations() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreditType creditType,  String creditId,  String creditNumber,  String? billId,  String billNumber,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Allocations() when $default != null:
return $default(_that.creditType,_that.creditId,_that.creditNumber,_that.billId,_that.billNumber,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreditType creditType,  String creditId,  String creditNumber,  String? billId,  String billNumber,  int amount)  $default,) {final _that = this;
switch (_that) {
case _Allocations():
return $default(_that.creditType,_that.creditId,_that.creditNumber,_that.billId,_that.billNumber,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreditType creditType,  String creditId,  String creditNumber,  String? billId,  String billNumber,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _Allocations() when $default != null:
return $default(_that.creditType,_that.creditId,_that.creditNumber,_that.billId,_that.billNumber,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Allocations implements Allocations {
  const _Allocations({required this.creditType, required this.creditId, required this.creditNumber, required this.billId, required this.billNumber, required this.amount});
  factory _Allocations.fromJson(Map<String, dynamic> json) => _$AllocationsFromJson(json);

@override final  CreditType creditType;
@override final  String creditId;
@override final  String creditNumber;
@override final  String? billId;
@override final  String billNumber;
@override final  int amount;

/// Create a copy of Allocations
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllocationsCopyWith<_Allocations> get copyWith => __$AllocationsCopyWithImpl<_Allocations>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllocationsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Allocations&&(identical(other.creditType, creditType) || other.creditType == creditType)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.creditNumber, creditNumber) || other.creditNumber == creditNumber)&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.billNumber, billNumber) || other.billNumber == billNumber)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,creditType,creditId,creditNumber,billId,billNumber,amount);
}

@override
String toString() {
    return 'Allocations(creditType: $creditType, creditId: $creditId, creditNumber: $creditNumber, billId: $billId, billNumber: $billNumber, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$AllocationsCopyWith<$Res> implements $AllocationsCopyWith<$Res> {
  factory _$AllocationsCopyWith(_Allocations value, $Res Function(_Allocations) _then) = __$AllocationsCopyWithImpl;
@override @useResult
$Res call({
 CreditType creditType, String creditId, String creditNumber, String? billId, String billNumber, int amount
});




}
/// @nodoc
class __$AllocationsCopyWithImpl<$Res>
    implements _$AllocationsCopyWith<$Res> {
  __$AllocationsCopyWithImpl(this._self, this._then);

  final _Allocations _self;
  final $Res Function(_Allocations) _then;

/// Create a copy of Allocations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? creditType = null,Object? creditId = null,Object? creditNumber = null,Object? billId = freezed,Object? billNumber = null,Object? amount = null,}) {
  return _then(_Allocations(
creditType: null == creditType ? _self.creditType : creditType // ignore: cast_nullable_to_non_nullable
as CreditType,creditId: null == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String,creditNumber: null == creditNumber ? _self.creditNumber : creditNumber // ignore: cast_nullable_to_non_nullable
as String,billId: freezed == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as String?,billNumber: null == billNumber ? _self.billNumber : billNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
