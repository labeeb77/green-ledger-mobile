// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_bill_summary_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseBillSummaryDtoOutput {

 String get id; String get number; Supplier2 get supplier; DateTime get billDate; DateTime get dueDate; String? get supplierInvoiceNo; int get adjustment; int get total; int get paid; int get open; PurchaseBillSummaryDtoOutputPaymentStatus get paymentStatus; PurchaseBillSummaryDtoOutputStatus get status; String? get notes; DateTime get createdAt; String? get cancelReason;
/// Create a copy of PurchaseBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseBillSummaryDtoOutputCopyWith<PurchaseBillSummaryDtoOutput> get copyWith => _$PurchaseBillSummaryDtoOutputCopyWithImpl<PurchaseBillSummaryDtoOutput>(this as PurchaseBillSummaryDtoOutput, _$identity);

  /// Serializes this PurchaseBillSummaryDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PurchaseBillSummaryDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseBillSummaryDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.supplier, _this.supplier) || other.supplier == _this.supplier)&&(identical(other.billDate, _this.billDate) || other.billDate == _this.billDate)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.supplierInvoiceNo, _this.supplierInvoiceNo) || other.supplierInvoiceNo == _this.supplierInvoiceNo)&&(identical(other.adjustment, _this.adjustment) || other.adjustment == _this.adjustment)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.paid, _this.paid) || other.paid == _this.paid)&&(identical(other.open, _this.open) || other.open == _this.open)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PurchaseBillSummaryDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.supplier,_this.billDate,_this.dueDate,_this.supplierInvoiceNo,_this.adjustment,_this.total,_this.paid,_this.open,_this.paymentStatus,_this.status,_this.notes,_this.createdAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as PurchaseBillSummaryDtoOutput;
  return 'PurchaseBillSummaryDtoOutput(id: ${_this.id}, number: ${_this.number}, supplier: ${_this.supplier}, billDate: ${_this.billDate}, dueDate: ${_this.dueDate}, supplierInvoiceNo: ${_this.supplierInvoiceNo}, adjustment: ${_this.adjustment}, total: ${_this.total}, paid: ${_this.paid}, open: ${_this.open}, paymentStatus: ${_this.paymentStatus}, status: ${_this.status}, notes: ${_this.notes}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $PurchaseBillSummaryDtoOutputCopyWith<$Res>  {
  factory $PurchaseBillSummaryDtoOutputCopyWith(PurchaseBillSummaryDtoOutput value, $Res Function(PurchaseBillSummaryDtoOutput) _then) = _$PurchaseBillSummaryDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String number, Supplier2 supplier, DateTime billDate, DateTime dueDate, String? supplierInvoiceNo, int adjustment, int total, int paid, int open, PurchaseBillSummaryDtoOutputPaymentStatus paymentStatus, PurchaseBillSummaryDtoOutputStatus status, String? notes, DateTime createdAt, String? cancelReason
});


$Supplier2CopyWith<$Res> get supplier;

}
/// @nodoc
class _$PurchaseBillSummaryDtoOutputCopyWithImpl<$Res>
    implements $PurchaseBillSummaryDtoOutputCopyWith<$Res> {
  _$PurchaseBillSummaryDtoOutputCopyWithImpl(this._self, this._then);

  final PurchaseBillSummaryDtoOutput _self;
  final $Res Function(PurchaseBillSummaryDtoOutput) _then;

/// Create a copy of PurchaseBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? supplier = null,Object? billDate = null,Object? dueDate = null,Object? supplierInvoiceNo = freezed,Object? adjustment = null,Object? total = null,Object? paid = null,Object? open = null,Object? paymentStatus = null,Object? status = null,Object? notes = freezed,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(PurchaseBillSummaryDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,supplier: null == supplier ? _self.supplier : supplier // ignore: cast_nullable_to_non_nullable
as Supplier2,billDate: null == billDate ? _self.billDate : billDate // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,supplierInvoiceNo: freezed == supplierInvoiceNo ? _self.supplierInvoiceNo : supplierInvoiceNo // ignore: cast_nullable_to_non_nullable
as String?,adjustment: null == adjustment ? _self.adjustment : adjustment // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PurchaseBillSummaryDtoOutputPaymentStatus,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PurchaseBillSummaryDtoOutputStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PurchaseBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Supplier2CopyWith<$Res> get supplier {
  
  return $Supplier2CopyWith<$Res>(_self.supplier, (value) {
    return _then(_self.copyWith(supplier: value));
  });
}
}


/// Adds pattern-matching-related methods to [PurchaseBillSummaryDtoOutput].
extension PurchaseBillSummaryDtoOutputPatterns on PurchaseBillSummaryDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseBillSummaryDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseBillSummaryDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseBillSummaryDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseBillSummaryDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseBillSummaryDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseBillSummaryDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  Supplier2 supplier,  DateTime billDate,  DateTime dueDate,  String? supplierInvoiceNo,  int adjustment,  int total,  int paid,  int open,  PurchaseBillSummaryDtoOutputPaymentStatus paymentStatus,  PurchaseBillSummaryDtoOutputStatus status,  String? notes,  DateTime createdAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseBillSummaryDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.supplier,_that.billDate,_that.dueDate,_that.supplierInvoiceNo,_that.adjustment,_that.total,_that.paid,_that.open,_that.paymentStatus,_that.status,_that.notes,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  Supplier2 supplier,  DateTime billDate,  DateTime dueDate,  String? supplierInvoiceNo,  int adjustment,  int total,  int paid,  int open,  PurchaseBillSummaryDtoOutputPaymentStatus paymentStatus,  PurchaseBillSummaryDtoOutputStatus status,  String? notes,  DateTime createdAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _PurchaseBillSummaryDtoOutput():
return $default(_that.id,_that.number,_that.supplier,_that.billDate,_that.dueDate,_that.supplierInvoiceNo,_that.adjustment,_that.total,_that.paid,_that.open,_that.paymentStatus,_that.status,_that.notes,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  Supplier2 supplier,  DateTime billDate,  DateTime dueDate,  String? supplierInvoiceNo,  int adjustment,  int total,  int paid,  int open,  PurchaseBillSummaryDtoOutputPaymentStatus paymentStatus,  PurchaseBillSummaryDtoOutputStatus status,  String? notes,  DateTime createdAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseBillSummaryDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.supplier,_that.billDate,_that.dueDate,_that.supplierInvoiceNo,_that.adjustment,_that.total,_that.paid,_that.open,_that.paymentStatus,_that.status,_that.notes,_that.createdAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseBillSummaryDtoOutput implements PurchaseBillSummaryDtoOutput {
  const _PurchaseBillSummaryDtoOutput({required this.id, required this.number, required this.supplier, required this.billDate, required this.dueDate, required this.supplierInvoiceNo, required this.adjustment, required this.total, required this.paid, required this.open, required this.paymentStatus, required this.status, required this.notes, required this.createdAt, required this.cancelReason});
  factory _PurchaseBillSummaryDtoOutput.fromJson(Map<String, dynamic> json) => _$PurchaseBillSummaryDtoOutputFromJson(json);

@override final  String id;
@override final  String number;
@override final  Supplier2 supplier;
@override final  DateTime billDate;
@override final  DateTime dueDate;
@override final  String? supplierInvoiceNo;
@override final  int adjustment;
@override final  int total;
@override final  int paid;
@override final  int open;
@override final  PurchaseBillSummaryDtoOutputPaymentStatus paymentStatus;
@override final  PurchaseBillSummaryDtoOutputStatus status;
@override final  String? notes;
@override final  DateTime createdAt;
@override final  String? cancelReason;

/// Create a copy of PurchaseBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseBillSummaryDtoOutputCopyWith<_PurchaseBillSummaryDtoOutput> get copyWith => __$PurchaseBillSummaryDtoOutputCopyWithImpl<_PurchaseBillSummaryDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseBillSummaryDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseBillSummaryDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.supplier, supplier) || other.supplier == supplier)&&(identical(other.billDate, billDate) || other.billDate == billDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.supplierInvoiceNo, supplierInvoiceNo) || other.supplierInvoiceNo == supplierInvoiceNo)&&(identical(other.adjustment, adjustment) || other.adjustment == adjustment)&&(identical(other.total, total) || other.total == total)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.open, open) || other.open == open)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,supplier,billDate,dueDate,supplierInvoiceNo,adjustment,total,paid,open,paymentStatus,status,notes,createdAt,cancelReason);
}

@override
String toString() {
    return 'PurchaseBillSummaryDtoOutput(id: $id, number: $number, supplier: $supplier, billDate: $billDate, dueDate: $dueDate, supplierInvoiceNo: $supplierInvoiceNo, adjustment: $adjustment, total: $total, paid: $paid, open: $open, paymentStatus: $paymentStatus, status: $status, notes: $notes, createdAt: $createdAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$PurchaseBillSummaryDtoOutputCopyWith<$Res> implements $PurchaseBillSummaryDtoOutputCopyWith<$Res> {
  factory _$PurchaseBillSummaryDtoOutputCopyWith(_PurchaseBillSummaryDtoOutput value, $Res Function(_PurchaseBillSummaryDtoOutput) _then) = __$PurchaseBillSummaryDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, Supplier2 supplier, DateTime billDate, DateTime dueDate, String? supplierInvoiceNo, int adjustment, int total, int paid, int open, PurchaseBillSummaryDtoOutputPaymentStatus paymentStatus, PurchaseBillSummaryDtoOutputStatus status, String? notes, DateTime createdAt, String? cancelReason
});


@override $Supplier2CopyWith<$Res> get supplier;

}
/// @nodoc
class __$PurchaseBillSummaryDtoOutputCopyWithImpl<$Res>
    implements _$PurchaseBillSummaryDtoOutputCopyWith<$Res> {
  __$PurchaseBillSummaryDtoOutputCopyWithImpl(this._self, this._then);

  final _PurchaseBillSummaryDtoOutput _self;
  final $Res Function(_PurchaseBillSummaryDtoOutput) _then;

/// Create a copy of PurchaseBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? supplier = null,Object? billDate = null,Object? dueDate = null,Object? supplierInvoiceNo = freezed,Object? adjustment = null,Object? total = null,Object? paid = null,Object? open = null,Object? paymentStatus = null,Object? status = null,Object? notes = freezed,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(_PurchaseBillSummaryDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,supplier: null == supplier ? _self.supplier : supplier // ignore: cast_nullable_to_non_nullable
as Supplier2,billDate: null == billDate ? _self.billDate : billDate // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,supplierInvoiceNo: freezed == supplierInvoiceNo ? _self.supplierInvoiceNo : supplierInvoiceNo // ignore: cast_nullable_to_non_nullable
as String?,adjustment: null == adjustment ? _self.adjustment : adjustment // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PurchaseBillSummaryDtoOutputPaymentStatus,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PurchaseBillSummaryDtoOutputStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PurchaseBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Supplier2CopyWith<$Res> get supplier {
  
  return $Supplier2CopyWith<$Res>(_self.supplier, (value) {
    return _then(_self.copyWith(supplier: value));
  });
}
}

// dart format on
