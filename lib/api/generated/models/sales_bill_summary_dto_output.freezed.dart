// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_bill_summary_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesBillSummaryDtoOutput {

 String get id; String? get number; String get billDate; String get dueDate; Customer get customer; int get subtotal; int get rounding; int get total; int get paid; int get open; SalesBillSummaryDtoOutputPaymentStatus get paymentStatus; SalesBillSummaryDtoOutputStatus get status; List<SalesBillSummaryDtoOutputIssuesUnion> get issues; String? get approvalId; String? get notes; CreatedBy4? get createdBy; DateTime get createdAt; String? get cancelReason;
/// Create a copy of SalesBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesBillSummaryDtoOutputCopyWith<SalesBillSummaryDtoOutput> get copyWith => _$SalesBillSummaryDtoOutputCopyWithImpl<SalesBillSummaryDtoOutput>(this as SalesBillSummaryDtoOutput, _$identity);

  /// Serializes this SalesBillSummaryDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SalesBillSummaryDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesBillSummaryDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.billDate, _this.billDate) || other.billDate == _this.billDate)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.customer, _this.customer) || other.customer == _this.customer)&&(identical(other.subtotal, _this.subtotal) || other.subtotal == _this.subtotal)&&(identical(other.rounding, _this.rounding) || other.rounding == _this.rounding)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.paid, _this.paid) || other.paid == _this.paid)&&(identical(other.open, _this.open) || other.open == _this.open)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.issues, _this.issues)&&(identical(other.approvalId, _this.approvalId) || other.approvalId == _this.approvalId)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.createdBy, _this.createdBy) || other.createdBy == _this.createdBy)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SalesBillSummaryDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.billDate,_this.dueDate,_this.customer,_this.subtotal,_this.rounding,_this.total,_this.paid,_this.open,_this.paymentStatus,_this.status,const DeepCollectionEquality().hash(_this.issues),_this.approvalId,_this.notes,_this.createdBy,_this.createdAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as SalesBillSummaryDtoOutput;
  return 'SalesBillSummaryDtoOutput(id: ${_this.id}, number: ${_this.number}, billDate: ${_this.billDate}, dueDate: ${_this.dueDate}, customer: ${_this.customer}, subtotal: ${_this.subtotal}, rounding: ${_this.rounding}, total: ${_this.total}, paid: ${_this.paid}, open: ${_this.open}, paymentStatus: ${_this.paymentStatus}, status: ${_this.status}, issues: ${_this.issues}, approvalId: ${_this.approvalId}, notes: ${_this.notes}, createdBy: ${_this.createdBy}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $SalesBillSummaryDtoOutputCopyWith<$Res>  {
  factory $SalesBillSummaryDtoOutputCopyWith(SalesBillSummaryDtoOutput value, $Res Function(SalesBillSummaryDtoOutput) _then) = _$SalesBillSummaryDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String? number, String billDate, String dueDate, Customer customer, int subtotal, int rounding, int total, int paid, int open, SalesBillSummaryDtoOutputPaymentStatus paymentStatus, SalesBillSummaryDtoOutputStatus status, List<SalesBillSummaryDtoOutputIssuesUnion> issues, String? approvalId, String? notes, CreatedBy4? createdBy, DateTime createdAt, String? cancelReason
});


$CustomerCopyWith<$Res> get customer;$CreatedBy4CopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$SalesBillSummaryDtoOutputCopyWithImpl<$Res>
    implements $SalesBillSummaryDtoOutputCopyWith<$Res> {
  _$SalesBillSummaryDtoOutputCopyWithImpl(this._self, this._then);

  final SalesBillSummaryDtoOutput _self;
  final $Res Function(SalesBillSummaryDtoOutput) _then;

/// Create a copy of SalesBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = freezed,Object? billDate = null,Object? dueDate = null,Object? customer = null,Object? subtotal = null,Object? rounding = null,Object? total = null,Object? paid = null,Object? open = null,Object? paymentStatus = null,Object? status = null,Object? issues = null,Object? approvalId = freezed,Object? notes = freezed,Object? createdBy = freezed,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(SalesBillSummaryDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,billDate: null == billDate ? _self.billDate : billDate // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,rounding: null == rounding ? _self.rounding : rounding // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as SalesBillSummaryDtoOutputPaymentStatus,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SalesBillSummaryDtoOutputStatus,issues: null == issues ? _self.issues : issues // ignore: cast_nullable_to_non_nullable
as List<SalesBillSummaryDtoOutputIssuesUnion>,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy4?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SalesBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerCopyWith<$Res> get customer {
  
  return $CustomerCopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of SalesBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy4CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy4CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [SalesBillSummaryDtoOutput].
extension SalesBillSummaryDtoOutputPatterns on SalesBillSummaryDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesBillSummaryDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesBillSummaryDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesBillSummaryDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SalesBillSummaryDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesBillSummaryDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SalesBillSummaryDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? number,  String billDate,  String dueDate,  Customer customer,  int subtotal,  int rounding,  int total,  int paid,  int open,  SalesBillSummaryDtoOutputPaymentStatus paymentStatus,  SalesBillSummaryDtoOutputStatus status,  List<SalesBillSummaryDtoOutputIssuesUnion> issues,  String? approvalId,  String? notes,  CreatedBy4? createdBy,  DateTime createdAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesBillSummaryDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.billDate,_that.dueDate,_that.customer,_that.subtotal,_that.rounding,_that.total,_that.paid,_that.open,_that.paymentStatus,_that.status,_that.issues,_that.approvalId,_that.notes,_that.createdBy,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? number,  String billDate,  String dueDate,  Customer customer,  int subtotal,  int rounding,  int total,  int paid,  int open,  SalesBillSummaryDtoOutputPaymentStatus paymentStatus,  SalesBillSummaryDtoOutputStatus status,  List<SalesBillSummaryDtoOutputIssuesUnion> issues,  String? approvalId,  String? notes,  CreatedBy4? createdBy,  DateTime createdAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _SalesBillSummaryDtoOutput():
return $default(_that.id,_that.number,_that.billDate,_that.dueDate,_that.customer,_that.subtotal,_that.rounding,_that.total,_that.paid,_that.open,_that.paymentStatus,_that.status,_that.issues,_that.approvalId,_that.notes,_that.createdBy,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? number,  String billDate,  String dueDate,  Customer customer,  int subtotal,  int rounding,  int total,  int paid,  int open,  SalesBillSummaryDtoOutputPaymentStatus paymentStatus,  SalesBillSummaryDtoOutputStatus status,  List<SalesBillSummaryDtoOutputIssuesUnion> issues,  String? approvalId,  String? notes,  CreatedBy4? createdBy,  DateTime createdAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _SalesBillSummaryDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.billDate,_that.dueDate,_that.customer,_that.subtotal,_that.rounding,_that.total,_that.paid,_that.open,_that.paymentStatus,_that.status,_that.issues,_that.approvalId,_that.notes,_that.createdBy,_that.createdAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesBillSummaryDtoOutput implements SalesBillSummaryDtoOutput {
  const _SalesBillSummaryDtoOutput({required this.id, required this.number, required this.billDate, required this.dueDate, required this.customer, required this.subtotal, required this.rounding, required this.total, required this.paid, required this.open, required this.paymentStatus, required this.status, required  List<SalesBillSummaryDtoOutputIssuesUnion> issues, required this.approvalId, required this.notes, required this.createdBy, required this.createdAt, required this.cancelReason}): _issues = issues;
  factory _SalesBillSummaryDtoOutput.fromJson(Map<String, dynamic> json) => _$SalesBillSummaryDtoOutputFromJson(json);

@override final  String id;
@override final  String? number;
@override final  String billDate;
@override final  String dueDate;
@override final  Customer customer;
@override final  int subtotal;
@override final  int rounding;
@override final  int total;
@override final  int paid;
@override final  int open;
@override final  SalesBillSummaryDtoOutputPaymentStatus paymentStatus;
@override final  SalesBillSummaryDtoOutputStatus status;
 final  List<SalesBillSummaryDtoOutputIssuesUnion> _issues;
@override List<SalesBillSummaryDtoOutputIssuesUnion> get issues {
  if (_issues is EqualUnmodifiableListView) return _issues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_issues);
}

@override final  String? approvalId;
@override final  String? notes;
@override final  CreatedBy4? createdBy;
@override final  DateTime createdAt;
@override final  String? cancelReason;

/// Create a copy of SalesBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesBillSummaryDtoOutputCopyWith<_SalesBillSummaryDtoOutput> get copyWith => __$SalesBillSummaryDtoOutputCopyWithImpl<_SalesBillSummaryDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesBillSummaryDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesBillSummaryDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.billDate, billDate) || other.billDate == billDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.rounding, rounding) || other.rounding == rounding)&&(identical(other.total, total) || other.total == total)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.open, open) || other.open == open)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.issues, _issues)&&(identical(other.approvalId, approvalId) || other.approvalId == approvalId)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,billDate,dueDate,customer,subtotal,rounding,total,paid,open,paymentStatus,status,const DeepCollectionEquality().hash(_issues),approvalId,notes,createdBy,createdAt,cancelReason);
}

@override
String toString() {
    return 'SalesBillSummaryDtoOutput(id: $id, number: $number, billDate: $billDate, dueDate: $dueDate, customer: $customer, subtotal: $subtotal, rounding: $rounding, total: $total, paid: $paid, open: $open, paymentStatus: $paymentStatus, status: $status, issues: $issues, approvalId: $approvalId, notes: $notes, createdBy: $createdBy, createdAt: $createdAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$SalesBillSummaryDtoOutputCopyWith<$Res> implements $SalesBillSummaryDtoOutputCopyWith<$Res> {
  factory _$SalesBillSummaryDtoOutputCopyWith(_SalesBillSummaryDtoOutput value, $Res Function(_SalesBillSummaryDtoOutput) _then) = __$SalesBillSummaryDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String? number, String billDate, String dueDate, Customer customer, int subtotal, int rounding, int total, int paid, int open, SalesBillSummaryDtoOutputPaymentStatus paymentStatus, SalesBillSummaryDtoOutputStatus status, List<SalesBillSummaryDtoOutputIssuesUnion> issues, String? approvalId, String? notes, CreatedBy4? createdBy, DateTime createdAt, String? cancelReason
});


@override $CustomerCopyWith<$Res> get customer;@override $CreatedBy4CopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$SalesBillSummaryDtoOutputCopyWithImpl<$Res>
    implements _$SalesBillSummaryDtoOutputCopyWith<$Res> {
  __$SalesBillSummaryDtoOutputCopyWithImpl(this._self, this._then);

  final _SalesBillSummaryDtoOutput _self;
  final $Res Function(_SalesBillSummaryDtoOutput) _then;

/// Create a copy of SalesBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = freezed,Object? billDate = null,Object? dueDate = null,Object? customer = null,Object? subtotal = null,Object? rounding = null,Object? total = null,Object? paid = null,Object? open = null,Object? paymentStatus = null,Object? status = null,Object? issues = null,Object? approvalId = freezed,Object? notes = freezed,Object? createdBy = freezed,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(_SalesBillSummaryDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,billDate: null == billDate ? _self.billDate : billDate // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,rounding: null == rounding ? _self.rounding : rounding // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as SalesBillSummaryDtoOutputPaymentStatus,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SalesBillSummaryDtoOutputStatus,issues: null == issues ? _self._issues : issues // ignore: cast_nullable_to_non_nullable
as List<SalesBillSummaryDtoOutputIssuesUnion>,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy4?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SalesBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerCopyWith<$Res> get customer {
  
  return $CustomerCopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of SalesBillSummaryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy4CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy4CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}

// dart format on
