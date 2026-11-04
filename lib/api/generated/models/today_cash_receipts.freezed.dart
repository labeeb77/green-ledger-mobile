// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_cash_receipts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodayCashReceipts {

 String get receiptNumber; String get customer; int get amount;
/// Create a copy of TodayCashReceipts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodayCashReceiptsCopyWith<TodayCashReceipts> get copyWith => _$TodayCashReceiptsCopyWithImpl<TodayCashReceipts>(this as TodayCashReceipts, _$identity);

  /// Serializes this TodayCashReceipts to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TodayCashReceipts;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodayCashReceipts&&(identical(other.receiptNumber, _this.receiptNumber) || other.receiptNumber == _this.receiptNumber)&&(identical(other.customer, _this.customer) || other.customer == _this.customer)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TodayCashReceipts;
  return Object.hash(runtimeType,_this.receiptNumber,_this.customer,_this.amount);
}

@override
String toString() {
  final _this = this as TodayCashReceipts;
  return 'TodayCashReceipts(receiptNumber: ${_this.receiptNumber}, customer: ${_this.customer}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $TodayCashReceiptsCopyWith<$Res>  {
  factory $TodayCashReceiptsCopyWith(TodayCashReceipts value, $Res Function(TodayCashReceipts) _then) = _$TodayCashReceiptsCopyWithImpl;
@useResult
$Res call({
 String receiptNumber, String customer, int amount
});




}
/// @nodoc
class _$TodayCashReceiptsCopyWithImpl<$Res>
    implements $TodayCashReceiptsCopyWith<$Res> {
  _$TodayCashReceiptsCopyWithImpl(this._self, this._then);

  final TodayCashReceipts _self;
  final $Res Function(TodayCashReceipts) _then;

/// Create a copy of TodayCashReceipts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiptNumber = null,Object? customer = null,Object? amount = null,}) {
  return _then(TodayCashReceipts(
receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TodayCashReceipts].
extension TodayCashReceiptsPatterns on TodayCashReceipts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodayCashReceipts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodayCashReceipts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodayCashReceipts value)  $default,){
final _that = this;
switch (_that) {
case _TodayCashReceipts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodayCashReceipts value)?  $default,){
final _that = this;
switch (_that) {
case _TodayCashReceipts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String receiptNumber,  String customer,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodayCashReceipts() when $default != null:
return $default(_that.receiptNumber,_that.customer,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String receiptNumber,  String customer,  int amount)  $default,) {final _that = this;
switch (_that) {
case _TodayCashReceipts():
return $default(_that.receiptNumber,_that.customer,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String receiptNumber,  String customer,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _TodayCashReceipts() when $default != null:
return $default(_that.receiptNumber,_that.customer,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodayCashReceipts implements TodayCashReceipts {
  const _TodayCashReceipts({required this.receiptNumber, required this.customer, required this.amount});
  factory _TodayCashReceipts.fromJson(Map<String, dynamic> json) => _$TodayCashReceiptsFromJson(json);

@override final  String receiptNumber;
@override final  String customer;
@override final  int amount;

/// Create a copy of TodayCashReceipts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodayCashReceiptsCopyWith<_TodayCashReceipts> get copyWith => __$TodayCashReceiptsCopyWithImpl<_TodayCashReceipts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodayCashReceiptsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodayCashReceipts&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,receiptNumber,customer,amount);
}

@override
String toString() {
    return 'TodayCashReceipts(receiptNumber: $receiptNumber, customer: $customer, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$TodayCashReceiptsCopyWith<$Res> implements $TodayCashReceiptsCopyWith<$Res> {
  factory _$TodayCashReceiptsCopyWith(_TodayCashReceipts value, $Res Function(_TodayCashReceipts) _then) = __$TodayCashReceiptsCopyWithImpl;
@override @useResult
$Res call({
 String receiptNumber, String customer, int amount
});




}
/// @nodoc
class __$TodayCashReceiptsCopyWithImpl<$Res>
    implements _$TodayCashReceiptsCopyWith<$Res> {
  __$TodayCashReceiptsCopyWithImpl(this._self, this._then);

  final _TodayCashReceipts _self;
  final $Res Function(_TodayCashReceipts) _then;

/// Create a copy of TodayCashReceipts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiptNumber = null,Object? customer = null,Object? amount = null,}) {
  return _then(_TodayCashReceipts(
receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
