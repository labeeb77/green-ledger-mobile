// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cheque_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChequeDtoOutput {

 String get id; String get number; String? get bank; String? get chequeDate; int get amount; ChequeDtoOutputStatus get status; Customer5 get customer; Receipt get receipt; DepositAccount? get depositAccount; DateTime? get decidedAt; String? get note;
/// Create a copy of ChequeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChequeDtoOutputCopyWith<ChequeDtoOutput> get copyWith => _$ChequeDtoOutputCopyWithImpl<ChequeDtoOutput>(this as ChequeDtoOutput, _$identity);

  /// Serializes this ChequeDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChequeDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChequeDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.bank, _this.bank) || other.bank == _this.bank)&&(identical(other.chequeDate, _this.chequeDate) || other.chequeDate == _this.chequeDate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.customer, _this.customer) || other.customer == _this.customer)&&(identical(other.receipt, _this.receipt) || other.receipt == _this.receipt)&&(identical(other.depositAccount, _this.depositAccount) || other.depositAccount == _this.depositAccount)&&(identical(other.decidedAt, _this.decidedAt) || other.decidedAt == _this.decidedAt)&&(identical(other.note, _this.note) || other.note == _this.note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChequeDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.bank,_this.chequeDate,_this.amount,_this.status,_this.customer,_this.receipt,_this.depositAccount,_this.decidedAt,_this.note);
}

@override
String toString() {
  final _this = this as ChequeDtoOutput;
  return 'ChequeDtoOutput(id: ${_this.id}, number: ${_this.number}, bank: ${_this.bank}, chequeDate: ${_this.chequeDate}, amount: ${_this.amount}, status: ${_this.status}, customer: ${_this.customer}, receipt: ${_this.receipt}, depositAccount: ${_this.depositAccount}, decidedAt: ${_this.decidedAt}, note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $ChequeDtoOutputCopyWith<$Res>  {
  factory $ChequeDtoOutputCopyWith(ChequeDtoOutput value, $Res Function(ChequeDtoOutput) _then) = _$ChequeDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String number, String? bank, String? chequeDate, int amount, ChequeDtoOutputStatus status, Customer5 customer, Receipt receipt, DepositAccount? depositAccount, DateTime? decidedAt, String? note
});


$Customer5CopyWith<$Res> get customer;$ReceiptCopyWith<$Res> get receipt;$DepositAccountCopyWith<$Res>? get depositAccount;

}
/// @nodoc
class _$ChequeDtoOutputCopyWithImpl<$Res>
    implements $ChequeDtoOutputCopyWith<$Res> {
  _$ChequeDtoOutputCopyWithImpl(this._self, this._then);

  final ChequeDtoOutput _self;
  final $Res Function(ChequeDtoOutput) _then;

/// Create a copy of ChequeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? bank = freezed,Object? chequeDate = freezed,Object? amount = null,Object? status = null,Object? customer = null,Object? receipt = null,Object? depositAccount = freezed,Object? decidedAt = freezed,Object? note = freezed,}) {
  return _then(ChequeDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,bank: freezed == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as String?,chequeDate: freezed == chequeDate ? _self.chequeDate : chequeDate // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChequeDtoOutputStatus,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer5,receipt: null == receipt ? _self.receipt : receipt // ignore: cast_nullable_to_non_nullable
as Receipt,depositAccount: freezed == depositAccount ? _self.depositAccount : depositAccount // ignore: cast_nullable_to_non_nullable
as DepositAccount?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChequeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer5CopyWith<$Res> get customer {
  
  return $Customer5CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of ChequeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReceiptCopyWith<$Res> get receipt {
  
  return $ReceiptCopyWith<$Res>(_self.receipt, (value) {
    return _then(_self.copyWith(receipt: value));
  });
}/// Create a copy of ChequeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepositAccountCopyWith<$Res>? get depositAccount {
    if (_self.depositAccount == null) {
    return null;
  }

  return $DepositAccountCopyWith<$Res>(_self.depositAccount!, (value) {
    return _then(_self.copyWith(depositAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChequeDtoOutput].
extension ChequeDtoOutputPatterns on ChequeDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChequeDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChequeDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChequeDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ChequeDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChequeDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ChequeDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  String? bank,  String? chequeDate,  int amount,  ChequeDtoOutputStatus status,  Customer5 customer,  Receipt receipt,  DepositAccount? depositAccount,  DateTime? decidedAt,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChequeDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.bank,_that.chequeDate,_that.amount,_that.status,_that.customer,_that.receipt,_that.depositAccount,_that.decidedAt,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  String? bank,  String? chequeDate,  int amount,  ChequeDtoOutputStatus status,  Customer5 customer,  Receipt receipt,  DepositAccount? depositAccount,  DateTime? decidedAt,  String? note)  $default,) {final _that = this;
switch (_that) {
case _ChequeDtoOutput():
return $default(_that.id,_that.number,_that.bank,_that.chequeDate,_that.amount,_that.status,_that.customer,_that.receipt,_that.depositAccount,_that.decidedAt,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  String? bank,  String? chequeDate,  int amount,  ChequeDtoOutputStatus status,  Customer5 customer,  Receipt receipt,  DepositAccount? depositAccount,  DateTime? decidedAt,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _ChequeDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.bank,_that.chequeDate,_that.amount,_that.status,_that.customer,_that.receipt,_that.depositAccount,_that.decidedAt,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChequeDtoOutput implements ChequeDtoOutput {
  const _ChequeDtoOutput({required this.id, required this.number, required this.bank, required this.chequeDate, required this.amount, required this.status, required this.customer, required this.receipt, required this.depositAccount, required this.decidedAt, required this.note});
  factory _ChequeDtoOutput.fromJson(Map<String, dynamic> json) => _$ChequeDtoOutputFromJson(json);

@override final  String id;
@override final  String number;
@override final  String? bank;
@override final  String? chequeDate;
@override final  int amount;
@override final  ChequeDtoOutputStatus status;
@override final  Customer5 customer;
@override final  Receipt receipt;
@override final  DepositAccount? depositAccount;
@override final  DateTime? decidedAt;
@override final  String? note;

/// Create a copy of ChequeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChequeDtoOutputCopyWith<_ChequeDtoOutput> get copyWith => __$ChequeDtoOutputCopyWithImpl<_ChequeDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChequeDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChequeDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.chequeDate, chequeDate) || other.chequeDate == chequeDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.receipt, receipt) || other.receipt == receipt)&&(identical(other.depositAccount, depositAccount) || other.depositAccount == depositAccount)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,bank,chequeDate,amount,status,customer,receipt,depositAccount,decidedAt,note);
}

@override
String toString() {
    return 'ChequeDtoOutput(id: $id, number: $number, bank: $bank, chequeDate: $chequeDate, amount: $amount, status: $status, customer: $customer, receipt: $receipt, depositAccount: $depositAccount, decidedAt: $decidedAt, note: $note)';
}


}

/// @nodoc
abstract mixin class _$ChequeDtoOutputCopyWith<$Res> implements $ChequeDtoOutputCopyWith<$Res> {
  factory _$ChequeDtoOutputCopyWith(_ChequeDtoOutput value, $Res Function(_ChequeDtoOutput) _then) = __$ChequeDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, String? bank, String? chequeDate, int amount, ChequeDtoOutputStatus status, Customer5 customer, Receipt receipt, DepositAccount? depositAccount, DateTime? decidedAt, String? note
});


@override $Customer5CopyWith<$Res> get customer;@override $ReceiptCopyWith<$Res> get receipt;@override $DepositAccountCopyWith<$Res>? get depositAccount;

}
/// @nodoc
class __$ChequeDtoOutputCopyWithImpl<$Res>
    implements _$ChequeDtoOutputCopyWith<$Res> {
  __$ChequeDtoOutputCopyWithImpl(this._self, this._then);

  final _ChequeDtoOutput _self;
  final $Res Function(_ChequeDtoOutput) _then;

/// Create a copy of ChequeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? bank = freezed,Object? chequeDate = freezed,Object? amount = null,Object? status = null,Object? customer = null,Object? receipt = null,Object? depositAccount = freezed,Object? decidedAt = freezed,Object? note = freezed,}) {
  return _then(_ChequeDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,bank: freezed == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as String?,chequeDate: freezed == chequeDate ? _self.chequeDate : chequeDate // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChequeDtoOutputStatus,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer5,receipt: null == receipt ? _self.receipt : receipt // ignore: cast_nullable_to_non_nullable
as Receipt,depositAccount: freezed == depositAccount ? _self.depositAccount : depositAccount // ignore: cast_nullable_to_non_nullable
as DepositAccount?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChequeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer5CopyWith<$Res> get customer {
  
  return $Customer5CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of ChequeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReceiptCopyWith<$Res> get receipt {
  
  return $ReceiptCopyWith<$Res>(_self.receipt, (value) {
    return _then(_self.copyWith(receipt: value));
  });
}/// Create a copy of ChequeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepositAccountCopyWith<$Res>? get depositAccount {
    if (_self.depositAccount == null) {
    return null;
  }

  return $DepositAccountCopyWith<$Res>(_self.depositAccount!, (value) {
    return _then(_self.copyWith(depositAccount: value));
  });
}
}

// dart format on
