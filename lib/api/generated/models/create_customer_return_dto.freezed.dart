// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_customer_return_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCustomerReturnDto {

 String get customerId; List<Lines18> get lines; String? get billId; String? get returnDate; String? get notes;
/// Create a copy of CreateCustomerReturnDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCustomerReturnDtoCopyWith<CreateCustomerReturnDto> get copyWith => _$CreateCustomerReturnDtoCopyWithImpl<CreateCustomerReturnDto>(this as CreateCustomerReturnDto, _$identity);

  /// Serializes this CreateCustomerReturnDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateCustomerReturnDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCustomerReturnDto&&(identical(other.customerId, _this.customerId) || other.customerId == _this.customerId)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.billId, _this.billId) || other.billId == _this.billId)&&(identical(other.returnDate, _this.returnDate) || other.returnDate == _this.returnDate)&&(identical(other.notes, _this.notes) || other.notes == _this.notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateCustomerReturnDto;
  return Object.hash(runtimeType,_this.customerId,const DeepCollectionEquality().hash(_this.lines),_this.billId,_this.returnDate,_this.notes);
}

@override
String toString() {
  final _this = this as CreateCustomerReturnDto;
  return 'CreateCustomerReturnDto(customerId: ${_this.customerId}, lines: ${_this.lines}, billId: ${_this.billId}, returnDate: ${_this.returnDate}, notes: ${_this.notes})';
}


}

/// @nodoc
abstract mixin class $CreateCustomerReturnDtoCopyWith<$Res>  {
  factory $CreateCustomerReturnDtoCopyWith(CreateCustomerReturnDto value, $Res Function(CreateCustomerReturnDto) _then) = _$CreateCustomerReturnDtoCopyWithImpl;
@useResult
$Res call({
 String customerId, List<Lines18> lines, String? billId, String? returnDate, String? notes
});




}
/// @nodoc
class _$CreateCustomerReturnDtoCopyWithImpl<$Res>
    implements $CreateCustomerReturnDtoCopyWith<$Res> {
  _$CreateCustomerReturnDtoCopyWithImpl(this._self, this._then);

  final CreateCustomerReturnDto _self;
  final $Res Function(CreateCustomerReturnDto) _then;

/// Create a copy of CreateCustomerReturnDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? lines = null,Object? billId = freezed,Object? returnDate = freezed,Object? notes = freezed,}) {
  return _then(CreateCustomerReturnDto(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines18>,billId: freezed == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as String?,returnDate: freezed == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCustomerReturnDto].
extension CreateCustomerReturnDtoPatterns on CreateCustomerReturnDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCustomerReturnDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCustomerReturnDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCustomerReturnDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateCustomerReturnDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCustomerReturnDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCustomerReturnDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerId,  List<Lines18> lines,  String? billId,  String? returnDate,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCustomerReturnDto() when $default != null:
return $default(_that.customerId,_that.lines,_that.billId,_that.returnDate,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerId,  List<Lines18> lines,  String? billId,  String? returnDate,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _CreateCustomerReturnDto():
return $default(_that.customerId,_that.lines,_that.billId,_that.returnDate,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerId,  List<Lines18> lines,  String? billId,  String? returnDate,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _CreateCustomerReturnDto() when $default != null:
return $default(_that.customerId,_that.lines,_that.billId,_that.returnDate,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCustomerReturnDto implements CreateCustomerReturnDto {
  const _CreateCustomerReturnDto({required this.customerId, required  List<Lines18> lines, this.billId, this.returnDate, this.notes}): _lines = lines;
  factory _CreateCustomerReturnDto.fromJson(Map<String, dynamic> json) => _$CreateCustomerReturnDtoFromJson(json);

@override final  String customerId;
 final  List<Lines18> _lines;
@override List<Lines18> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  String? billId;
@override final  String? returnDate;
@override final  String? notes;

/// Create a copy of CreateCustomerReturnDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCustomerReturnDtoCopyWith<_CreateCustomerReturnDto> get copyWith => __$CreateCustomerReturnDtoCopyWithImpl<_CreateCustomerReturnDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCustomerReturnDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCustomerReturnDto&&(identical(other.customerId, customerId) || other.customerId == customerId)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,customerId,const DeepCollectionEquality().hash(_lines),billId,returnDate,notes);
}

@override
String toString() {
    return 'CreateCustomerReturnDto(customerId: $customerId, lines: $lines, billId: $billId, returnDate: $returnDate, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateCustomerReturnDtoCopyWith<$Res> implements $CreateCustomerReturnDtoCopyWith<$Res> {
  factory _$CreateCustomerReturnDtoCopyWith(_CreateCustomerReturnDto value, $Res Function(_CreateCustomerReturnDto) _then) = __$CreateCustomerReturnDtoCopyWithImpl;
@override @useResult
$Res call({
 String customerId, List<Lines18> lines, String? billId, String? returnDate, String? notes
});




}
/// @nodoc
class __$CreateCustomerReturnDtoCopyWithImpl<$Res>
    implements _$CreateCustomerReturnDtoCopyWith<$Res> {
  __$CreateCustomerReturnDtoCopyWithImpl(this._self, this._then);

  final _CreateCustomerReturnDto _self;
  final $Res Function(_CreateCustomerReturnDto) _then;

/// Create a copy of CreateCustomerReturnDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? lines = null,Object? billId = freezed,Object? returnDate = freezed,Object? notes = freezed,}) {
  return _then(_CreateCustomerReturnDto(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines18>,billId: freezed == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as String?,returnDate: freezed == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
