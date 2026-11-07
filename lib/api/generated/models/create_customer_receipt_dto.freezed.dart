// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_customer_receipt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCustomerReceiptDto {

 String get customerId; List<Splits4> get splits; String? get receiptDate; String? get notes; List<Allocations7>? get allocations;
/// Create a copy of CreateCustomerReceiptDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCustomerReceiptDtoCopyWith<CreateCustomerReceiptDto> get copyWith => _$CreateCustomerReceiptDtoCopyWithImpl<CreateCustomerReceiptDto>(this as CreateCustomerReceiptDto, _$identity);

  /// Serializes this CreateCustomerReceiptDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateCustomerReceiptDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCustomerReceiptDto&&(identical(other.customerId, _this.customerId) || other.customerId == _this.customerId)&&const DeepCollectionEquality().equals(other.splits, _this.splits)&&(identical(other.receiptDate, _this.receiptDate) || other.receiptDate == _this.receiptDate)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&const DeepCollectionEquality().equals(other.allocations, _this.allocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateCustomerReceiptDto;
  return Object.hash(runtimeType,_this.customerId,const DeepCollectionEquality().hash(_this.splits),_this.receiptDate,_this.notes,const DeepCollectionEquality().hash(_this.allocations));
}

@override
String toString() {
  final _this = this as CreateCustomerReceiptDto;
  return 'CreateCustomerReceiptDto(customerId: ${_this.customerId}, splits: ${_this.splits}, receiptDate: ${_this.receiptDate}, notes: ${_this.notes}, allocations: ${_this.allocations})';
}


}

/// @nodoc
abstract mixin class $CreateCustomerReceiptDtoCopyWith<$Res>  {
  factory $CreateCustomerReceiptDtoCopyWith(CreateCustomerReceiptDto value, $Res Function(CreateCustomerReceiptDto) _then) = _$CreateCustomerReceiptDtoCopyWithImpl;
@useResult
$Res call({
 String customerId, List<Splits4> splits, String? receiptDate, String? notes, List<Allocations7>? allocations
});




}
/// @nodoc
class _$CreateCustomerReceiptDtoCopyWithImpl<$Res>
    implements $CreateCustomerReceiptDtoCopyWith<$Res> {
  _$CreateCustomerReceiptDtoCopyWithImpl(this._self, this._then);

  final CreateCustomerReceiptDto _self;
  final $Res Function(CreateCustomerReceiptDto) _then;

/// Create a copy of CreateCustomerReceiptDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? splits = null,Object? receiptDate = freezed,Object? notes = freezed,Object? allocations = freezed,}) {
  return _then(CreateCustomerReceiptDto(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,splits: null == splits ? _self.splits : splits // ignore: cast_nullable_to_non_nullable
as List<Splits4>,receiptDate: freezed == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,allocations: freezed == allocations ? _self.allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations7>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCustomerReceiptDto].
extension CreateCustomerReceiptDtoPatterns on CreateCustomerReceiptDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCustomerReceiptDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCustomerReceiptDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCustomerReceiptDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateCustomerReceiptDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCustomerReceiptDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCustomerReceiptDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerId,  List<Splits4> splits,  String? receiptDate,  String? notes,  List<Allocations7>? allocations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCustomerReceiptDto() when $default != null:
return $default(_that.customerId,_that.splits,_that.receiptDate,_that.notes,_that.allocations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerId,  List<Splits4> splits,  String? receiptDate,  String? notes,  List<Allocations7>? allocations)  $default,) {final _that = this;
switch (_that) {
case _CreateCustomerReceiptDto():
return $default(_that.customerId,_that.splits,_that.receiptDate,_that.notes,_that.allocations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerId,  List<Splits4> splits,  String? receiptDate,  String? notes,  List<Allocations7>? allocations)?  $default,) {final _that = this;
switch (_that) {
case _CreateCustomerReceiptDto() when $default != null:
return $default(_that.customerId,_that.splits,_that.receiptDate,_that.notes,_that.allocations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCustomerReceiptDto implements CreateCustomerReceiptDto {
  const _CreateCustomerReceiptDto({required this.customerId, required  List<Splits4> splits, this.receiptDate, this.notes,  List<Allocations7>? allocations}): _splits = splits,_allocations = allocations;
  factory _CreateCustomerReceiptDto.fromJson(Map<String, dynamic> json) => _$CreateCustomerReceiptDtoFromJson(json);

@override final  String customerId;
 final  List<Splits4> _splits;
@override List<Splits4> get splits {
  if (_splits is EqualUnmodifiableListView) return _splits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_splits);
}

@override final  String? receiptDate;
@override final  String? notes;
 final  List<Allocations7>? _allocations;
@override List<Allocations7>? get allocations {
  final value = _allocations;
  if (value == null) return null;
  if (_allocations is EqualUnmodifiableListView) return _allocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CreateCustomerReceiptDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCustomerReceiptDtoCopyWith<_CreateCustomerReceiptDto> get copyWith => __$CreateCustomerReceiptDtoCopyWithImpl<_CreateCustomerReceiptDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCustomerReceiptDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCustomerReceiptDto&&(identical(other.customerId, customerId) || other.customerId == customerId)&&const DeepCollectionEquality().equals(other.splits, _splits)&&(identical(other.receiptDate, receiptDate) || other.receiptDate == receiptDate)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.allocations, _allocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,customerId,const DeepCollectionEquality().hash(_splits),receiptDate,notes,const DeepCollectionEquality().hash(_allocations));
}

@override
String toString() {
    return 'CreateCustomerReceiptDto(customerId: $customerId, splits: $splits, receiptDate: $receiptDate, notes: $notes, allocations: $allocations)';
}


}

/// @nodoc
abstract mixin class _$CreateCustomerReceiptDtoCopyWith<$Res> implements $CreateCustomerReceiptDtoCopyWith<$Res> {
  factory _$CreateCustomerReceiptDtoCopyWith(_CreateCustomerReceiptDto value, $Res Function(_CreateCustomerReceiptDto) _then) = __$CreateCustomerReceiptDtoCopyWithImpl;
@override @useResult
$Res call({
 String customerId, List<Splits4> splits, String? receiptDate, String? notes, List<Allocations7>? allocations
});




}
/// @nodoc
class __$CreateCustomerReceiptDtoCopyWithImpl<$Res>
    implements _$CreateCustomerReceiptDtoCopyWith<$Res> {
  __$CreateCustomerReceiptDtoCopyWithImpl(this._self, this._then);

  final _CreateCustomerReceiptDto _self;
  final $Res Function(_CreateCustomerReceiptDto) _then;

/// Create a copy of CreateCustomerReceiptDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? splits = null,Object? receiptDate = freezed,Object? notes = freezed,Object? allocations = freezed,}) {
  return _then(_CreateCustomerReceiptDto(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,splits: null == splits ? _self._splits : splits // ignore: cast_nullable_to_non_nullable
as List<Splits4>,receiptDate: freezed == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,allocations: freezed == allocations ? _self._allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations7>?,
  ));
}


}

// dart format on
