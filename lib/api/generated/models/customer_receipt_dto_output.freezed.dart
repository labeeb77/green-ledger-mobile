// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_receipt_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerReceiptDtoOutput {

 String get id; String get number; Customer3 get customer; DateTime get receiptDate; CollectedBy get collectedBy; int get total; CustomerReceiptDtoOutputStatus get status; String? get notes; List<Splits3> get splits; List<Allocations6> get allocations; int get unallocated; DateTime get createdAt; String? get cancelReason;
/// Create a copy of CustomerReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerReceiptDtoOutputCopyWith<CustomerReceiptDtoOutput> get copyWith => _$CustomerReceiptDtoOutputCopyWithImpl<CustomerReceiptDtoOutput>(this as CustomerReceiptDtoOutput, _$identity);

  /// Serializes this CustomerReceiptDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CustomerReceiptDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerReceiptDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.customer, _this.customer) || other.customer == _this.customer)&&(identical(other.receiptDate, _this.receiptDate) || other.receiptDate == _this.receiptDate)&&(identical(other.collectedBy, _this.collectedBy) || other.collectedBy == _this.collectedBy)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&const DeepCollectionEquality().equals(other.splits, _this.splits)&&const DeepCollectionEquality().equals(other.allocations, _this.allocations)&&(identical(other.unallocated, _this.unallocated) || other.unallocated == _this.unallocated)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CustomerReceiptDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.customer,_this.receiptDate,_this.collectedBy,_this.total,_this.status,_this.notes,const DeepCollectionEquality().hash(_this.splits),const DeepCollectionEquality().hash(_this.allocations),_this.unallocated,_this.createdAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as CustomerReceiptDtoOutput;
  return 'CustomerReceiptDtoOutput(id: ${_this.id}, number: ${_this.number}, customer: ${_this.customer}, receiptDate: ${_this.receiptDate}, collectedBy: ${_this.collectedBy}, total: ${_this.total}, status: ${_this.status}, notes: ${_this.notes}, splits: ${_this.splits}, allocations: ${_this.allocations}, unallocated: ${_this.unallocated}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $CustomerReceiptDtoOutputCopyWith<$Res>  {
  factory $CustomerReceiptDtoOutputCopyWith(CustomerReceiptDtoOutput value, $Res Function(CustomerReceiptDtoOutput) _then) = _$CustomerReceiptDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String number, Customer3 customer, DateTime receiptDate, CollectedBy collectedBy, int total, CustomerReceiptDtoOutputStatus status, String? notes, List<Splits3> splits, List<Allocations6> allocations, int unallocated, DateTime createdAt, String? cancelReason
});


$Customer3CopyWith<$Res> get customer;$CollectedByCopyWith<$Res> get collectedBy;

}
/// @nodoc
class _$CustomerReceiptDtoOutputCopyWithImpl<$Res>
    implements $CustomerReceiptDtoOutputCopyWith<$Res> {
  _$CustomerReceiptDtoOutputCopyWithImpl(this._self, this._then);

  final CustomerReceiptDtoOutput _self;
  final $Res Function(CustomerReceiptDtoOutput) _then;

/// Create a copy of CustomerReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? customer = null,Object? receiptDate = null,Object? collectedBy = null,Object? total = null,Object? status = null,Object? notes = freezed,Object? splits = null,Object? allocations = null,Object? unallocated = null,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(CustomerReceiptDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer3,receiptDate: null == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime,collectedBy: null == collectedBy ? _self.collectedBy : collectedBy // ignore: cast_nullable_to_non_nullable
as CollectedBy,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomerReceiptDtoOutputStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,splits: null == splits ? _self.splits : splits // ignore: cast_nullable_to_non_nullable
as List<Splits3>,allocations: null == allocations ? _self.allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations6>,unallocated: null == unallocated ? _self.unallocated : unallocated // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CustomerReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer3CopyWith<$Res> get customer {
  
  return $Customer3CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of CustomerReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectedByCopyWith<$Res> get collectedBy {
  
  return $CollectedByCopyWith<$Res>(_self.collectedBy, (value) {
    return _then(_self.copyWith(collectedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerReceiptDtoOutput].
extension CustomerReceiptDtoOutputPatterns on CustomerReceiptDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerReceiptDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerReceiptDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerReceiptDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _CustomerReceiptDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerReceiptDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerReceiptDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  Customer3 customer,  DateTime receiptDate,  CollectedBy collectedBy,  int total,  CustomerReceiptDtoOutputStatus status,  String? notes,  List<Splits3> splits,  List<Allocations6> allocations,  int unallocated,  DateTime createdAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerReceiptDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.customer,_that.receiptDate,_that.collectedBy,_that.total,_that.status,_that.notes,_that.splits,_that.allocations,_that.unallocated,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  Customer3 customer,  DateTime receiptDate,  CollectedBy collectedBy,  int total,  CustomerReceiptDtoOutputStatus status,  String? notes,  List<Splits3> splits,  List<Allocations6> allocations,  int unallocated,  DateTime createdAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _CustomerReceiptDtoOutput():
return $default(_that.id,_that.number,_that.customer,_that.receiptDate,_that.collectedBy,_that.total,_that.status,_that.notes,_that.splits,_that.allocations,_that.unallocated,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  Customer3 customer,  DateTime receiptDate,  CollectedBy collectedBy,  int total,  CustomerReceiptDtoOutputStatus status,  String? notes,  List<Splits3> splits,  List<Allocations6> allocations,  int unallocated,  DateTime createdAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _CustomerReceiptDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.customer,_that.receiptDate,_that.collectedBy,_that.total,_that.status,_that.notes,_that.splits,_that.allocations,_that.unallocated,_that.createdAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerReceiptDtoOutput implements CustomerReceiptDtoOutput {
  const _CustomerReceiptDtoOutput({required this.id, required this.number, required this.customer, required this.receiptDate, required this.collectedBy, required this.total, required this.status, required this.notes, required  List<Splits3> splits, required  List<Allocations6> allocations, required this.unallocated, required this.createdAt, required this.cancelReason}): _splits = splits,_allocations = allocations;
  factory _CustomerReceiptDtoOutput.fromJson(Map<String, dynamic> json) => _$CustomerReceiptDtoOutputFromJson(json);

@override final  String id;
@override final  String number;
@override final  Customer3 customer;
@override final  DateTime receiptDate;
@override final  CollectedBy collectedBy;
@override final  int total;
@override final  CustomerReceiptDtoOutputStatus status;
@override final  String? notes;
 final  List<Splits3> _splits;
@override List<Splits3> get splits {
  if (_splits is EqualUnmodifiableListView) return _splits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_splits);
}

 final  List<Allocations6> _allocations;
@override List<Allocations6> get allocations {
  if (_allocations is EqualUnmodifiableListView) return _allocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allocations);
}

@override final  int unallocated;
@override final  DateTime createdAt;
@override final  String? cancelReason;

/// Create a copy of CustomerReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerReceiptDtoOutputCopyWith<_CustomerReceiptDtoOutput> get copyWith => __$CustomerReceiptDtoOutputCopyWithImpl<_CustomerReceiptDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerReceiptDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerReceiptDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.receiptDate, receiptDate) || other.receiptDate == receiptDate)&&(identical(other.collectedBy, collectedBy) || other.collectedBy == collectedBy)&&(identical(other.total, total) || other.total == total)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.splits, _splits)&&const DeepCollectionEquality().equals(other.allocations, _allocations)&&(identical(other.unallocated, unallocated) || other.unallocated == unallocated)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,customer,receiptDate,collectedBy,total,status,notes,const DeepCollectionEquality().hash(_splits),const DeepCollectionEquality().hash(_allocations),unallocated,createdAt,cancelReason);
}

@override
String toString() {
    return 'CustomerReceiptDtoOutput(id: $id, number: $number, customer: $customer, receiptDate: $receiptDate, collectedBy: $collectedBy, total: $total, status: $status, notes: $notes, splits: $splits, allocations: $allocations, unallocated: $unallocated, createdAt: $createdAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$CustomerReceiptDtoOutputCopyWith<$Res> implements $CustomerReceiptDtoOutputCopyWith<$Res> {
  factory _$CustomerReceiptDtoOutputCopyWith(_CustomerReceiptDtoOutput value, $Res Function(_CustomerReceiptDtoOutput) _then) = __$CustomerReceiptDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, Customer3 customer, DateTime receiptDate, CollectedBy collectedBy, int total, CustomerReceiptDtoOutputStatus status, String? notes, List<Splits3> splits, List<Allocations6> allocations, int unallocated, DateTime createdAt, String? cancelReason
});


@override $Customer3CopyWith<$Res> get customer;@override $CollectedByCopyWith<$Res> get collectedBy;

}
/// @nodoc
class __$CustomerReceiptDtoOutputCopyWithImpl<$Res>
    implements _$CustomerReceiptDtoOutputCopyWith<$Res> {
  __$CustomerReceiptDtoOutputCopyWithImpl(this._self, this._then);

  final _CustomerReceiptDtoOutput _self;
  final $Res Function(_CustomerReceiptDtoOutput) _then;

/// Create a copy of CustomerReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? customer = null,Object? receiptDate = null,Object? collectedBy = null,Object? total = null,Object? status = null,Object? notes = freezed,Object? splits = null,Object? allocations = null,Object? unallocated = null,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(_CustomerReceiptDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer3,receiptDate: null == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime,collectedBy: null == collectedBy ? _self.collectedBy : collectedBy // ignore: cast_nullable_to_non_nullable
as CollectedBy,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomerReceiptDtoOutputStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,splits: null == splits ? _self._splits : splits // ignore: cast_nullable_to_non_nullable
as List<Splits3>,allocations: null == allocations ? _self._allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations6>,unallocated: null == unallocated ? _self.unallocated : unallocated // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CustomerReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer3CopyWith<$Res> get customer {
  
  return $Customer3CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of CustomerReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectedByCopyWith<$Res> get collectedBy {
  
  return $CollectedByCopyWith<$Res>(_self.collectedBy, (value) {
    return _then(_self.copyWith(collectedBy: value));
  });
}
}

// dart format on
