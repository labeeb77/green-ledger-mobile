// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_return_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupplierReturnDtoOutput {

 String get id; String get number; Supplier5 get supplier; String get returnDate; Bill? get bill; int get total; String? get reason; SupplierReturnDtoOutputStatus get status; List<Lines5> get lines; DateTime get createdAt; String? get cancelReason;
/// Create a copy of SupplierReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupplierReturnDtoOutputCopyWith<SupplierReturnDtoOutput> get copyWith => _$SupplierReturnDtoOutputCopyWithImpl<SupplierReturnDtoOutput>(this as SupplierReturnDtoOutput, _$identity);

  /// Serializes this SupplierReturnDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SupplierReturnDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupplierReturnDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.supplier, _this.supplier) || other.supplier == _this.supplier)&&(identical(other.returnDate, _this.returnDate) || other.returnDate == _this.returnDate)&&(identical(other.bill, _this.bill) || other.bill == _this.bill)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SupplierReturnDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.supplier,_this.returnDate,_this.bill,_this.total,_this.reason,_this.status,const DeepCollectionEquality().hash(_this.lines),_this.createdAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as SupplierReturnDtoOutput;
  return 'SupplierReturnDtoOutput(id: ${_this.id}, number: ${_this.number}, supplier: ${_this.supplier}, returnDate: ${_this.returnDate}, bill: ${_this.bill}, total: ${_this.total}, reason: ${_this.reason}, status: ${_this.status}, lines: ${_this.lines}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $SupplierReturnDtoOutputCopyWith<$Res>  {
  factory $SupplierReturnDtoOutputCopyWith(SupplierReturnDtoOutput value, $Res Function(SupplierReturnDtoOutput) _then) = _$SupplierReturnDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String number, Supplier5 supplier, String returnDate, Bill? bill, int total, String? reason, SupplierReturnDtoOutputStatus status, List<Lines5> lines, DateTime createdAt, String? cancelReason
});


$Supplier5CopyWith<$Res> get supplier;$BillCopyWith<$Res>? get bill;

}
/// @nodoc
class _$SupplierReturnDtoOutputCopyWithImpl<$Res>
    implements $SupplierReturnDtoOutputCopyWith<$Res> {
  _$SupplierReturnDtoOutputCopyWithImpl(this._self, this._then);

  final SupplierReturnDtoOutput _self;
  final $Res Function(SupplierReturnDtoOutput) _then;

/// Create a copy of SupplierReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? supplier = null,Object? returnDate = null,Object? bill = freezed,Object? total = null,Object? reason = freezed,Object? status = null,Object? lines = null,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(SupplierReturnDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,supplier: null == supplier ? _self.supplier : supplier // ignore: cast_nullable_to_non_nullable
as Supplier5,returnDate: null == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String,bill: freezed == bill ? _self.bill : bill // ignore: cast_nullable_to_non_nullable
as Bill?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupplierReturnDtoOutputStatus,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines5>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SupplierReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Supplier5CopyWith<$Res> get supplier {
  
  return $Supplier5CopyWith<$Res>(_self.supplier, (value) {
    return _then(_self.copyWith(supplier: value));
  });
}/// Create a copy of SupplierReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillCopyWith<$Res>? get bill {
    if (_self.bill == null) {
    return null;
  }

  return $BillCopyWith<$Res>(_self.bill!, (value) {
    return _then(_self.copyWith(bill: value));
  });
}
}


/// Adds pattern-matching-related methods to [SupplierReturnDtoOutput].
extension SupplierReturnDtoOutputPatterns on SupplierReturnDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupplierReturnDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupplierReturnDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupplierReturnDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SupplierReturnDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupplierReturnDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SupplierReturnDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  Supplier5 supplier,  String returnDate,  Bill? bill,  int total,  String? reason,  SupplierReturnDtoOutputStatus status,  List<Lines5> lines,  DateTime createdAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupplierReturnDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.supplier,_that.returnDate,_that.bill,_that.total,_that.reason,_that.status,_that.lines,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  Supplier5 supplier,  String returnDate,  Bill? bill,  int total,  String? reason,  SupplierReturnDtoOutputStatus status,  List<Lines5> lines,  DateTime createdAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _SupplierReturnDtoOutput():
return $default(_that.id,_that.number,_that.supplier,_that.returnDate,_that.bill,_that.total,_that.reason,_that.status,_that.lines,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  Supplier5 supplier,  String returnDate,  Bill? bill,  int total,  String? reason,  SupplierReturnDtoOutputStatus status,  List<Lines5> lines,  DateTime createdAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _SupplierReturnDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.supplier,_that.returnDate,_that.bill,_that.total,_that.reason,_that.status,_that.lines,_that.createdAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupplierReturnDtoOutput implements SupplierReturnDtoOutput {
  const _SupplierReturnDtoOutput({required this.id, required this.number, required this.supplier, required this.returnDate, required this.bill, required this.total, required this.reason, required this.status, required  List<Lines5> lines, required this.createdAt, required this.cancelReason}): _lines = lines;
  factory _SupplierReturnDtoOutput.fromJson(Map<String, dynamic> json) => _$SupplierReturnDtoOutputFromJson(json);

@override final  String id;
@override final  String number;
@override final  Supplier5 supplier;
@override final  String returnDate;
@override final  Bill? bill;
@override final  int total;
@override final  String? reason;
@override final  SupplierReturnDtoOutputStatus status;
 final  List<Lines5> _lines;
@override List<Lines5> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  DateTime createdAt;
@override final  String? cancelReason;

/// Create a copy of SupplierReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupplierReturnDtoOutputCopyWith<_SupplierReturnDtoOutput> get copyWith => __$SupplierReturnDtoOutputCopyWithImpl<_SupplierReturnDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupplierReturnDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupplierReturnDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.supplier, supplier) || other.supplier == supplier)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.bill, bill) || other.bill == bill)&&(identical(other.total, total) || other.total == total)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,supplier,returnDate,bill,total,reason,status,const DeepCollectionEquality().hash(_lines),createdAt,cancelReason);
}

@override
String toString() {
    return 'SupplierReturnDtoOutput(id: $id, number: $number, supplier: $supplier, returnDate: $returnDate, bill: $bill, total: $total, reason: $reason, status: $status, lines: $lines, createdAt: $createdAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$SupplierReturnDtoOutputCopyWith<$Res> implements $SupplierReturnDtoOutputCopyWith<$Res> {
  factory _$SupplierReturnDtoOutputCopyWith(_SupplierReturnDtoOutput value, $Res Function(_SupplierReturnDtoOutput) _then) = __$SupplierReturnDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, Supplier5 supplier, String returnDate, Bill? bill, int total, String? reason, SupplierReturnDtoOutputStatus status, List<Lines5> lines, DateTime createdAt, String? cancelReason
});


@override $Supplier5CopyWith<$Res> get supplier;@override $BillCopyWith<$Res>? get bill;

}
/// @nodoc
class __$SupplierReturnDtoOutputCopyWithImpl<$Res>
    implements _$SupplierReturnDtoOutputCopyWith<$Res> {
  __$SupplierReturnDtoOutputCopyWithImpl(this._self, this._then);

  final _SupplierReturnDtoOutput _self;
  final $Res Function(_SupplierReturnDtoOutput) _then;

/// Create a copy of SupplierReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? supplier = null,Object? returnDate = null,Object? bill = freezed,Object? total = null,Object? reason = freezed,Object? status = null,Object? lines = null,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(_SupplierReturnDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,supplier: null == supplier ? _self.supplier : supplier // ignore: cast_nullable_to_non_nullable
as Supplier5,returnDate: null == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String,bill: freezed == bill ? _self.bill : bill // ignore: cast_nullable_to_non_nullable
as Bill?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupplierReturnDtoOutputStatus,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines5>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SupplierReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Supplier5CopyWith<$Res> get supplier {
  
  return $Supplier5CopyWith<$Res>(_self.supplier, (value) {
    return _then(_self.copyWith(supplier: value));
  });
}/// Create a copy of SupplierReturnDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillCopyWith<$Res>? get bill {
    if (_self.bill == null) {
    return null;
  }

  return $BillCopyWith<$Res>(_self.bill!, (value) {
    return _then(_self.copyWith(bill: value));
  });
}
}

// dart format on
