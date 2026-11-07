// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_receipt_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoodsReceiptDtoOutput {

 String get id; String get number; String get receiptDate; Supplier get supplier; String? get vehicleNo; String? get notes; String? get slipPhotoUrl; GoodsReceiptDtoOutputStatus get status; GoodsReceiptDtoOutputBilling get billing; List<Lines> get lines; CreatedBy? get createdBy; DateTime get createdAt; String? get cancelReason;
/// Create a copy of GoodsReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoodsReceiptDtoOutputCopyWith<GoodsReceiptDtoOutput> get copyWith => _$GoodsReceiptDtoOutputCopyWithImpl<GoodsReceiptDtoOutput>(this as GoodsReceiptDtoOutput, _$identity);

  /// Serializes this GoodsReceiptDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GoodsReceiptDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoodsReceiptDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.receiptDate, _this.receiptDate) || other.receiptDate == _this.receiptDate)&&(identical(other.supplier, _this.supplier) || other.supplier == _this.supplier)&&(identical(other.vehicleNo, _this.vehicleNo) || other.vehicleNo == _this.vehicleNo)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.slipPhotoUrl, _this.slipPhotoUrl) || other.slipPhotoUrl == _this.slipPhotoUrl)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.billing, _this.billing) || other.billing == _this.billing)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.createdBy, _this.createdBy) || other.createdBy == _this.createdBy)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GoodsReceiptDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.receiptDate,_this.supplier,_this.vehicleNo,_this.notes,_this.slipPhotoUrl,_this.status,_this.billing,const DeepCollectionEquality().hash(_this.lines),_this.createdBy,_this.createdAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as GoodsReceiptDtoOutput;
  return 'GoodsReceiptDtoOutput(id: ${_this.id}, number: ${_this.number}, receiptDate: ${_this.receiptDate}, supplier: ${_this.supplier}, vehicleNo: ${_this.vehicleNo}, notes: ${_this.notes}, slipPhotoUrl: ${_this.slipPhotoUrl}, status: ${_this.status}, billing: ${_this.billing}, lines: ${_this.lines}, createdBy: ${_this.createdBy}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $GoodsReceiptDtoOutputCopyWith<$Res>  {
  factory $GoodsReceiptDtoOutputCopyWith(GoodsReceiptDtoOutput value, $Res Function(GoodsReceiptDtoOutput) _then) = _$GoodsReceiptDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String number, String receiptDate, Supplier supplier, String? vehicleNo, String? notes, String? slipPhotoUrl, GoodsReceiptDtoOutputStatus status, GoodsReceiptDtoOutputBilling billing, List<Lines> lines, CreatedBy? createdBy, DateTime createdAt, String? cancelReason
});


$SupplierCopyWith<$Res> get supplier;$CreatedByCopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$GoodsReceiptDtoOutputCopyWithImpl<$Res>
    implements $GoodsReceiptDtoOutputCopyWith<$Res> {
  _$GoodsReceiptDtoOutputCopyWithImpl(this._self, this._then);

  final GoodsReceiptDtoOutput _self;
  final $Res Function(GoodsReceiptDtoOutput) _then;

/// Create a copy of GoodsReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? receiptDate = null,Object? supplier = null,Object? vehicleNo = freezed,Object? notes = freezed,Object? slipPhotoUrl = freezed,Object? status = null,Object? billing = null,Object? lines = null,Object? createdBy = freezed,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(GoodsReceiptDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,receiptDate: null == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as String,supplier: null == supplier ? _self.supplier : supplier // ignore: cast_nullable_to_non_nullable
as Supplier,vehicleNo: freezed == vehicleNo ? _self.vehicleNo : vehicleNo // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,slipPhotoUrl: freezed == slipPhotoUrl ? _self.slipPhotoUrl : slipPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GoodsReceiptDtoOutputStatus,billing: null == billing ? _self.billing : billing // ignore: cast_nullable_to_non_nullable
as GoodsReceiptDtoOutputBilling,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines>,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GoodsReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupplierCopyWith<$Res> get supplier {
  
  return $SupplierCopyWith<$Res>(_self.supplier, (value) {
    return _then(_self.copyWith(supplier: value));
  });
}/// Create a copy of GoodsReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedByCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedByCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [GoodsReceiptDtoOutput].
extension GoodsReceiptDtoOutputPatterns on GoodsReceiptDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoodsReceiptDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoodsReceiptDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoodsReceiptDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _GoodsReceiptDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoodsReceiptDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GoodsReceiptDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  String receiptDate,  Supplier supplier,  String? vehicleNo,  String? notes,  String? slipPhotoUrl,  GoodsReceiptDtoOutputStatus status,  GoodsReceiptDtoOutputBilling billing,  List<Lines> lines,  CreatedBy? createdBy,  DateTime createdAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoodsReceiptDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.receiptDate,_that.supplier,_that.vehicleNo,_that.notes,_that.slipPhotoUrl,_that.status,_that.billing,_that.lines,_that.createdBy,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  String receiptDate,  Supplier supplier,  String? vehicleNo,  String? notes,  String? slipPhotoUrl,  GoodsReceiptDtoOutputStatus status,  GoodsReceiptDtoOutputBilling billing,  List<Lines> lines,  CreatedBy? createdBy,  DateTime createdAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _GoodsReceiptDtoOutput():
return $default(_that.id,_that.number,_that.receiptDate,_that.supplier,_that.vehicleNo,_that.notes,_that.slipPhotoUrl,_that.status,_that.billing,_that.lines,_that.createdBy,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  String receiptDate,  Supplier supplier,  String? vehicleNo,  String? notes,  String? slipPhotoUrl,  GoodsReceiptDtoOutputStatus status,  GoodsReceiptDtoOutputBilling billing,  List<Lines> lines,  CreatedBy? createdBy,  DateTime createdAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _GoodsReceiptDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.receiptDate,_that.supplier,_that.vehicleNo,_that.notes,_that.slipPhotoUrl,_that.status,_that.billing,_that.lines,_that.createdBy,_that.createdAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoodsReceiptDtoOutput implements GoodsReceiptDtoOutput {
  const _GoodsReceiptDtoOutput({required this.id, required this.number, required this.receiptDate, required this.supplier, required this.vehicleNo, required this.notes, required this.slipPhotoUrl, required this.status, required this.billing, required  List<Lines> lines, required this.createdBy, required this.createdAt, required this.cancelReason}): _lines = lines;
  factory _GoodsReceiptDtoOutput.fromJson(Map<String, dynamic> json) => _$GoodsReceiptDtoOutputFromJson(json);

@override final  String id;
@override final  String number;
@override final  String receiptDate;
@override final  Supplier supplier;
@override final  String? vehicleNo;
@override final  String? notes;
@override final  String? slipPhotoUrl;
@override final  GoodsReceiptDtoOutputStatus status;
@override final  GoodsReceiptDtoOutputBilling billing;
 final  List<Lines> _lines;
@override List<Lines> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  CreatedBy? createdBy;
@override final  DateTime createdAt;
@override final  String? cancelReason;

/// Create a copy of GoodsReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoodsReceiptDtoOutputCopyWith<_GoodsReceiptDtoOutput> get copyWith => __$GoodsReceiptDtoOutputCopyWithImpl<_GoodsReceiptDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoodsReceiptDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoodsReceiptDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.receiptDate, receiptDate) || other.receiptDate == receiptDate)&&(identical(other.supplier, supplier) || other.supplier == supplier)&&(identical(other.vehicleNo, vehicleNo) || other.vehicleNo == vehicleNo)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.slipPhotoUrl, slipPhotoUrl) || other.slipPhotoUrl == slipPhotoUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.billing, billing) || other.billing == billing)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,receiptDate,supplier,vehicleNo,notes,slipPhotoUrl,status,billing,const DeepCollectionEquality().hash(_lines),createdBy,createdAt,cancelReason);
}

@override
String toString() {
    return 'GoodsReceiptDtoOutput(id: $id, number: $number, receiptDate: $receiptDate, supplier: $supplier, vehicleNo: $vehicleNo, notes: $notes, slipPhotoUrl: $slipPhotoUrl, status: $status, billing: $billing, lines: $lines, createdBy: $createdBy, createdAt: $createdAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$GoodsReceiptDtoOutputCopyWith<$Res> implements $GoodsReceiptDtoOutputCopyWith<$Res> {
  factory _$GoodsReceiptDtoOutputCopyWith(_GoodsReceiptDtoOutput value, $Res Function(_GoodsReceiptDtoOutput) _then) = __$GoodsReceiptDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, String receiptDate, Supplier supplier, String? vehicleNo, String? notes, String? slipPhotoUrl, GoodsReceiptDtoOutputStatus status, GoodsReceiptDtoOutputBilling billing, List<Lines> lines, CreatedBy? createdBy, DateTime createdAt, String? cancelReason
});


@override $SupplierCopyWith<$Res> get supplier;@override $CreatedByCopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$GoodsReceiptDtoOutputCopyWithImpl<$Res>
    implements _$GoodsReceiptDtoOutputCopyWith<$Res> {
  __$GoodsReceiptDtoOutputCopyWithImpl(this._self, this._then);

  final _GoodsReceiptDtoOutput _self;
  final $Res Function(_GoodsReceiptDtoOutput) _then;

/// Create a copy of GoodsReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? receiptDate = null,Object? supplier = null,Object? vehicleNo = freezed,Object? notes = freezed,Object? slipPhotoUrl = freezed,Object? status = null,Object? billing = null,Object? lines = null,Object? createdBy = freezed,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(_GoodsReceiptDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,receiptDate: null == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as String,supplier: null == supplier ? _self.supplier : supplier // ignore: cast_nullable_to_non_nullable
as Supplier,vehicleNo: freezed == vehicleNo ? _self.vehicleNo : vehicleNo // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,slipPhotoUrl: freezed == slipPhotoUrl ? _self.slipPhotoUrl : slipPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GoodsReceiptDtoOutputStatus,billing: null == billing ? _self.billing : billing // ignore: cast_nullable_to_non_nullable
as GoodsReceiptDtoOutputBilling,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines>,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GoodsReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupplierCopyWith<$Res> get supplier {
  
  return $SupplierCopyWith<$Res>(_self.supplier, (value) {
    return _then(_self.copyWith(supplier: value));
  });
}/// Create a copy of GoodsReceiptDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedByCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedByCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}

// dart format on
