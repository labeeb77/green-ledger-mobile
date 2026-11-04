// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_rate_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerRateDtoOutput {

 String get productId; String get productName; String get stockUnit; CustomerRateDtoOutputMode get mode; int get value;
/// Create a copy of CustomerRateDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerRateDtoOutputCopyWith<CustomerRateDtoOutput> get copyWith => _$CustomerRateDtoOutputCopyWithImpl<CustomerRateDtoOutput>(this as CustomerRateDtoOutput, _$identity);

  /// Serializes this CustomerRateDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CustomerRateDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerRateDtoOutput&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.productName, _this.productName) || other.productName == _this.productName)&&(identical(other.stockUnit, _this.stockUnit) || other.stockUnit == _this.stockUnit)&&(identical(other.mode, _this.mode) || other.mode == _this.mode)&&(identical(other.value, _this.value) || other.value == _this.value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CustomerRateDtoOutput;
  return Object.hash(runtimeType,_this.productId,_this.productName,_this.stockUnit,_this.mode,_this.value);
}

@override
String toString() {
  final _this = this as CustomerRateDtoOutput;
  return 'CustomerRateDtoOutput(productId: ${_this.productId}, productName: ${_this.productName}, stockUnit: ${_this.stockUnit}, mode: ${_this.mode}, value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $CustomerRateDtoOutputCopyWith<$Res>  {
  factory $CustomerRateDtoOutputCopyWith(CustomerRateDtoOutput value, $Res Function(CustomerRateDtoOutput) _then) = _$CustomerRateDtoOutputCopyWithImpl;
@useResult
$Res call({
 String productId, String productName, String stockUnit, CustomerRateDtoOutputMode mode, int value
});




}
/// @nodoc
class _$CustomerRateDtoOutputCopyWithImpl<$Res>
    implements $CustomerRateDtoOutputCopyWith<$Res> {
  _$CustomerRateDtoOutputCopyWithImpl(this._self, this._then);

  final CustomerRateDtoOutput _self;
  final $Res Function(CustomerRateDtoOutput) _then;

/// Create a copy of CustomerRateDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? productName = null,Object? stockUnit = null,Object? mode = null,Object? value = null,}) {
  return _then(CustomerRateDtoOutput(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as CustomerRateDtoOutputMode,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerRateDtoOutput].
extension CustomerRateDtoOutputPatterns on CustomerRateDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerRateDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerRateDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerRateDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _CustomerRateDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerRateDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerRateDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String productName,  String stockUnit,  CustomerRateDtoOutputMode mode,  int value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerRateDtoOutput() when $default != null:
return $default(_that.productId,_that.productName,_that.stockUnit,_that.mode,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String productName,  String stockUnit,  CustomerRateDtoOutputMode mode,  int value)  $default,) {final _that = this;
switch (_that) {
case _CustomerRateDtoOutput():
return $default(_that.productId,_that.productName,_that.stockUnit,_that.mode,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String productName,  String stockUnit,  CustomerRateDtoOutputMode mode,  int value)?  $default,) {final _that = this;
switch (_that) {
case _CustomerRateDtoOutput() when $default != null:
return $default(_that.productId,_that.productName,_that.stockUnit,_that.mode,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerRateDtoOutput implements CustomerRateDtoOutput {
  const _CustomerRateDtoOutput({required this.productId, required this.productName, required this.stockUnit, required this.mode, required this.value});
  factory _CustomerRateDtoOutput.fromJson(Map<String, dynamic> json) => _$CustomerRateDtoOutputFromJson(json);

@override final  String productId;
@override final  String productName;
@override final  String stockUnit;
@override final  CustomerRateDtoOutputMode mode;
@override final  int value;

/// Create a copy of CustomerRateDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerRateDtoOutputCopyWith<_CustomerRateDtoOutput> get copyWith => __$CustomerRateDtoOutputCopyWithImpl<_CustomerRateDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerRateDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerRateDtoOutput&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.stockUnit, stockUnit) || other.stockUnit == stockUnit)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,productName,stockUnit,mode,value);
}

@override
String toString() {
    return 'CustomerRateDtoOutput(productId: $productId, productName: $productName, stockUnit: $stockUnit, mode: $mode, value: $value)';
}


}

/// @nodoc
abstract mixin class _$CustomerRateDtoOutputCopyWith<$Res> implements $CustomerRateDtoOutputCopyWith<$Res> {
  factory _$CustomerRateDtoOutputCopyWith(_CustomerRateDtoOutput value, $Res Function(_CustomerRateDtoOutput) _then) = __$CustomerRateDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String productId, String productName, String stockUnit, CustomerRateDtoOutputMode mode, int value
});




}
/// @nodoc
class __$CustomerRateDtoOutputCopyWithImpl<$Res>
    implements _$CustomerRateDtoOutputCopyWith<$Res> {
  __$CustomerRateDtoOutputCopyWithImpl(this._self, this._then);

  final _CustomerRateDtoOutput _self;
  final $Res Function(_CustomerRateDtoOutput) _then;

/// Create a copy of CustomerRateDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? productName = null,Object? stockUnit = null,Object? mode = null,Object? value = null,}) {
  return _then(_CustomerRateDtoOutput(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as CustomerRateDtoOutputMode,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
