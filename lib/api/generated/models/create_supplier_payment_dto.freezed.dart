// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_supplier_payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSupplierPaymentDto {

 String get supplierId; List<Splits2> get splits; String? get paymentDate; String? get notes; List<Allocations3>? get allocations;
/// Create a copy of CreateSupplierPaymentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSupplierPaymentDtoCopyWith<CreateSupplierPaymentDto> get copyWith => _$CreateSupplierPaymentDtoCopyWithImpl<CreateSupplierPaymentDto>(this as CreateSupplierPaymentDto, _$identity);

  /// Serializes this CreateSupplierPaymentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateSupplierPaymentDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSupplierPaymentDto&&(identical(other.supplierId, _this.supplierId) || other.supplierId == _this.supplierId)&&const DeepCollectionEquality().equals(other.splits, _this.splits)&&(identical(other.paymentDate, _this.paymentDate) || other.paymentDate == _this.paymentDate)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&const DeepCollectionEquality().equals(other.allocations, _this.allocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateSupplierPaymentDto;
  return Object.hash(runtimeType,_this.supplierId,const DeepCollectionEquality().hash(_this.splits),_this.paymentDate,_this.notes,const DeepCollectionEquality().hash(_this.allocations));
}

@override
String toString() {
  final _this = this as CreateSupplierPaymentDto;
  return 'CreateSupplierPaymentDto(supplierId: ${_this.supplierId}, splits: ${_this.splits}, paymentDate: ${_this.paymentDate}, notes: ${_this.notes}, allocations: ${_this.allocations})';
}


}

/// @nodoc
abstract mixin class $CreateSupplierPaymentDtoCopyWith<$Res>  {
  factory $CreateSupplierPaymentDtoCopyWith(CreateSupplierPaymentDto value, $Res Function(CreateSupplierPaymentDto) _then) = _$CreateSupplierPaymentDtoCopyWithImpl;
@useResult
$Res call({
 String supplierId, List<Splits2> splits, String? paymentDate, String? notes, List<Allocations3>? allocations
});




}
/// @nodoc
class _$CreateSupplierPaymentDtoCopyWithImpl<$Res>
    implements $CreateSupplierPaymentDtoCopyWith<$Res> {
  _$CreateSupplierPaymentDtoCopyWithImpl(this._self, this._then);

  final CreateSupplierPaymentDto _self;
  final $Res Function(CreateSupplierPaymentDto) _then;

/// Create a copy of CreateSupplierPaymentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? supplierId = null,Object? splits = null,Object? paymentDate = freezed,Object? notes = freezed,Object? allocations = freezed,}) {
  return _then(CreateSupplierPaymentDto(
supplierId: null == supplierId ? _self.supplierId : supplierId // ignore: cast_nullable_to_non_nullable
as String,splits: null == splits ? _self.splits : splits // ignore: cast_nullable_to_non_nullable
as List<Splits2>,paymentDate: freezed == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,allocations: freezed == allocations ? _self.allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations3>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSupplierPaymentDto].
extension CreateSupplierPaymentDtoPatterns on CreateSupplierPaymentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSupplierPaymentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSupplierPaymentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSupplierPaymentDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateSupplierPaymentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSupplierPaymentDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSupplierPaymentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String supplierId,  List<Splits2> splits,  String? paymentDate,  String? notes,  List<Allocations3>? allocations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSupplierPaymentDto() when $default != null:
return $default(_that.supplierId,_that.splits,_that.paymentDate,_that.notes,_that.allocations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String supplierId,  List<Splits2> splits,  String? paymentDate,  String? notes,  List<Allocations3>? allocations)  $default,) {final _that = this;
switch (_that) {
case _CreateSupplierPaymentDto():
return $default(_that.supplierId,_that.splits,_that.paymentDate,_that.notes,_that.allocations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String supplierId,  List<Splits2> splits,  String? paymentDate,  String? notes,  List<Allocations3>? allocations)?  $default,) {final _that = this;
switch (_that) {
case _CreateSupplierPaymentDto() when $default != null:
return $default(_that.supplierId,_that.splits,_that.paymentDate,_that.notes,_that.allocations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSupplierPaymentDto implements CreateSupplierPaymentDto {
  const _CreateSupplierPaymentDto({required this.supplierId, required  List<Splits2> splits, this.paymentDate, this.notes,  List<Allocations3>? allocations}): _splits = splits,_allocations = allocations;
  factory _CreateSupplierPaymentDto.fromJson(Map<String, dynamic> json) => _$CreateSupplierPaymentDtoFromJson(json);

@override final  String supplierId;
 final  List<Splits2> _splits;
@override List<Splits2> get splits {
  if (_splits is EqualUnmodifiableListView) return _splits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_splits);
}

@override final  String? paymentDate;
@override final  String? notes;
 final  List<Allocations3>? _allocations;
@override List<Allocations3>? get allocations {
  final value = _allocations;
  if (value == null) return null;
  if (_allocations is EqualUnmodifiableListView) return _allocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CreateSupplierPaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSupplierPaymentDtoCopyWith<_CreateSupplierPaymentDto> get copyWith => __$CreateSupplierPaymentDtoCopyWithImpl<_CreateSupplierPaymentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSupplierPaymentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSupplierPaymentDto&&(identical(other.supplierId, supplierId) || other.supplierId == supplierId)&&const DeepCollectionEquality().equals(other.splits, _splits)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.allocations, _allocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,supplierId,const DeepCollectionEquality().hash(_splits),paymentDate,notes,const DeepCollectionEquality().hash(_allocations));
}

@override
String toString() {
    return 'CreateSupplierPaymentDto(supplierId: $supplierId, splits: $splits, paymentDate: $paymentDate, notes: $notes, allocations: $allocations)';
}


}

/// @nodoc
abstract mixin class _$CreateSupplierPaymentDtoCopyWith<$Res> implements $CreateSupplierPaymentDtoCopyWith<$Res> {
  factory _$CreateSupplierPaymentDtoCopyWith(_CreateSupplierPaymentDto value, $Res Function(_CreateSupplierPaymentDto) _then) = __$CreateSupplierPaymentDtoCopyWithImpl;
@override @useResult
$Res call({
 String supplierId, List<Splits2> splits, String? paymentDate, String? notes, List<Allocations3>? allocations
});




}
/// @nodoc
class __$CreateSupplierPaymentDtoCopyWithImpl<$Res>
    implements _$CreateSupplierPaymentDtoCopyWith<$Res> {
  __$CreateSupplierPaymentDtoCopyWithImpl(this._self, this._then);

  final _CreateSupplierPaymentDto _self;
  final $Res Function(_CreateSupplierPaymentDto) _then;

/// Create a copy of CreateSupplierPaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? supplierId = null,Object? splits = null,Object? paymentDate = freezed,Object? notes = freezed,Object? allocations = freezed,}) {
  return _then(_CreateSupplierPaymentDto(
supplierId: null == supplierId ? _self.supplierId : supplierId // ignore: cast_nullable_to_non_nullable
as String,splits: null == splits ? _self._splits : splits // ignore: cast_nullable_to_non_nullable
as List<Splits2>,paymentDate: freezed == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,allocations: freezed == allocations ? _self._allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations3>?,
  ));
}


}

// dart format on
