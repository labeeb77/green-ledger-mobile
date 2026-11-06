// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_bill_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesBillDtoOutput {

 String get id; String? get number; DateTime get billDate; DateTime get dueDate; Customer2 get customer; int get subtotal; int get rounding; int get total; int get paid; int get open; SalesBillDtoOutputPaymentStatus get paymentStatus; SalesBillDtoOutputStatus get status; List<SalesBillDtoOutputIssuesUnion> get issues; String? get approvalId; String? get notes; CreatedBy5? get createdBy; DateTime get createdAt; String? get cancelReason; List<Lines13> get lines; List<Allocations5> get allocations; List<String> get warnings;
/// Create a copy of SalesBillDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesBillDtoOutputCopyWith<SalesBillDtoOutput> get copyWith => _$SalesBillDtoOutputCopyWithImpl<SalesBillDtoOutput>(this as SalesBillDtoOutput, _$identity);

  /// Serializes this SalesBillDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SalesBillDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesBillDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.billDate, _this.billDate) || other.billDate == _this.billDate)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.customer, _this.customer) || other.customer == _this.customer)&&(identical(other.subtotal, _this.subtotal) || other.subtotal == _this.subtotal)&&(identical(other.rounding, _this.rounding) || other.rounding == _this.rounding)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.paid, _this.paid) || other.paid == _this.paid)&&(identical(other.open, _this.open) || other.open == _this.open)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.issues, _this.issues)&&(identical(other.approvalId, _this.approvalId) || other.approvalId == _this.approvalId)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.createdBy, _this.createdBy) || other.createdBy == _this.createdBy)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&const DeepCollectionEquality().equals(other.allocations, _this.allocations)&&const DeepCollectionEquality().equals(other.warnings, _this.warnings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SalesBillDtoOutput;
  return Object.hashAll([runtimeType,_this.id,_this.number,_this.billDate,_this.dueDate,_this.customer,_this.subtotal,_this.rounding,_this.total,_this.paid,_this.open,_this.paymentStatus,_this.status,const DeepCollectionEquality().hash(_this.issues),_this.approvalId,_this.notes,_this.createdBy,_this.createdAt,_this.cancelReason,const DeepCollectionEquality().hash(_this.lines),const DeepCollectionEquality().hash(_this.allocations),const DeepCollectionEquality().hash(_this.warnings)]);
}

@override
String toString() {
  final _this = this as SalesBillDtoOutput;
  return 'SalesBillDtoOutput(id: ${_this.id}, number: ${_this.number}, billDate: ${_this.billDate}, dueDate: ${_this.dueDate}, customer: ${_this.customer}, subtotal: ${_this.subtotal}, rounding: ${_this.rounding}, total: ${_this.total}, paid: ${_this.paid}, open: ${_this.open}, paymentStatus: ${_this.paymentStatus}, status: ${_this.status}, issues: ${_this.issues}, approvalId: ${_this.approvalId}, notes: ${_this.notes}, createdBy: ${_this.createdBy}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason}, lines: ${_this.lines}, allocations: ${_this.allocations}, warnings: ${_this.warnings})';
}


}

/// @nodoc
abstract mixin class $SalesBillDtoOutputCopyWith<$Res>  {
  factory $SalesBillDtoOutputCopyWith(SalesBillDtoOutput value, $Res Function(SalesBillDtoOutput) _then) = _$SalesBillDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String? number, DateTime billDate, DateTime dueDate, Customer2 customer, int subtotal, int rounding, int total, int paid, int open, SalesBillDtoOutputPaymentStatus paymentStatus, SalesBillDtoOutputStatus status, List<SalesBillDtoOutputIssuesUnion> issues, String? approvalId, String? notes, CreatedBy5? createdBy, DateTime createdAt, String? cancelReason, List<Lines13> lines, List<Allocations5> allocations, List<String> warnings
});


$Customer2CopyWith<$Res> get customer;$CreatedBy5CopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$SalesBillDtoOutputCopyWithImpl<$Res>
    implements $SalesBillDtoOutputCopyWith<$Res> {
  _$SalesBillDtoOutputCopyWithImpl(this._self, this._then);

  final SalesBillDtoOutput _self;
  final $Res Function(SalesBillDtoOutput) _then;

/// Create a copy of SalesBillDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = freezed,Object? billDate = null,Object? dueDate = null,Object? customer = null,Object? subtotal = null,Object? rounding = null,Object? total = null,Object? paid = null,Object? open = null,Object? paymentStatus = null,Object? status = null,Object? issues = null,Object? approvalId = freezed,Object? notes = freezed,Object? createdBy = freezed,Object? createdAt = null,Object? cancelReason = freezed,Object? lines = null,Object? allocations = null,Object? warnings = null,}) {
  return _then(SalesBillDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,billDate: null == billDate ? _self.billDate : billDate // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer2,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,rounding: null == rounding ? _self.rounding : rounding // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as SalesBillDtoOutputPaymentStatus,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SalesBillDtoOutputStatus,issues: null == issues ? _self.issues : issues // ignore: cast_nullable_to_non_nullable
as List<SalesBillDtoOutputIssuesUnion>,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy5?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines13>,allocations: null == allocations ? _self.allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations5>,warnings: null == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of SalesBillDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer2CopyWith<$Res> get customer {
  
  return $Customer2CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of SalesBillDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy5CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy5CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [SalesBillDtoOutput].
extension SalesBillDtoOutputPatterns on SalesBillDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesBillDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesBillDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesBillDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SalesBillDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesBillDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SalesBillDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? number,  DateTime billDate,  DateTime dueDate,  Customer2 customer,  int subtotal,  int rounding,  int total,  int paid,  int open,  SalesBillDtoOutputPaymentStatus paymentStatus,  SalesBillDtoOutputStatus status,  List<SalesBillDtoOutputIssuesUnion> issues,  String? approvalId,  String? notes,  CreatedBy5? createdBy,  DateTime createdAt,  String? cancelReason,  List<Lines13> lines,  List<Allocations5> allocations,  List<String> warnings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesBillDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.billDate,_that.dueDate,_that.customer,_that.subtotal,_that.rounding,_that.total,_that.paid,_that.open,_that.paymentStatus,_that.status,_that.issues,_that.approvalId,_that.notes,_that.createdBy,_that.createdAt,_that.cancelReason,_that.lines,_that.allocations,_that.warnings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? number,  DateTime billDate,  DateTime dueDate,  Customer2 customer,  int subtotal,  int rounding,  int total,  int paid,  int open,  SalesBillDtoOutputPaymentStatus paymentStatus,  SalesBillDtoOutputStatus status,  List<SalesBillDtoOutputIssuesUnion> issues,  String? approvalId,  String? notes,  CreatedBy5? createdBy,  DateTime createdAt,  String? cancelReason,  List<Lines13> lines,  List<Allocations5> allocations,  List<String> warnings)  $default,) {final _that = this;
switch (_that) {
case _SalesBillDtoOutput():
return $default(_that.id,_that.number,_that.billDate,_that.dueDate,_that.customer,_that.subtotal,_that.rounding,_that.total,_that.paid,_that.open,_that.paymentStatus,_that.status,_that.issues,_that.approvalId,_that.notes,_that.createdBy,_that.createdAt,_that.cancelReason,_that.lines,_that.allocations,_that.warnings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? number,  DateTime billDate,  DateTime dueDate,  Customer2 customer,  int subtotal,  int rounding,  int total,  int paid,  int open,  SalesBillDtoOutputPaymentStatus paymentStatus,  SalesBillDtoOutputStatus status,  List<SalesBillDtoOutputIssuesUnion> issues,  String? approvalId,  String? notes,  CreatedBy5? createdBy,  DateTime createdAt,  String? cancelReason,  List<Lines13> lines,  List<Allocations5> allocations,  List<String> warnings)?  $default,) {final _that = this;
switch (_that) {
case _SalesBillDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.billDate,_that.dueDate,_that.customer,_that.subtotal,_that.rounding,_that.total,_that.paid,_that.open,_that.paymentStatus,_that.status,_that.issues,_that.approvalId,_that.notes,_that.createdBy,_that.createdAt,_that.cancelReason,_that.lines,_that.allocations,_that.warnings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesBillDtoOutput implements SalesBillDtoOutput {
  const _SalesBillDtoOutput({required this.id, required this.number, required this.billDate, required this.dueDate, required this.customer, required this.subtotal, required this.rounding, required this.total, required this.paid, required this.open, required this.paymentStatus, required this.status, required  List<SalesBillDtoOutputIssuesUnion> issues, required this.approvalId, required this.notes, required this.createdBy, required this.createdAt, required this.cancelReason, required  List<Lines13> lines, required  List<Allocations5> allocations, required  List<String> warnings}): _issues = issues,_lines = lines,_allocations = allocations,_warnings = warnings;
  factory _SalesBillDtoOutput.fromJson(Map<String, dynamic> json) => _$SalesBillDtoOutputFromJson(json);

@override final  String id;
@override final  String? number;
@override final  DateTime billDate;
@override final  DateTime dueDate;
@override final  Customer2 customer;
@override final  int subtotal;
@override final  int rounding;
@override final  int total;
@override final  int paid;
@override final  int open;
@override final  SalesBillDtoOutputPaymentStatus paymentStatus;
@override final  SalesBillDtoOutputStatus status;
 final  List<SalesBillDtoOutputIssuesUnion> _issues;
@override List<SalesBillDtoOutputIssuesUnion> get issues {
  if (_issues is EqualUnmodifiableListView) return _issues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_issues);
}

@override final  String? approvalId;
@override final  String? notes;
@override final  CreatedBy5? createdBy;
@override final  DateTime createdAt;
@override final  String? cancelReason;
 final  List<Lines13> _lines;
@override List<Lines13> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

 final  List<Allocations5> _allocations;
@override List<Allocations5> get allocations {
  if (_allocations is EqualUnmodifiableListView) return _allocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allocations);
}

 final  List<String> _warnings;
@override List<String> get warnings {
  if (_warnings is EqualUnmodifiableListView) return _warnings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warnings);
}


/// Create a copy of SalesBillDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesBillDtoOutputCopyWith<_SalesBillDtoOutput> get copyWith => __$SalesBillDtoOutputCopyWithImpl<_SalesBillDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesBillDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesBillDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.billDate, billDate) || other.billDate == billDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.rounding, rounding) || other.rounding == rounding)&&(identical(other.total, total) || other.total == total)&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.open, open) || other.open == open)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.issues, _issues)&&(identical(other.approvalId, approvalId) || other.approvalId == approvalId)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason)&&const DeepCollectionEquality().equals(other.lines, _lines)&&const DeepCollectionEquality().equals(other.allocations, _allocations)&&const DeepCollectionEquality().equals(other.warnings, _warnings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,number,billDate,dueDate,customer,subtotal,rounding,total,paid,open,paymentStatus,status,const DeepCollectionEquality().hash(_issues),approvalId,notes,createdBy,createdAt,cancelReason,const DeepCollectionEquality().hash(_lines),const DeepCollectionEquality().hash(_allocations),const DeepCollectionEquality().hash(_warnings)]);
}

@override
String toString() {
    return 'SalesBillDtoOutput(id: $id, number: $number, billDate: $billDate, dueDate: $dueDate, customer: $customer, subtotal: $subtotal, rounding: $rounding, total: $total, paid: $paid, open: $open, paymentStatus: $paymentStatus, status: $status, issues: $issues, approvalId: $approvalId, notes: $notes, createdBy: $createdBy, createdAt: $createdAt, cancelReason: $cancelReason, lines: $lines, allocations: $allocations, warnings: $warnings)';
}


}

/// @nodoc
abstract mixin class _$SalesBillDtoOutputCopyWith<$Res> implements $SalesBillDtoOutputCopyWith<$Res> {
  factory _$SalesBillDtoOutputCopyWith(_SalesBillDtoOutput value, $Res Function(_SalesBillDtoOutput) _then) = __$SalesBillDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String? number, DateTime billDate, DateTime dueDate, Customer2 customer, int subtotal, int rounding, int total, int paid, int open, SalesBillDtoOutputPaymentStatus paymentStatus, SalesBillDtoOutputStatus status, List<SalesBillDtoOutputIssuesUnion> issues, String? approvalId, String? notes, CreatedBy5? createdBy, DateTime createdAt, String? cancelReason, List<Lines13> lines, List<Allocations5> allocations, List<String> warnings
});


@override $Customer2CopyWith<$Res> get customer;@override $CreatedBy5CopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$SalesBillDtoOutputCopyWithImpl<$Res>
    implements _$SalesBillDtoOutputCopyWith<$Res> {
  __$SalesBillDtoOutputCopyWithImpl(this._self, this._then);

  final _SalesBillDtoOutput _self;
  final $Res Function(_SalesBillDtoOutput) _then;

/// Create a copy of SalesBillDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = freezed,Object? billDate = null,Object? dueDate = null,Object? customer = null,Object? subtotal = null,Object? rounding = null,Object? total = null,Object? paid = null,Object? open = null,Object? paymentStatus = null,Object? status = null,Object? issues = null,Object? approvalId = freezed,Object? notes = freezed,Object? createdBy = freezed,Object? createdAt = null,Object? cancelReason = freezed,Object? lines = null,Object? allocations = null,Object? warnings = null,}) {
  return _then(_SalesBillDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,billDate: null == billDate ? _self.billDate : billDate // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer2,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,rounding: null == rounding ? _self.rounding : rounding // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,paid: null == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as SalesBillDtoOutputPaymentStatus,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SalesBillDtoOutputStatus,issues: null == issues ? _self._issues : issues // ignore: cast_nullable_to_non_nullable
as List<SalesBillDtoOutputIssuesUnion>,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy5?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines13>,allocations: null == allocations ? _self._allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations5>,warnings: null == warnings ? _self._warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of SalesBillDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer2CopyWith<$Res> get customer {
  
  return $Customer2CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of SalesBillDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy5CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy5CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}

// dart format on
