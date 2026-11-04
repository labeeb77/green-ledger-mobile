// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_result_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CancelResultDtoOutput {

 CancelResultDtoOutputStatus get status; String? get approvalId;
/// Create a copy of CancelResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelResultDtoOutputCopyWith<CancelResultDtoOutput> get copyWith => _$CancelResultDtoOutputCopyWithImpl<CancelResultDtoOutput>(this as CancelResultDtoOutput, _$identity);

  /// Serializes this CancelResultDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CancelResultDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelResultDtoOutput&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.approvalId, _this.approvalId) || other.approvalId == _this.approvalId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CancelResultDtoOutput;
  return Object.hash(runtimeType,_this.status,_this.approvalId);
}

@override
String toString() {
  final _this = this as CancelResultDtoOutput;
  return 'CancelResultDtoOutput(status: ${_this.status}, approvalId: ${_this.approvalId})';
}


}

/// @nodoc
abstract mixin class $CancelResultDtoOutputCopyWith<$Res>  {
  factory $CancelResultDtoOutputCopyWith(CancelResultDtoOutput value, $Res Function(CancelResultDtoOutput) _then) = _$CancelResultDtoOutputCopyWithImpl;
@useResult
$Res call({
 CancelResultDtoOutputStatus status, String? approvalId
});




}
/// @nodoc
class _$CancelResultDtoOutputCopyWithImpl<$Res>
    implements $CancelResultDtoOutputCopyWith<$Res> {
  _$CancelResultDtoOutputCopyWithImpl(this._self, this._then);

  final CancelResultDtoOutput _self;
  final $Res Function(CancelResultDtoOutput) _then;

/// Create a copy of CancelResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? approvalId = freezed,}) {
  return _then(CancelResultDtoOutput(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CancelResultDtoOutputStatus,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CancelResultDtoOutput].
extension CancelResultDtoOutputPatterns on CancelResultDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancelResultDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancelResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancelResultDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _CancelResultDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancelResultDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _CancelResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CancelResultDtoOutputStatus status,  String? approvalId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancelResultDtoOutput() when $default != null:
return $default(_that.status,_that.approvalId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CancelResultDtoOutputStatus status,  String? approvalId)  $default,) {final _that = this;
switch (_that) {
case _CancelResultDtoOutput():
return $default(_that.status,_that.approvalId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CancelResultDtoOutputStatus status,  String? approvalId)?  $default,) {final _that = this;
switch (_that) {
case _CancelResultDtoOutput() when $default != null:
return $default(_that.status,_that.approvalId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CancelResultDtoOutput implements CancelResultDtoOutput {
  const _CancelResultDtoOutput({required this.status, this.approvalId});
  factory _CancelResultDtoOutput.fromJson(Map<String, dynamic> json) => _$CancelResultDtoOutputFromJson(json);

@override final  CancelResultDtoOutputStatus status;
@override final  String? approvalId;

/// Create a copy of CancelResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancelResultDtoOutputCopyWith<_CancelResultDtoOutput> get copyWith => __$CancelResultDtoOutputCopyWithImpl<_CancelResultDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CancelResultDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelResultDtoOutput&&(identical(other.status, status) || other.status == status)&&(identical(other.approvalId, approvalId) || other.approvalId == approvalId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,approvalId);
}

@override
String toString() {
    return 'CancelResultDtoOutput(status: $status, approvalId: $approvalId)';
}


}

/// @nodoc
abstract mixin class _$CancelResultDtoOutputCopyWith<$Res> implements $CancelResultDtoOutputCopyWith<$Res> {
  factory _$CancelResultDtoOutputCopyWith(_CancelResultDtoOutput value, $Res Function(_CancelResultDtoOutput) _then) = __$CancelResultDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 CancelResultDtoOutputStatus status, String? approvalId
});




}
/// @nodoc
class __$CancelResultDtoOutputCopyWithImpl<$Res>
    implements _$CancelResultDtoOutputCopyWith<$Res> {
  __$CancelResultDtoOutputCopyWithImpl(this._self, this._then);

  final _CancelResultDtoOutput _self;
  final $Res Function(_CancelResultDtoOutput) _then;

/// Create a copy of CancelResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? approvalId = freezed,}) {
  return _then(_CancelResultDtoOutput(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CancelResultDtoOutputStatus,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
