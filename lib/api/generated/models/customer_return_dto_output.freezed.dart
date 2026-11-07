// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_return_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerReturnDtoOutput {

 String get id; String? get number; String get returnDate; Customer7 get customer; Bill2? get bill; int? get total; CustomerReturnDtoOutputStatus get status; String? get notes; CreatedBy6? get createdBy; String? get approvalId; List<Lines17> get lines; DateTime get createdAt; String? get cancelReason;
/// Create a copy of CustomerReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerReturnDtoOutputCopyWith<CustomerReturnDtoOutput> get copyWith => _$CustomerReturnDtoOutputCopyWithImpl<CustomerReturnDtoOutput>(this as CustomerReturnDtoOutput, _$identity);

  /// Serializes this CustomerReturnDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CustomerReturnDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerReturnDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.returnDate, _this.returnDate) || other.returnDate == _this.returnDate)&&(identical(other.customer, _this.customer) || other.customer == _this.customer)&&(identical(other.bill, _this.bill) || other.bill == _this.bill)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.createdBy, _this.createdBy) || other.createdBy == _this.createdBy)&&(identical(other.approvalId, _this.approvalId) || other.approvalId == _this.approvalId)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CustomerReturnDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.returnDate,_this.customer,_this.bill,_this.total,_this.status,_this.notes,_this.createdBy,_this.approvalId,const DeepCollectionEquality().hash(_this.lines),_this.createdAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as CustomerReturnDtoOutput;
  return 'CustomerReturnDtoOutput(id: ${_this.id}, number: ${_this.number}, returnDate: ${_this.returnDate}, customer: ${_this.customer}, bill: ${_this.bill}, total: ${_this.total}, status: ${_this.status}, notes: ${_this.notes}, createdBy: ${_this.createdBy}, approvalId: ${_this.approvalId}, lines: ${_this.lines}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $CustomerReturnDtoOutputCopyWith<$Res>  {
  factory $CustomerReturnDtoOutputCopyWith(CustomerReturnDtoOutput value, $Res Function(CustomerReturnDtoOutput) _then) = _$CustomerReturnDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String? number, String returnDate, Customer7 customer, Bill2? bill, int? total, CustomerReturnDtoOutputStatus status, String? notes, CreatedBy6? createdBy, String? approvalId, List<Lines17> lines, DateTime createdAt, String? cancelReason
});


$Customer7CopyWith<$Res> get customer;$Bill2CopyWith<$Res>? get bill;$CreatedBy6CopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$CustomerReturnDtoOutputCopyWithImpl<$Res>
    implements $CustomerReturnDtoOutputCopyWith<$Res> {
  _$CustomerReturnDtoOutputCopyWithImpl(this._self, this._then);

  final CustomerReturnDtoOutput _self;
  final $Res Function(CustomerReturnDtoOutput) _then;

/// Create a copy of CustomerReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = freezed,Object? returnDate = null,Object? customer = null,Object? bill = freezed,Object? total = freezed,Object? status = null,Object? notes = freezed,Object? createdBy = freezed,Object? approvalId = freezed,Object? lines = null,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(CustomerReturnDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,returnDate: null == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer7,bill: freezed == bill ? _self.bill : bill // ignore: cast_nullable_to_non_nullable
as Bill2?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomerReturnDtoOutputStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy6?,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines17>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CustomerReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer7CopyWith<$Res> get customer {
  
  return $Customer7CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of CustomerReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Bill2CopyWith<$Res>? get bill {
    if (_self.bill == null) {
    return null;
  }

  return $Bill2CopyWith<$Res>(_self.bill!, (value) {
    return _then(_self.copyWith(bill: value));
  });
}/// Create a copy of CustomerReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy6CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy6CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerReturnDtoOutput].
extension CustomerReturnDtoOutputPatterns on CustomerReturnDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerReturnDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerReturnDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerReturnDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _CustomerReturnDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerReturnDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerReturnDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? number,  String returnDate,  Customer7 customer,  Bill2? bill,  int? total,  CustomerReturnDtoOutputStatus status,  String? notes,  CreatedBy6? createdBy,  String? approvalId,  List<Lines17> lines,  DateTime createdAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerReturnDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.returnDate,_that.customer,_that.bill,_that.total,_that.status,_that.notes,_that.createdBy,_that.approvalId,_that.lines,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? number,  String returnDate,  Customer7 customer,  Bill2? bill,  int? total,  CustomerReturnDtoOutputStatus status,  String? notes,  CreatedBy6? createdBy,  String? approvalId,  List<Lines17> lines,  DateTime createdAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _CustomerReturnDtoOutput():
return $default(_that.id,_that.number,_that.returnDate,_that.customer,_that.bill,_that.total,_that.status,_that.notes,_that.createdBy,_that.approvalId,_that.lines,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? number,  String returnDate,  Customer7 customer,  Bill2? bill,  int? total,  CustomerReturnDtoOutputStatus status,  String? notes,  CreatedBy6? createdBy,  String? approvalId,  List<Lines17> lines,  DateTime createdAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _CustomerReturnDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.returnDate,_that.customer,_that.bill,_that.total,_that.status,_that.notes,_that.createdBy,_that.approvalId,_that.lines,_that.createdAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerReturnDtoOutput implements CustomerReturnDtoOutput {
  const _CustomerReturnDtoOutput({required this.id, required this.number, required this.returnDate, required this.customer, required this.bill, required this.total, required this.status, required this.notes, required this.createdBy, required this.approvalId, required  List<Lines17> lines, required this.createdAt, required this.cancelReason}): _lines = lines;
  factory _CustomerReturnDtoOutput.fromJson(Map<String, dynamic> json) => _$CustomerReturnDtoOutputFromJson(json);

@override final  String id;
@override final  String? number;
@override final  String returnDate;
@override final  Customer7 customer;
@override final  Bill2? bill;
@override final  int? total;
@override final  CustomerReturnDtoOutputStatus status;
@override final  String? notes;
@override final  CreatedBy6? createdBy;
@override final  String? approvalId;
 final  List<Lines17> _lines;
@override List<Lines17> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  DateTime createdAt;
@override final  String? cancelReason;

/// Create a copy of CustomerReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerReturnDtoOutputCopyWith<_CustomerReturnDtoOutput> get copyWith => __$CustomerReturnDtoOutputCopyWithImpl<_CustomerReturnDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerReturnDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerReturnDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.bill, bill) || other.bill == bill)&&(identical(other.total, total) || other.total == total)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.approvalId, approvalId) || other.approvalId == approvalId)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,returnDate,customer,bill,total,status,notes,createdBy,approvalId,const DeepCollectionEquality().hash(_lines),createdAt,cancelReason);
}

@override
String toString() {
    return 'CustomerReturnDtoOutput(id: $id, number: $number, returnDate: $returnDate, customer: $customer, bill: $bill, total: $total, status: $status, notes: $notes, createdBy: $createdBy, approvalId: $approvalId, lines: $lines, createdAt: $createdAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$CustomerReturnDtoOutputCopyWith<$Res> implements $CustomerReturnDtoOutputCopyWith<$Res> {
  factory _$CustomerReturnDtoOutputCopyWith(_CustomerReturnDtoOutput value, $Res Function(_CustomerReturnDtoOutput) _then) = __$CustomerReturnDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String? number, String returnDate, Customer7 customer, Bill2? bill, int? total, CustomerReturnDtoOutputStatus status, String? notes, CreatedBy6? createdBy, String? approvalId, List<Lines17> lines, DateTime createdAt, String? cancelReason
});


@override $Customer7CopyWith<$Res> get customer;@override $Bill2CopyWith<$Res>? get bill;@override $CreatedBy6CopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$CustomerReturnDtoOutputCopyWithImpl<$Res>
    implements _$CustomerReturnDtoOutputCopyWith<$Res> {
  __$CustomerReturnDtoOutputCopyWithImpl(this._self, this._then);

  final _CustomerReturnDtoOutput _self;
  final $Res Function(_CustomerReturnDtoOutput) _then;

/// Create a copy of CustomerReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = freezed,Object? returnDate = null,Object? customer = null,Object? bill = freezed,Object? total = freezed,Object? status = null,Object? notes = freezed,Object? createdBy = freezed,Object? approvalId = freezed,Object? lines = null,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(_CustomerReturnDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,returnDate: null == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer7,bill: freezed == bill ? _self.bill : bill // ignore: cast_nullable_to_non_nullable
as Bill2?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomerReturnDtoOutputStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy6?,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines17>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CustomerReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer7CopyWith<$Res> get customer {
  
  return $Customer7CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of CustomerReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Bill2CopyWith<$Res>? get bill {
    if (_self.bill == null) {
    return null;
  }

  return $Bill2CopyWith<$Res>(_self.bill!, (value) {
    return _then(_self.copyWith(bill: value));
  });
}/// Create a copy of CustomerReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy6CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy6CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}

// dart format on
