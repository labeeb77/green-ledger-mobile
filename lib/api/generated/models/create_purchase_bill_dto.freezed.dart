// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_purchase_bill_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePurchaseBillDto {

 String get supplierId; List<Lines3> get lines; int get adjustment; String? get billDate; String? get dueDate; String? get supplierInvoiceNo; String? get notes;
/// Create a copy of CreatePurchaseBillDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePurchaseBillDtoCopyWith<CreatePurchaseBillDto> get copyWith => _$CreatePurchaseBillDtoCopyWithImpl<CreatePurchaseBillDto>(this as CreatePurchaseBillDto, _$identity);

  /// Serializes this CreatePurchaseBillDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreatePurchaseBillDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePurchaseBillDto&&(identical(other.supplierId, _this.supplierId) || other.supplierId == _this.supplierId)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.adjustment, _this.adjustment) || other.adjustment == _this.adjustment)&&(identical(other.billDate, _this.billDate) || other.billDate == _this.billDate)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.supplierInvoiceNo, _this.supplierInvoiceNo) || other.supplierInvoiceNo == _this.supplierInvoiceNo)&&(identical(other.notes, _this.notes) || other.notes == _this.notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreatePurchaseBillDto;
  return Object.hash(runtimeType,_this.supplierId,const DeepCollectionEquality().hash(_this.lines),_this.adjustment,_this.billDate,_this.dueDate,_this.supplierInvoiceNo,_this.notes);
}

@override
String toString() {
  final _this = this as CreatePurchaseBillDto;
  return 'CreatePurchaseBillDto(supplierId: ${_this.supplierId}, lines: ${_this.lines}, adjustment: ${_this.adjustment}, billDate: ${_this.billDate}, dueDate: ${_this.dueDate}, supplierInvoiceNo: ${_this.supplierInvoiceNo}, notes: ${_this.notes})';
}


}

/// @nodoc
abstract mixin class $CreatePurchaseBillDtoCopyWith<$Res>  {
  factory $CreatePurchaseBillDtoCopyWith(CreatePurchaseBillDto value, $Res Function(CreatePurchaseBillDto) _then) = _$CreatePurchaseBillDtoCopyWithImpl;
@useResult
$Res call({
 String supplierId, List<Lines3> lines, int adjustment, String? billDate, String? dueDate, String? supplierInvoiceNo, String? notes
});




}
/// @nodoc
class _$CreatePurchaseBillDtoCopyWithImpl<$Res>
    implements $CreatePurchaseBillDtoCopyWith<$Res> {
  _$CreatePurchaseBillDtoCopyWithImpl(this._self, this._then);

  final CreatePurchaseBillDto _self;
  final $Res Function(CreatePurchaseBillDto) _then;

/// Create a copy of CreatePurchaseBillDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? supplierId = null,Object? lines = null,Object? adjustment = null,Object? billDate = freezed,Object? dueDate = freezed,Object? supplierInvoiceNo = freezed,Object? notes = freezed,}) {
  return _then(CreatePurchaseBillDto(
supplierId: null == supplierId ? _self.supplierId : supplierId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines3>,adjustment: null == adjustment ? _self.adjustment : adjustment // ignore: cast_nullable_to_non_nullable
as int,billDate: freezed == billDate ? _self.billDate : billDate // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,supplierInvoiceNo: freezed == supplierInvoiceNo ? _self.supplierInvoiceNo : supplierInvoiceNo // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePurchaseBillDto].
extension CreatePurchaseBillDtoPatterns on CreatePurchaseBillDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePurchaseBillDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePurchaseBillDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePurchaseBillDto value)  $default,){
final _that = this;
switch (_that) {
case _CreatePurchaseBillDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePurchaseBillDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePurchaseBillDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String supplierId,  List<Lines3> lines,  int adjustment,  String? billDate,  String? dueDate,  String? supplierInvoiceNo,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePurchaseBillDto() when $default != null:
return $default(_that.supplierId,_that.lines,_that.adjustment,_that.billDate,_that.dueDate,_that.supplierInvoiceNo,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String supplierId,  List<Lines3> lines,  int adjustment,  String? billDate,  String? dueDate,  String? supplierInvoiceNo,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _CreatePurchaseBillDto():
return $default(_that.supplierId,_that.lines,_that.adjustment,_that.billDate,_that.dueDate,_that.supplierInvoiceNo,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String supplierId,  List<Lines3> lines,  int adjustment,  String? billDate,  String? dueDate,  String? supplierInvoiceNo,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _CreatePurchaseBillDto() when $default != null:
return $default(_that.supplierId,_that.lines,_that.adjustment,_that.billDate,_that.dueDate,_that.supplierInvoiceNo,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePurchaseBillDto implements CreatePurchaseBillDto {
  const _CreatePurchaseBillDto({required this.supplierId, required  List<Lines3> lines, this.adjustment = 0, this.billDate, this.dueDate, this.supplierInvoiceNo, this.notes}): _lines = lines;
  factory _CreatePurchaseBillDto.fromJson(Map<String, dynamic> json) => _$CreatePurchaseBillDtoFromJson(json);

@override final  String supplierId;
 final  List<Lines3> _lines;
@override List<Lines3> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey() final  int adjustment;
@override final  String? billDate;
@override final  String? dueDate;
@override final  String? supplierInvoiceNo;
@override final  String? notes;

/// Create a copy of CreatePurchaseBillDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePurchaseBillDtoCopyWith<_CreatePurchaseBillDto> get copyWith => __$CreatePurchaseBillDtoCopyWithImpl<_CreatePurchaseBillDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePurchaseBillDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePurchaseBillDto&&(identical(other.supplierId, supplierId) || other.supplierId == supplierId)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.adjustment, adjustment) || other.adjustment == adjustment)&&(identical(other.billDate, billDate) || other.billDate == billDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.supplierInvoiceNo, supplierInvoiceNo) || other.supplierInvoiceNo == supplierInvoiceNo)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,supplierId,const DeepCollectionEquality().hash(_lines),adjustment,billDate,dueDate,supplierInvoiceNo,notes);
}

@override
String toString() {
    return 'CreatePurchaseBillDto(supplierId: $supplierId, lines: $lines, adjustment: $adjustment, billDate: $billDate, dueDate: $dueDate, supplierInvoiceNo: $supplierInvoiceNo, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreatePurchaseBillDtoCopyWith<$Res> implements $CreatePurchaseBillDtoCopyWith<$Res> {
  factory _$CreatePurchaseBillDtoCopyWith(_CreatePurchaseBillDto value, $Res Function(_CreatePurchaseBillDto) _then) = __$CreatePurchaseBillDtoCopyWithImpl;
@override @useResult
$Res call({
 String supplierId, List<Lines3> lines, int adjustment, String? billDate, String? dueDate, String? supplierInvoiceNo, String? notes
});




}
/// @nodoc
class __$CreatePurchaseBillDtoCopyWithImpl<$Res>
    implements _$CreatePurchaseBillDtoCopyWith<$Res> {
  __$CreatePurchaseBillDtoCopyWithImpl(this._self, this._then);

  final _CreatePurchaseBillDto _self;
  final $Res Function(_CreatePurchaseBillDto) _then;

/// Create a copy of CreatePurchaseBillDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? supplierId = null,Object? lines = null,Object? adjustment = null,Object? billDate = freezed,Object? dueDate = freezed,Object? supplierInvoiceNo = freezed,Object? notes = freezed,}) {
  return _then(_CreatePurchaseBillDto(
supplierId: null == supplierId ? _self.supplierId : supplierId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines3>,adjustment: null == adjustment ? _self.adjustment : adjustment // ignore: cast_nullable_to_non_nullable
as int,billDate: freezed == billDate ? _self.billDate : billDate // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,supplierInvoiceNo: freezed == supplierInvoiceNo ? _self.supplierInvoiceNo : supplierInvoiceNo // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
