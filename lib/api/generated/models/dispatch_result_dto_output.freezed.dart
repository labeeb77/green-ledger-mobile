// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispatch_result_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DispatchResultDtoOutput {

 String get dispatchId; DispatchResultDtoOutputOrderStatus get orderStatus; String? get billNumber; int? get billTotal;
/// Create a copy of DispatchResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DispatchResultDtoOutputCopyWith<DispatchResultDtoOutput> get copyWith => _$DispatchResultDtoOutputCopyWithImpl<DispatchResultDtoOutput>(this as DispatchResultDtoOutput, _$identity);

  /// Serializes this DispatchResultDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DispatchResultDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DispatchResultDtoOutput&&(identical(other.dispatchId, _this.dispatchId) || other.dispatchId == _this.dispatchId)&&(identical(other.orderStatus, _this.orderStatus) || other.orderStatus == _this.orderStatus)&&(identical(other.billNumber, _this.billNumber) || other.billNumber == _this.billNumber)&&(identical(other.billTotal, _this.billTotal) || other.billTotal == _this.billTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DispatchResultDtoOutput;
  return Object.hash(runtimeType,_this.dispatchId,_this.orderStatus,_this.billNumber,_this.billTotal);
}

@override
String toString() {
  final _this = this as DispatchResultDtoOutput;
  return 'DispatchResultDtoOutput(dispatchId: ${_this.dispatchId}, orderStatus: ${_this.orderStatus}, billNumber: ${_this.billNumber}, billTotal: ${_this.billTotal})';
}


}

/// @nodoc
abstract mixin class $DispatchResultDtoOutputCopyWith<$Res>  {
  factory $DispatchResultDtoOutputCopyWith(DispatchResultDtoOutput value, $Res Function(DispatchResultDtoOutput) _then) = _$DispatchResultDtoOutputCopyWithImpl;
@useResult
$Res call({
 String dispatchId, DispatchResultDtoOutputOrderStatus orderStatus, String? billNumber, int? billTotal
});




}
/// @nodoc
class _$DispatchResultDtoOutputCopyWithImpl<$Res>
    implements $DispatchResultDtoOutputCopyWith<$Res> {
  _$DispatchResultDtoOutputCopyWithImpl(this._self, this._then);

  final DispatchResultDtoOutput _self;
  final $Res Function(DispatchResultDtoOutput) _then;

/// Create a copy of DispatchResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dispatchId = null,Object? orderStatus = null,Object? billNumber = freezed,Object? billTotal = freezed,}) {
  return _then(DispatchResultDtoOutput(
dispatchId: null == dispatchId ? _self.dispatchId : dispatchId // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as DispatchResultDtoOutputOrderStatus,billNumber: freezed == billNumber ? _self.billNumber : billNumber // ignore: cast_nullable_to_non_nullable
as String?,billTotal: freezed == billTotal ? _self.billTotal : billTotal // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DispatchResultDtoOutput].
extension DispatchResultDtoOutputPatterns on DispatchResultDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DispatchResultDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DispatchResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DispatchResultDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _DispatchResultDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DispatchResultDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _DispatchResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dispatchId,  DispatchResultDtoOutputOrderStatus orderStatus,  String? billNumber,  int? billTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DispatchResultDtoOutput() when $default != null:
return $default(_that.dispatchId,_that.orderStatus,_that.billNumber,_that.billTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dispatchId,  DispatchResultDtoOutputOrderStatus orderStatus,  String? billNumber,  int? billTotal)  $default,) {final _that = this;
switch (_that) {
case _DispatchResultDtoOutput():
return $default(_that.dispatchId,_that.orderStatus,_that.billNumber,_that.billTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dispatchId,  DispatchResultDtoOutputOrderStatus orderStatus,  String? billNumber,  int? billTotal)?  $default,) {final _that = this;
switch (_that) {
case _DispatchResultDtoOutput() when $default != null:
return $default(_that.dispatchId,_that.orderStatus,_that.billNumber,_that.billTotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DispatchResultDtoOutput implements DispatchResultDtoOutput {
  const _DispatchResultDtoOutput({required this.dispatchId, required this.orderStatus, required this.billNumber, required this.billTotal});
  factory _DispatchResultDtoOutput.fromJson(Map<String, dynamic> json) => _$DispatchResultDtoOutputFromJson(json);

@override final  String dispatchId;
@override final  DispatchResultDtoOutputOrderStatus orderStatus;
@override final  String? billNumber;
@override final  int? billTotal;

/// Create a copy of DispatchResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DispatchResultDtoOutputCopyWith<_DispatchResultDtoOutput> get copyWith => __$DispatchResultDtoOutputCopyWithImpl<_DispatchResultDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DispatchResultDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DispatchResultDtoOutput&&(identical(other.dispatchId, dispatchId) || other.dispatchId == dispatchId)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.billNumber, billNumber) || other.billNumber == billNumber)&&(identical(other.billTotal, billTotal) || other.billTotal == billTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,dispatchId,orderStatus,billNumber,billTotal);
}

@override
String toString() {
    return 'DispatchResultDtoOutput(dispatchId: $dispatchId, orderStatus: $orderStatus, billNumber: $billNumber, billTotal: $billTotal)';
}


}

/// @nodoc
abstract mixin class _$DispatchResultDtoOutputCopyWith<$Res> implements $DispatchResultDtoOutputCopyWith<$Res> {
  factory _$DispatchResultDtoOutputCopyWith(_DispatchResultDtoOutput value, $Res Function(_DispatchResultDtoOutput) _then) = __$DispatchResultDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String dispatchId, DispatchResultDtoOutputOrderStatus orderStatus, String? billNumber, int? billTotal
});




}
/// @nodoc
class __$DispatchResultDtoOutputCopyWithImpl<$Res>
    implements _$DispatchResultDtoOutputCopyWith<$Res> {
  __$DispatchResultDtoOutputCopyWithImpl(this._self, this._then);

  final _DispatchResultDtoOutput _self;
  final $Res Function(_DispatchResultDtoOutput) _then;

/// Create a copy of DispatchResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dispatchId = null,Object? orderStatus = null,Object? billNumber = freezed,Object? billTotal = freezed,}) {
  return _then(_DispatchResultDtoOutput(
dispatchId: null == dispatchId ? _self.dispatchId : dispatchId // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as DispatchResultDtoOutputOrderStatus,billNumber: freezed == billNumber ? _self.billNumber : billNumber // ignore: cast_nullable_to_non_nullable
as String?,billTotal: freezed == billTotal ? _self.billTotal : billTotal // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
