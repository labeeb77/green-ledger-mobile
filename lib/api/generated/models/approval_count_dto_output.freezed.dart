// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approval_count_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApprovalCountDtoOutput {

 int get pending;
/// Create a copy of ApprovalCountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApprovalCountDtoOutputCopyWith<ApprovalCountDtoOutput> get copyWith => _$ApprovalCountDtoOutputCopyWithImpl<ApprovalCountDtoOutput>(this as ApprovalCountDtoOutput, _$identity);

  /// Serializes this ApprovalCountDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ApprovalCountDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApprovalCountDtoOutput&&(identical(other.pending, _this.pending) || other.pending == _this.pending));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApprovalCountDtoOutput;
  return Object.hash(runtimeType,_this.pending);
}

@override
String toString() {
  final _this = this as ApprovalCountDtoOutput;
  return 'ApprovalCountDtoOutput(pending: ${_this.pending})';
}


}

/// @nodoc
abstract mixin class $ApprovalCountDtoOutputCopyWith<$Res>  {
  factory $ApprovalCountDtoOutputCopyWith(ApprovalCountDtoOutput value, $Res Function(ApprovalCountDtoOutput) _then) = _$ApprovalCountDtoOutputCopyWithImpl;
@useResult
$Res call({
 int pending
});




}
/// @nodoc
class _$ApprovalCountDtoOutputCopyWithImpl<$Res>
    implements $ApprovalCountDtoOutputCopyWith<$Res> {
  _$ApprovalCountDtoOutputCopyWithImpl(this._self, this._then);

  final ApprovalCountDtoOutput _self;
  final $Res Function(ApprovalCountDtoOutput) _then;

/// Create a copy of ApprovalCountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pending = null,}) {
  return _then(ApprovalCountDtoOutput(
pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ApprovalCountDtoOutput].
extension ApprovalCountDtoOutputPatterns on ApprovalCountDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApprovalCountDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApprovalCountDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApprovalCountDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ApprovalCountDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApprovalCountDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ApprovalCountDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int pending)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApprovalCountDtoOutput() when $default != null:
return $default(_that.pending);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int pending)  $default,) {final _that = this;
switch (_that) {
case _ApprovalCountDtoOutput():
return $default(_that.pending);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int pending)?  $default,) {final _that = this;
switch (_that) {
case _ApprovalCountDtoOutput() when $default != null:
return $default(_that.pending);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApprovalCountDtoOutput implements ApprovalCountDtoOutput {
  const _ApprovalCountDtoOutput({required this.pending});
  factory _ApprovalCountDtoOutput.fromJson(Map<String, dynamic> json) => _$ApprovalCountDtoOutputFromJson(json);

@override final  int pending;

/// Create a copy of ApprovalCountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApprovalCountDtoOutputCopyWith<_ApprovalCountDtoOutput> get copyWith => __$ApprovalCountDtoOutputCopyWithImpl<_ApprovalCountDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApprovalCountDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApprovalCountDtoOutput&&(identical(other.pending, pending) || other.pending == pending));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,pending);
}

@override
String toString() {
    return 'ApprovalCountDtoOutput(pending: $pending)';
}


}

/// @nodoc
abstract mixin class _$ApprovalCountDtoOutputCopyWith<$Res> implements $ApprovalCountDtoOutputCopyWith<$Res> {
  factory _$ApprovalCountDtoOutputCopyWith(_ApprovalCountDtoOutput value, $Res Function(_ApprovalCountDtoOutput) _then) = __$ApprovalCountDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 int pending
});




}
/// @nodoc
class __$ApprovalCountDtoOutputCopyWithImpl<$Res>
    implements _$ApprovalCountDtoOutputCopyWith<$Res> {
  __$ApprovalCountDtoOutputCopyWithImpl(this._self, this._then);

  final _ApprovalCountDtoOutput _self;
  final $Res Function(_ApprovalCountDtoOutput) _then;

/// Create a copy of ApprovalCountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pending = null,}) {
  return _then(_ApprovalCountDtoOutput(
pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
