// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_supplier_return_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSupplierReturnDto {

 String get supplierId; List<Lines6> get lines; String? get returnDate; String? get billId; String? get reason;
/// Create a copy of CreateSupplierReturnDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSupplierReturnDtoCopyWith<CreateSupplierReturnDto> get copyWith => _$CreateSupplierReturnDtoCopyWithImpl<CreateSupplierReturnDto>(this as CreateSupplierReturnDto, _$identity);

  /// Serializes this CreateSupplierReturnDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateSupplierReturnDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSupplierReturnDto&&(identical(other.supplierId, _this.supplierId) || other.supplierId == _this.supplierId)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.returnDate, _this.returnDate) || other.returnDate == _this.returnDate)&&(identical(other.billId, _this.billId) || other.billId == _this.billId)&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateSupplierReturnDto;
  return Object.hash(runtimeType,_this.supplierId,const DeepCollectionEquality().hash(_this.lines),_this.returnDate,_this.billId,_this.reason);
}

@override
String toString() {
  final _this = this as CreateSupplierReturnDto;
  return 'CreateSupplierReturnDto(supplierId: ${_this.supplierId}, lines: ${_this.lines}, returnDate: ${_this.returnDate}, billId: ${_this.billId}, reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $CreateSupplierReturnDtoCopyWith<$Res>  {
  factory $CreateSupplierReturnDtoCopyWith(CreateSupplierReturnDto value, $Res Function(CreateSupplierReturnDto) _then) = _$CreateSupplierReturnDtoCopyWithImpl;
@useResult
$Res call({
 String supplierId, List<Lines6> lines, String? returnDate, String? billId, String? reason
});




}
/// @nodoc
class _$CreateSupplierReturnDtoCopyWithImpl<$Res>
    implements $CreateSupplierReturnDtoCopyWith<$Res> {
  _$CreateSupplierReturnDtoCopyWithImpl(this._self, this._then);

  final CreateSupplierReturnDto _self;
  final $Res Function(CreateSupplierReturnDto) _then;

/// Create a copy of CreateSupplierReturnDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? supplierId = null,Object? lines = null,Object? returnDate = freezed,Object? billId = freezed,Object? reason = freezed,}) {
  return _then(CreateSupplierReturnDto(
supplierId: null == supplierId ? _self.supplierId : supplierId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines6>,returnDate: freezed == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String?,billId: freezed == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSupplierReturnDto].
extension CreateSupplierReturnDtoPatterns on CreateSupplierReturnDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSupplierReturnDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSupplierReturnDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSupplierReturnDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateSupplierReturnDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSupplierReturnDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSupplierReturnDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String supplierId,  List<Lines6> lines,  String? returnDate,  String? billId,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSupplierReturnDto() when $default != null:
return $default(_that.supplierId,_that.lines,_that.returnDate,_that.billId,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String supplierId,  List<Lines6> lines,  String? returnDate,  String? billId,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _CreateSupplierReturnDto():
return $default(_that.supplierId,_that.lines,_that.returnDate,_that.billId,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String supplierId,  List<Lines6> lines,  String? returnDate,  String? billId,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _CreateSupplierReturnDto() when $default != null:
return $default(_that.supplierId,_that.lines,_that.returnDate,_that.billId,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSupplierReturnDto implements CreateSupplierReturnDto {
  const _CreateSupplierReturnDto({required this.supplierId, required  List<Lines6> lines, this.returnDate, this.billId, this.reason}): _lines = lines;
  factory _CreateSupplierReturnDto.fromJson(Map<String, dynamic> json) => _$CreateSupplierReturnDtoFromJson(json);

@override final  String supplierId;
 final  List<Lines6> _lines;
@override List<Lines6> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  String? returnDate;
@override final  String? billId;
@override final  String? reason;

/// Create a copy of CreateSupplierReturnDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSupplierReturnDtoCopyWith<_CreateSupplierReturnDto> get copyWith => __$CreateSupplierReturnDtoCopyWithImpl<_CreateSupplierReturnDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSupplierReturnDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSupplierReturnDto&&(identical(other.supplierId, supplierId) || other.supplierId == supplierId)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,supplierId,const DeepCollectionEquality().hash(_lines),returnDate,billId,reason);
}

@override
String toString() {
    return 'CreateSupplierReturnDto(supplierId: $supplierId, lines: $lines, returnDate: $returnDate, billId: $billId, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$CreateSupplierReturnDtoCopyWith<$Res> implements $CreateSupplierReturnDtoCopyWith<$Res> {
  factory _$CreateSupplierReturnDtoCopyWith(_CreateSupplierReturnDto value, $Res Function(_CreateSupplierReturnDto) _then) = __$CreateSupplierReturnDtoCopyWithImpl;
@override @useResult
$Res call({
 String supplierId, List<Lines6> lines, String? returnDate, String? billId, String? reason
});




}
/// @nodoc
class __$CreateSupplierReturnDtoCopyWithImpl<$Res>
    implements _$CreateSupplierReturnDtoCopyWith<$Res> {
  __$CreateSupplierReturnDtoCopyWithImpl(this._self, this._then);

  final _CreateSupplierReturnDto _self;
  final $Res Function(_CreateSupplierReturnDto) _then;

/// Create a copy of CreateSupplierReturnDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? supplierId = null,Object? lines = null,Object? returnDate = freezed,Object? billId = freezed,Object? reason = freezed,}) {
  return _then(_CreateSupplierReturnDto(
supplierId: null == supplierId ? _self.supplierId : supplierId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines6>,returnDate: freezed == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String?,billId: freezed == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
