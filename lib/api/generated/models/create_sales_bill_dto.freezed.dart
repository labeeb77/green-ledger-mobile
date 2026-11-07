// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_sales_bill_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSalesBillDto {

 String get customerId; List<Lines12> get lines; int get rounding; String? get billDate; String? get notes; List<PayNow>? get payNow;
/// Create a copy of CreateSalesBillDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSalesBillDtoCopyWith<CreateSalesBillDto> get copyWith => _$CreateSalesBillDtoCopyWithImpl<CreateSalesBillDto>(this as CreateSalesBillDto, _$identity);

  /// Serializes this CreateSalesBillDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateSalesBillDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSalesBillDto&&(identical(other.customerId, _this.customerId) || other.customerId == _this.customerId)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.rounding, _this.rounding) || other.rounding == _this.rounding)&&(identical(other.billDate, _this.billDate) || other.billDate == _this.billDate)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&const DeepCollectionEquality().equals(other.payNow, _this.payNow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateSalesBillDto;
  return Object.hash(runtimeType,_this.customerId,const DeepCollectionEquality().hash(_this.lines),_this.rounding,_this.billDate,_this.notes,const DeepCollectionEquality().hash(_this.payNow));
}

@override
String toString() {
  final _this = this as CreateSalesBillDto;
  return 'CreateSalesBillDto(customerId: ${_this.customerId}, lines: ${_this.lines}, rounding: ${_this.rounding}, billDate: ${_this.billDate}, notes: ${_this.notes}, payNow: ${_this.payNow})';
}


}

/// @nodoc
abstract mixin class $CreateSalesBillDtoCopyWith<$Res>  {
  factory $CreateSalesBillDtoCopyWith(CreateSalesBillDto value, $Res Function(CreateSalesBillDto) _then) = _$CreateSalesBillDtoCopyWithImpl;
@useResult
$Res call({
 String customerId, List<Lines12> lines, int rounding, String? billDate, String? notes, List<PayNow>? payNow
});




}
/// @nodoc
class _$CreateSalesBillDtoCopyWithImpl<$Res>
    implements $CreateSalesBillDtoCopyWith<$Res> {
  _$CreateSalesBillDtoCopyWithImpl(this._self, this._then);

  final CreateSalesBillDto _self;
  final $Res Function(CreateSalesBillDto) _then;

/// Create a copy of CreateSalesBillDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? lines = null,Object? rounding = null,Object? billDate = freezed,Object? notes = freezed,Object? payNow = freezed,}) {
  return _then(CreateSalesBillDto(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines12>,rounding: null == rounding ? _self.rounding : rounding // ignore: cast_nullable_to_non_nullable
as int,billDate: freezed == billDate ? _self.billDate : billDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,payNow: freezed == payNow ? _self.payNow : payNow // ignore: cast_nullable_to_non_nullable
as List<PayNow>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSalesBillDto].
extension CreateSalesBillDtoPatterns on CreateSalesBillDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSalesBillDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSalesBillDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSalesBillDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateSalesBillDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSalesBillDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSalesBillDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerId,  List<Lines12> lines,  int rounding,  String? billDate,  String? notes,  List<PayNow>? payNow)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSalesBillDto() when $default != null:
return $default(_that.customerId,_that.lines,_that.rounding,_that.billDate,_that.notes,_that.payNow);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerId,  List<Lines12> lines,  int rounding,  String? billDate,  String? notes,  List<PayNow>? payNow)  $default,) {final _that = this;
switch (_that) {
case _CreateSalesBillDto():
return $default(_that.customerId,_that.lines,_that.rounding,_that.billDate,_that.notes,_that.payNow);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerId,  List<Lines12> lines,  int rounding,  String? billDate,  String? notes,  List<PayNow>? payNow)?  $default,) {final _that = this;
switch (_that) {
case _CreateSalesBillDto() when $default != null:
return $default(_that.customerId,_that.lines,_that.rounding,_that.billDate,_that.notes,_that.payNow);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSalesBillDto implements CreateSalesBillDto {
  const _CreateSalesBillDto({required this.customerId, required  List<Lines12> lines, this.rounding = 0, this.billDate, this.notes,  List<PayNow>? payNow}): _lines = lines,_payNow = payNow;
  factory _CreateSalesBillDto.fromJson(Map<String, dynamic> json) => _$CreateSalesBillDtoFromJson(json);

@override final  String customerId;
 final  List<Lines12> _lines;
@override List<Lines12> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey() final  int rounding;
@override final  String? billDate;
@override final  String? notes;
 final  List<PayNow>? _payNow;
@override List<PayNow>? get payNow {
  final value = _payNow;
  if (value == null) return null;
  if (_payNow is EqualUnmodifiableListView) return _payNow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CreateSalesBillDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSalesBillDtoCopyWith<_CreateSalesBillDto> get copyWith => __$CreateSalesBillDtoCopyWithImpl<_CreateSalesBillDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSalesBillDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSalesBillDto&&(identical(other.customerId, customerId) || other.customerId == customerId)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.rounding, rounding) || other.rounding == rounding)&&(identical(other.billDate, billDate) || other.billDate == billDate)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.payNow, _payNow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,customerId,const DeepCollectionEquality().hash(_lines),rounding,billDate,notes,const DeepCollectionEquality().hash(_payNow));
}

@override
String toString() {
    return 'CreateSalesBillDto(customerId: $customerId, lines: $lines, rounding: $rounding, billDate: $billDate, notes: $notes, payNow: $payNow)';
}


}

/// @nodoc
abstract mixin class _$CreateSalesBillDtoCopyWith<$Res> implements $CreateSalesBillDtoCopyWith<$Res> {
  factory _$CreateSalesBillDtoCopyWith(_CreateSalesBillDto value, $Res Function(_CreateSalesBillDto) _then) = __$CreateSalesBillDtoCopyWithImpl;
@override @useResult
$Res call({
 String customerId, List<Lines12> lines, int rounding, String? billDate, String? notes, List<PayNow>? payNow
});




}
/// @nodoc
class __$CreateSalesBillDtoCopyWithImpl<$Res>
    implements _$CreateSalesBillDtoCopyWith<$Res> {
  __$CreateSalesBillDtoCopyWithImpl(this._self, this._then);

  final _CreateSalesBillDto _self;
  final $Res Function(_CreateSalesBillDto) _then;

/// Create a copy of CreateSalesBillDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? lines = null,Object? rounding = null,Object? billDate = freezed,Object? notes = freezed,Object? payNow = freezed,}) {
  return _then(_CreateSalesBillDto(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines12>,rounding: null == rounding ? _self.rounding : rounding // ignore: cast_nullable_to_non_nullable
as int,billDate: freezed == billDate ? _self.billDate : billDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,payNow: freezed == payNow ? _self._payNow : payNow // ignore: cast_nullable_to_non_nullable
as List<PayNow>?,
  ));
}


}

// dart format on
