// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_goods_receipt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateGoodsReceiptDto {

 String get supplierId; List<Lines2> get lines; DateTime? get receiptDate; String? get vehicleNo; String? get notes; String? get slipPhotoFileId;
/// Create a copy of CreateGoodsReceiptDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGoodsReceiptDtoCopyWith<CreateGoodsReceiptDto> get copyWith => _$CreateGoodsReceiptDtoCopyWithImpl<CreateGoodsReceiptDto>(this as CreateGoodsReceiptDto, _$identity);

  /// Serializes this CreateGoodsReceiptDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateGoodsReceiptDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGoodsReceiptDto&&(identical(other.supplierId, _this.supplierId) || other.supplierId == _this.supplierId)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.receiptDate, _this.receiptDate) || other.receiptDate == _this.receiptDate)&&(identical(other.vehicleNo, _this.vehicleNo) || other.vehicleNo == _this.vehicleNo)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.slipPhotoFileId, _this.slipPhotoFileId) || other.slipPhotoFileId == _this.slipPhotoFileId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateGoodsReceiptDto;
  return Object.hash(runtimeType,_this.supplierId,const DeepCollectionEquality().hash(_this.lines),_this.receiptDate,_this.vehicleNo,_this.notes,_this.slipPhotoFileId);
}

@override
String toString() {
  final _this = this as CreateGoodsReceiptDto;
  return 'CreateGoodsReceiptDto(supplierId: ${_this.supplierId}, lines: ${_this.lines}, receiptDate: ${_this.receiptDate}, vehicleNo: ${_this.vehicleNo}, notes: ${_this.notes}, slipPhotoFileId: ${_this.slipPhotoFileId})';
}


}

/// @nodoc
abstract mixin class $CreateGoodsReceiptDtoCopyWith<$Res>  {
  factory $CreateGoodsReceiptDtoCopyWith(CreateGoodsReceiptDto value, $Res Function(CreateGoodsReceiptDto) _then) = _$CreateGoodsReceiptDtoCopyWithImpl;
@useResult
$Res call({
 String supplierId, List<Lines2> lines, DateTime? receiptDate, String? vehicleNo, String? notes, String? slipPhotoFileId
});




}
/// @nodoc
class _$CreateGoodsReceiptDtoCopyWithImpl<$Res>
    implements $CreateGoodsReceiptDtoCopyWith<$Res> {
  _$CreateGoodsReceiptDtoCopyWithImpl(this._self, this._then);

  final CreateGoodsReceiptDto _self;
  final $Res Function(CreateGoodsReceiptDto) _then;

/// Create a copy of CreateGoodsReceiptDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? supplierId = null,Object? lines = null,Object? receiptDate = freezed,Object? vehicleNo = freezed,Object? notes = freezed,Object? slipPhotoFileId = freezed,}) {
  return _then(CreateGoodsReceiptDto(
supplierId: null == supplierId ? _self.supplierId : supplierId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines2>,receiptDate: freezed == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime?,vehicleNo: freezed == vehicleNo ? _self.vehicleNo : vehicleNo // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,slipPhotoFileId: freezed == slipPhotoFileId ? _self.slipPhotoFileId : slipPhotoFileId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateGoodsReceiptDto].
extension CreateGoodsReceiptDtoPatterns on CreateGoodsReceiptDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGoodsReceiptDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGoodsReceiptDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGoodsReceiptDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateGoodsReceiptDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGoodsReceiptDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGoodsReceiptDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String supplierId,  List<Lines2> lines,  DateTime? receiptDate,  String? vehicleNo,  String? notes,  String? slipPhotoFileId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGoodsReceiptDto() when $default != null:
return $default(_that.supplierId,_that.lines,_that.receiptDate,_that.vehicleNo,_that.notes,_that.slipPhotoFileId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String supplierId,  List<Lines2> lines,  DateTime? receiptDate,  String? vehicleNo,  String? notes,  String? slipPhotoFileId)  $default,) {final _that = this;
switch (_that) {
case _CreateGoodsReceiptDto():
return $default(_that.supplierId,_that.lines,_that.receiptDate,_that.vehicleNo,_that.notes,_that.slipPhotoFileId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String supplierId,  List<Lines2> lines,  DateTime? receiptDate,  String? vehicleNo,  String? notes,  String? slipPhotoFileId)?  $default,) {final _that = this;
switch (_that) {
case _CreateGoodsReceiptDto() when $default != null:
return $default(_that.supplierId,_that.lines,_that.receiptDate,_that.vehicleNo,_that.notes,_that.slipPhotoFileId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateGoodsReceiptDto implements CreateGoodsReceiptDto {
  const _CreateGoodsReceiptDto({required this.supplierId, required  List<Lines2> lines, this.receiptDate, this.vehicleNo, this.notes, this.slipPhotoFileId}): _lines = lines;
  factory _CreateGoodsReceiptDto.fromJson(Map<String, dynamic> json) => _$CreateGoodsReceiptDtoFromJson(json);

@override final  String supplierId;
 final  List<Lines2> _lines;
@override List<Lines2> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  DateTime? receiptDate;
@override final  String? vehicleNo;
@override final  String? notes;
@override final  String? slipPhotoFileId;

/// Create a copy of CreateGoodsReceiptDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGoodsReceiptDtoCopyWith<_CreateGoodsReceiptDto> get copyWith => __$CreateGoodsReceiptDtoCopyWithImpl<_CreateGoodsReceiptDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGoodsReceiptDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGoodsReceiptDto&&(identical(other.supplierId, supplierId) || other.supplierId == supplierId)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.receiptDate, receiptDate) || other.receiptDate == receiptDate)&&(identical(other.vehicleNo, vehicleNo) || other.vehicleNo == vehicleNo)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.slipPhotoFileId, slipPhotoFileId) || other.slipPhotoFileId == slipPhotoFileId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,supplierId,const DeepCollectionEquality().hash(_lines),receiptDate,vehicleNo,notes,slipPhotoFileId);
}

@override
String toString() {
    return 'CreateGoodsReceiptDto(supplierId: $supplierId, lines: $lines, receiptDate: $receiptDate, vehicleNo: $vehicleNo, notes: $notes, slipPhotoFileId: $slipPhotoFileId)';
}


}

/// @nodoc
abstract mixin class _$CreateGoodsReceiptDtoCopyWith<$Res> implements $CreateGoodsReceiptDtoCopyWith<$Res> {
  factory _$CreateGoodsReceiptDtoCopyWith(_CreateGoodsReceiptDto value, $Res Function(_CreateGoodsReceiptDto) _then) = __$CreateGoodsReceiptDtoCopyWithImpl;
@override @useResult
$Res call({
 String supplierId, List<Lines2> lines, DateTime? receiptDate, String? vehicleNo, String? notes, String? slipPhotoFileId
});




}
/// @nodoc
class __$CreateGoodsReceiptDtoCopyWithImpl<$Res>
    implements _$CreateGoodsReceiptDtoCopyWith<$Res> {
  __$CreateGoodsReceiptDtoCopyWithImpl(this._self, this._then);

  final _CreateGoodsReceiptDto _self;
  final $Res Function(_CreateGoodsReceiptDto) _then;

/// Create a copy of CreateGoodsReceiptDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? supplierId = null,Object? lines = null,Object? receiptDate = freezed,Object? vehicleNo = freezed,Object? notes = freezed,Object? slipPhotoFileId = freezed,}) {
  return _then(_CreateGoodsReceiptDto(
supplierId: null == supplierId ? _self.supplierId : supplierId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines2>,receiptDate: freezed == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime?,vehicleNo: freezed == vehicleNo ? _self.vehicleNo : vehicleNo // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,slipPhotoFileId: freezed == slipPhotoFileId ? _self.slipPhotoFileId : slipPhotoFileId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
