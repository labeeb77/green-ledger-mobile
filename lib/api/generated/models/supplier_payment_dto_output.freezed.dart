// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_payment_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupplierPaymentDtoOutput {

 String get id; String get number; Supplier4 get supplier; DateTime get paymentDate; int get total; SupplierPaymentDtoOutputStatus get status; String? get notes; List<Splits> get splits; List<Allocations2> get allocations; int get unallocated; DateTime get createdAt; String? get cancelReason;
/// Create a copy of SupplierPaymentDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupplierPaymentDtoOutputCopyWith<SupplierPaymentDtoOutput> get copyWith => _$SupplierPaymentDtoOutputCopyWithImpl<SupplierPaymentDtoOutput>(this as SupplierPaymentDtoOutput, _$identity);

  /// Serializes this SupplierPaymentDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SupplierPaymentDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupplierPaymentDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.supplier, _this.supplier) || other.supplier == _this.supplier)&&(identical(other.paymentDate, _this.paymentDate) || other.paymentDate == _this.paymentDate)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&const DeepCollectionEquality().equals(other.splits, _this.splits)&&const DeepCollectionEquality().equals(other.allocations, _this.allocations)&&(identical(other.unallocated, _this.unallocated) || other.unallocated == _this.unallocated)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SupplierPaymentDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.supplier,_this.paymentDate,_this.total,_this.status,_this.notes,const DeepCollectionEquality().hash(_this.splits),const DeepCollectionEquality().hash(_this.allocations),_this.unallocated,_this.createdAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as SupplierPaymentDtoOutput;
  return 'SupplierPaymentDtoOutput(id: ${_this.id}, number: ${_this.number}, supplier: ${_this.supplier}, paymentDate: ${_this.paymentDate}, total: ${_this.total}, status: ${_this.status}, notes: ${_this.notes}, splits: ${_this.splits}, allocations: ${_this.allocations}, unallocated: ${_this.unallocated}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $SupplierPaymentDtoOutputCopyWith<$Res>  {
  factory $SupplierPaymentDtoOutputCopyWith(SupplierPaymentDtoOutput value, $Res Function(SupplierPaymentDtoOutput) _then) = _$SupplierPaymentDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String number, Supplier4 supplier, DateTime paymentDate, int total, SupplierPaymentDtoOutputStatus status, String? notes, List<Splits> splits, List<Allocations2> allocations, int unallocated, DateTime createdAt, String? cancelReason
});


$Supplier4CopyWith<$Res> get supplier;

}
/// @nodoc
class _$SupplierPaymentDtoOutputCopyWithImpl<$Res>
    implements $SupplierPaymentDtoOutputCopyWith<$Res> {
  _$SupplierPaymentDtoOutputCopyWithImpl(this._self, this._then);

  final SupplierPaymentDtoOutput _self;
  final $Res Function(SupplierPaymentDtoOutput) _then;

/// Create a copy of SupplierPaymentDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? supplier = null,Object? paymentDate = null,Object? total = null,Object? status = null,Object? notes = freezed,Object? splits = null,Object? allocations = null,Object? unallocated = null,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(SupplierPaymentDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,supplier: null == supplier ? _self.supplier : supplier // ignore: cast_nullable_to_non_nullable
as Supplier4,paymentDate: null == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as DateTime,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupplierPaymentDtoOutputStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,splits: null == splits ? _self.splits : splits // ignore: cast_nullable_to_non_nullable
as List<Splits>,allocations: null == allocations ? _self.allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations2>,unallocated: null == unallocated ? _self.unallocated : unallocated // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SupplierPaymentDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Supplier4CopyWith<$Res> get supplier {
  
  return $Supplier4CopyWith<$Res>(_self.supplier, (value) {
    return _then(_self.copyWith(supplier: value));
  });
}
}


/// Adds pattern-matching-related methods to [SupplierPaymentDtoOutput].
extension SupplierPaymentDtoOutputPatterns on SupplierPaymentDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupplierPaymentDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupplierPaymentDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupplierPaymentDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SupplierPaymentDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupplierPaymentDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SupplierPaymentDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  Supplier4 supplier,  DateTime paymentDate,  int total,  SupplierPaymentDtoOutputStatus status,  String? notes,  List<Splits> splits,  List<Allocations2> allocations,  int unallocated,  DateTime createdAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupplierPaymentDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.supplier,_that.paymentDate,_that.total,_that.status,_that.notes,_that.splits,_that.allocations,_that.unallocated,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  Supplier4 supplier,  DateTime paymentDate,  int total,  SupplierPaymentDtoOutputStatus status,  String? notes,  List<Splits> splits,  List<Allocations2> allocations,  int unallocated,  DateTime createdAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _SupplierPaymentDtoOutput():
return $default(_that.id,_that.number,_that.supplier,_that.paymentDate,_that.total,_that.status,_that.notes,_that.splits,_that.allocations,_that.unallocated,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  Supplier4 supplier,  DateTime paymentDate,  int total,  SupplierPaymentDtoOutputStatus status,  String? notes,  List<Splits> splits,  List<Allocations2> allocations,  int unallocated,  DateTime createdAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _SupplierPaymentDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.supplier,_that.paymentDate,_that.total,_that.status,_that.notes,_that.splits,_that.allocations,_that.unallocated,_that.createdAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupplierPaymentDtoOutput implements SupplierPaymentDtoOutput {
  const _SupplierPaymentDtoOutput({required this.id, required this.number, required this.supplier, required this.paymentDate, required this.total, required this.status, required this.notes, required  List<Splits> splits, required  List<Allocations2> allocations, required this.unallocated, required this.createdAt, required this.cancelReason}): _splits = splits,_allocations = allocations;
  factory _SupplierPaymentDtoOutput.fromJson(Map<String, dynamic> json) => _$SupplierPaymentDtoOutputFromJson(json);

@override final  String id;
@override final  String number;
@override final  Supplier4 supplier;
@override final  DateTime paymentDate;
@override final  int total;
@override final  SupplierPaymentDtoOutputStatus status;
@override final  String? notes;
 final  List<Splits> _splits;
@override List<Splits> get splits {
  if (_splits is EqualUnmodifiableListView) return _splits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_splits);
}

 final  List<Allocations2> _allocations;
@override List<Allocations2> get allocations {
  if (_allocations is EqualUnmodifiableListView) return _allocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allocations);
}

@override final  int unallocated;
@override final  DateTime createdAt;
@override final  String? cancelReason;

/// Create a copy of SupplierPaymentDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupplierPaymentDtoOutputCopyWith<_SupplierPaymentDtoOutput> get copyWith => __$SupplierPaymentDtoOutputCopyWithImpl<_SupplierPaymentDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupplierPaymentDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupplierPaymentDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.supplier, supplier) || other.supplier == supplier)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.total, total) || other.total == total)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.splits, _splits)&&const DeepCollectionEquality().equals(other.allocations, _allocations)&&(identical(other.unallocated, unallocated) || other.unallocated == unallocated)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,supplier,paymentDate,total,status,notes,const DeepCollectionEquality().hash(_splits),const DeepCollectionEquality().hash(_allocations),unallocated,createdAt,cancelReason);
}

@override
String toString() {
    return 'SupplierPaymentDtoOutput(id: $id, number: $number, supplier: $supplier, paymentDate: $paymentDate, total: $total, status: $status, notes: $notes, splits: $splits, allocations: $allocations, unallocated: $unallocated, createdAt: $createdAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$SupplierPaymentDtoOutputCopyWith<$Res> implements $SupplierPaymentDtoOutputCopyWith<$Res> {
  factory _$SupplierPaymentDtoOutputCopyWith(_SupplierPaymentDtoOutput value, $Res Function(_SupplierPaymentDtoOutput) _then) = __$SupplierPaymentDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, Supplier4 supplier, DateTime paymentDate, int total, SupplierPaymentDtoOutputStatus status, String? notes, List<Splits> splits, List<Allocations2> allocations, int unallocated, DateTime createdAt, String? cancelReason
});


@override $Supplier4CopyWith<$Res> get supplier;

}
/// @nodoc
class __$SupplierPaymentDtoOutputCopyWithImpl<$Res>
    implements _$SupplierPaymentDtoOutputCopyWith<$Res> {
  __$SupplierPaymentDtoOutputCopyWithImpl(this._self, this._then);

  final _SupplierPaymentDtoOutput _self;
  final $Res Function(_SupplierPaymentDtoOutput) _then;

/// Create a copy of SupplierPaymentDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? supplier = null,Object? paymentDate = null,Object? total = null,Object? status = null,Object? notes = freezed,Object? splits = null,Object? allocations = null,Object? unallocated = null,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(_SupplierPaymentDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,supplier: null == supplier ? _self.supplier : supplier // ignore: cast_nullable_to_non_nullable
as Supplier4,paymentDate: null == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as DateTime,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupplierPaymentDtoOutputStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,splits: null == splits ? _self._splits : splits // ignore: cast_nullable_to_non_nullable
as List<Splits>,allocations: null == allocations ? _self._allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations2>,unallocated: null == unallocated ? _self.unallocated : unallocated // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SupplierPaymentDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Supplier4CopyWith<$Res> get supplier {
  
  return $Supplier4CopyWith<$Res>(_self.supplier, (value) {
    return _then(_self.copyWith(supplier: value));
  });
}
}

// dart format on
