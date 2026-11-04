// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unverified_split_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnverifiedSplitDtoOutput {

 String get splitId; String get receiptId; String get receiptNumber; DateTime get receiptDate; Customer4 get customer; UnverifiedSplitDtoOutputMethod get method; Account3 get account; int get amount; String? get reference;
/// Create a copy of UnverifiedSplitDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnverifiedSplitDtoOutputCopyWith<UnverifiedSplitDtoOutput> get copyWith => _$UnverifiedSplitDtoOutputCopyWithImpl<UnverifiedSplitDtoOutput>(this as UnverifiedSplitDtoOutput, _$identity);

  /// Serializes this UnverifiedSplitDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UnverifiedSplitDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnverifiedSplitDtoOutput&&(identical(other.splitId, _this.splitId) || other.splitId == _this.splitId)&&(identical(other.receiptId, _this.receiptId) || other.receiptId == _this.receiptId)&&(identical(other.receiptNumber, _this.receiptNumber) || other.receiptNumber == _this.receiptNumber)&&(identical(other.receiptDate, _this.receiptDate) || other.receiptDate == _this.receiptDate)&&(identical(other.customer, _this.customer) || other.customer == _this.customer)&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.account, _this.account) || other.account == _this.account)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.reference, _this.reference) || other.reference == _this.reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UnverifiedSplitDtoOutput;
  return Object.hash(runtimeType,_this.splitId,_this.receiptId,_this.receiptNumber,_this.receiptDate,_this.customer,_this.method,_this.account,_this.amount,_this.reference);
}

@override
String toString() {
  final _this = this as UnverifiedSplitDtoOutput;
  return 'UnverifiedSplitDtoOutput(splitId: ${_this.splitId}, receiptId: ${_this.receiptId}, receiptNumber: ${_this.receiptNumber}, receiptDate: ${_this.receiptDate}, customer: ${_this.customer}, method: ${_this.method}, account: ${_this.account}, amount: ${_this.amount}, reference: ${_this.reference})';
}


}

/// @nodoc
abstract mixin class $UnverifiedSplitDtoOutputCopyWith<$Res>  {
  factory $UnverifiedSplitDtoOutputCopyWith(UnverifiedSplitDtoOutput value, $Res Function(UnverifiedSplitDtoOutput) _then) = _$UnverifiedSplitDtoOutputCopyWithImpl;
@useResult
$Res call({
 String splitId, String receiptId, String receiptNumber, DateTime receiptDate, Customer4 customer, UnverifiedSplitDtoOutputMethod method, Account3 account, int amount, String? reference
});


$Customer4CopyWith<$Res> get customer;$Account3CopyWith<$Res> get account;

}
/// @nodoc
class _$UnverifiedSplitDtoOutputCopyWithImpl<$Res>
    implements $UnverifiedSplitDtoOutputCopyWith<$Res> {
  _$UnverifiedSplitDtoOutputCopyWithImpl(this._self, this._then);

  final UnverifiedSplitDtoOutput _self;
  final $Res Function(UnverifiedSplitDtoOutput) _then;

/// Create a copy of UnverifiedSplitDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? splitId = null,Object? receiptId = null,Object? receiptNumber = null,Object? receiptDate = null,Object? customer = null,Object? method = null,Object? account = null,Object? amount = null,Object? reference = freezed,}) {
  return _then(UnverifiedSplitDtoOutput(
splitId: null == splitId ? _self.splitId : splitId // ignore: cast_nullable_to_non_nullable
as String,receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,receiptDate: null == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer4,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as UnverifiedSplitDtoOutputMethod,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account3,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UnverifiedSplitDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer4CopyWith<$Res> get customer {
  
  return $Customer4CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of UnverifiedSplitDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Account3CopyWith<$Res> get account {
  
  return $Account3CopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// Adds pattern-matching-related methods to [UnverifiedSplitDtoOutput].
extension UnverifiedSplitDtoOutputPatterns on UnverifiedSplitDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnverifiedSplitDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnverifiedSplitDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnverifiedSplitDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _UnverifiedSplitDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnverifiedSplitDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _UnverifiedSplitDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String splitId,  String receiptId,  String receiptNumber,  DateTime receiptDate,  Customer4 customer,  UnverifiedSplitDtoOutputMethod method,  Account3 account,  int amount,  String? reference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnverifiedSplitDtoOutput() when $default != null:
return $default(_that.splitId,_that.receiptId,_that.receiptNumber,_that.receiptDate,_that.customer,_that.method,_that.account,_that.amount,_that.reference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String splitId,  String receiptId,  String receiptNumber,  DateTime receiptDate,  Customer4 customer,  UnverifiedSplitDtoOutputMethod method,  Account3 account,  int amount,  String? reference)  $default,) {final _that = this;
switch (_that) {
case _UnverifiedSplitDtoOutput():
return $default(_that.splitId,_that.receiptId,_that.receiptNumber,_that.receiptDate,_that.customer,_that.method,_that.account,_that.amount,_that.reference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String splitId,  String receiptId,  String receiptNumber,  DateTime receiptDate,  Customer4 customer,  UnverifiedSplitDtoOutputMethod method,  Account3 account,  int amount,  String? reference)?  $default,) {final _that = this;
switch (_that) {
case _UnverifiedSplitDtoOutput() when $default != null:
return $default(_that.splitId,_that.receiptId,_that.receiptNumber,_that.receiptDate,_that.customer,_that.method,_that.account,_that.amount,_that.reference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnverifiedSplitDtoOutput implements UnverifiedSplitDtoOutput {
  const _UnverifiedSplitDtoOutput({required this.splitId, required this.receiptId, required this.receiptNumber, required this.receiptDate, required this.customer, required this.method, required this.account, required this.amount, required this.reference});
  factory _UnverifiedSplitDtoOutput.fromJson(Map<String, dynamic> json) => _$UnverifiedSplitDtoOutputFromJson(json);

@override final  String splitId;
@override final  String receiptId;
@override final  String receiptNumber;
@override final  DateTime receiptDate;
@override final  Customer4 customer;
@override final  UnverifiedSplitDtoOutputMethod method;
@override final  Account3 account;
@override final  int amount;
@override final  String? reference;

/// Create a copy of UnverifiedSplitDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnverifiedSplitDtoOutputCopyWith<_UnverifiedSplitDtoOutput> get copyWith => __$UnverifiedSplitDtoOutputCopyWithImpl<_UnverifiedSplitDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnverifiedSplitDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnverifiedSplitDtoOutput&&(identical(other.splitId, splitId) || other.splitId == splitId)&&(identical(other.receiptId, receiptId) || other.receiptId == receiptId)&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.receiptDate, receiptDate) || other.receiptDate == receiptDate)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.method, method) || other.method == method)&&(identical(other.account, account) || other.account == account)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,splitId,receiptId,receiptNumber,receiptDate,customer,method,account,amount,reference);
}

@override
String toString() {
    return 'UnverifiedSplitDtoOutput(splitId: $splitId, receiptId: $receiptId, receiptNumber: $receiptNumber, receiptDate: $receiptDate, customer: $customer, method: $method, account: $account, amount: $amount, reference: $reference)';
}


}

/// @nodoc
abstract mixin class _$UnverifiedSplitDtoOutputCopyWith<$Res> implements $UnverifiedSplitDtoOutputCopyWith<$Res> {
  factory _$UnverifiedSplitDtoOutputCopyWith(_UnverifiedSplitDtoOutput value, $Res Function(_UnverifiedSplitDtoOutput) _then) = __$UnverifiedSplitDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String splitId, String receiptId, String receiptNumber, DateTime receiptDate, Customer4 customer, UnverifiedSplitDtoOutputMethod method, Account3 account, int amount, String? reference
});


@override $Customer4CopyWith<$Res> get customer;@override $Account3CopyWith<$Res> get account;

}
/// @nodoc
class __$UnverifiedSplitDtoOutputCopyWithImpl<$Res>
    implements _$UnverifiedSplitDtoOutputCopyWith<$Res> {
  __$UnverifiedSplitDtoOutputCopyWithImpl(this._self, this._then);

  final _UnverifiedSplitDtoOutput _self;
  final $Res Function(_UnverifiedSplitDtoOutput) _then;

/// Create a copy of UnverifiedSplitDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? splitId = null,Object? receiptId = null,Object? receiptNumber = null,Object? receiptDate = null,Object? customer = null,Object? method = null,Object? account = null,Object? amount = null,Object? reference = freezed,}) {
  return _then(_UnverifiedSplitDtoOutput(
splitId: null == splitId ? _self.splitId : splitId // ignore: cast_nullable_to_non_nullable
as String,receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,receiptDate: null == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer4,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as UnverifiedSplitDtoOutputMethod,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account3,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UnverifiedSplitDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer4CopyWith<$Res> get customer {
  
  return $Customer4CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of UnverifiedSplitDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Account3CopyWith<$Res> get account {
  
  return $Account3CopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}

// dart format on
