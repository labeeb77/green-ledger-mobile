// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordPaymentDto {

/// Amount in paise (₹1 = 100)
 int get amount; RecordPaymentDtoMethod get method; DateTime? get paidOn; String? get reference; String? get notes; DateTime? get extendTo;
/// Create a copy of RecordPaymentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordPaymentDtoCopyWith<RecordPaymentDto> get copyWith => _$RecordPaymentDtoCopyWithImpl<RecordPaymentDto>(this as RecordPaymentDto, _$identity);

  /// Serializes this RecordPaymentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RecordPaymentDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordPaymentDto&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.paidOn, _this.paidOn) || other.paidOn == _this.paidOn)&&(identical(other.reference, _this.reference) || other.reference == _this.reference)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.extendTo, _this.extendTo) || other.extendTo == _this.extendTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RecordPaymentDto;
  return Object.hash(runtimeType,_this.amount,_this.method,_this.paidOn,_this.reference,_this.notes,_this.extendTo);
}

@override
String toString() {
  final _this = this as RecordPaymentDto;
  return 'RecordPaymentDto(amount: ${_this.amount}, method: ${_this.method}, paidOn: ${_this.paidOn}, reference: ${_this.reference}, notes: ${_this.notes}, extendTo: ${_this.extendTo})';
}


}

/// @nodoc
abstract mixin class $RecordPaymentDtoCopyWith<$Res>  {
  factory $RecordPaymentDtoCopyWith(RecordPaymentDto value, $Res Function(RecordPaymentDto) _then) = _$RecordPaymentDtoCopyWithImpl;
@useResult
$Res call({
 int amount, RecordPaymentDtoMethod method, DateTime? paidOn, String? reference, String? notes, DateTime? extendTo
});




}
/// @nodoc
class _$RecordPaymentDtoCopyWithImpl<$Res>
    implements $RecordPaymentDtoCopyWith<$Res> {
  _$RecordPaymentDtoCopyWithImpl(this._self, this._then);

  final RecordPaymentDto _self;
  final $Res Function(RecordPaymentDto) _then;

/// Create a copy of RecordPaymentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? method = null,Object? paidOn = freezed,Object? reference = freezed,Object? notes = freezed,Object? extendTo = freezed,}) {
  return _then(RecordPaymentDto(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as RecordPaymentDtoMethod,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as DateTime?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,extendTo: freezed == extendTo ? _self.extendTo : extendTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordPaymentDto].
extension RecordPaymentDtoPatterns on RecordPaymentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordPaymentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordPaymentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordPaymentDto value)  $default,){
final _that = this;
switch (_that) {
case _RecordPaymentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordPaymentDto value)?  $default,){
final _that = this;
switch (_that) {
case _RecordPaymentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amount,  RecordPaymentDtoMethod method,  DateTime? paidOn,  String? reference,  String? notes,  DateTime? extendTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordPaymentDto() when $default != null:
return $default(_that.amount,_that.method,_that.paidOn,_that.reference,_that.notes,_that.extendTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amount,  RecordPaymentDtoMethod method,  DateTime? paidOn,  String? reference,  String? notes,  DateTime? extendTo)  $default,) {final _that = this;
switch (_that) {
case _RecordPaymentDto():
return $default(_that.amount,_that.method,_that.paidOn,_that.reference,_that.notes,_that.extendTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amount,  RecordPaymentDtoMethod method,  DateTime? paidOn,  String? reference,  String? notes,  DateTime? extendTo)?  $default,) {final _that = this;
switch (_that) {
case _RecordPaymentDto() when $default != null:
return $default(_that.amount,_that.method,_that.paidOn,_that.reference,_that.notes,_that.extendTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordPaymentDto implements RecordPaymentDto {
  const _RecordPaymentDto({required this.amount, required this.method, this.paidOn, this.reference, this.notes, this.extendTo});
  factory _RecordPaymentDto.fromJson(Map<String, dynamic> json) => _$RecordPaymentDtoFromJson(json);

/// Amount in paise (₹1 = 100)
@override final  int amount;
@override final  RecordPaymentDtoMethod method;
@override final  DateTime? paidOn;
@override final  String? reference;
@override final  String? notes;
@override final  DateTime? extendTo;

/// Create a copy of RecordPaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordPaymentDtoCopyWith<_RecordPaymentDto> get copyWith => __$RecordPaymentDtoCopyWithImpl<_RecordPaymentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordPaymentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordPaymentDto&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.method, method) || other.method == method)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.extendTo, extendTo) || other.extendTo == extendTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,amount,method,paidOn,reference,notes,extendTo);
}

@override
String toString() {
    return 'RecordPaymentDto(amount: $amount, method: $method, paidOn: $paidOn, reference: $reference, notes: $notes, extendTo: $extendTo)';
}


}

/// @nodoc
abstract mixin class _$RecordPaymentDtoCopyWith<$Res> implements $RecordPaymentDtoCopyWith<$Res> {
  factory _$RecordPaymentDtoCopyWith(_RecordPaymentDto value, $Res Function(_RecordPaymentDto) _then) = __$RecordPaymentDtoCopyWithImpl;
@override @useResult
$Res call({
 int amount, RecordPaymentDtoMethod method, DateTime? paidOn, String? reference, String? notes, DateTime? extendTo
});




}
/// @nodoc
class __$RecordPaymentDtoCopyWithImpl<$Res>
    implements _$RecordPaymentDtoCopyWith<$Res> {
  __$RecordPaymentDtoCopyWithImpl(this._self, this._then);

  final _RecordPaymentDto _self;
  final $Res Function(_RecordPaymentDto) _then;

/// Create a copy of RecordPaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? method = null,Object? paidOn = freezed,Object? reference = freezed,Object? notes = freezed,Object? extendTo = freezed,}) {
  return _then(_RecordPaymentDto(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as RecordPaymentDtoMethod,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as DateTime?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,extendTo: freezed == extendTo ? _self.extendTo : extendTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
